using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Controller : MonoBehaviour
{
    [Header("General")]
    public int playerNumber;
    private Rigidbody rb;

    [Header("Movement")]
    public float moveSpeed;
    private Vector3 movement;

    [Header("Look")]
    public float rotationSpeed;
    private Vector3 look;

    [Header("Jump")]
    public float jumpForce;
    public int jumpAmount;
    private int jumpCount;

    [Header("Shoot")]
    public GameObject bulletRef;
    public Transform gunPoint;
    public float shootForce;

    [Header("Bulle")]
    public bool isActive;
    public GameObject bulleGo;
    public float minBounce;
    public bool bulleBool;
    public float bulleCd;
    private float bulleTimer;
    Vector3 baseVelocity;
    private float speed;
    private Vector3 pointContact;
    private Vector3 bounceDirection;







    private string fireButton;
    private string lookX;
    private string lookY;
    private string moveX;
    private string moveY;
    private string jump;
    private string bulle;

    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Start is called before the first frame update
    void Start()
    {
        VarInit();

        fireButton = "Fire" + playerNumber;
        lookX = "HorizontalLook" + playerNumber;
        lookY = "VerticalLook" + playerNumber;
        moveX = "Horizontal" + playerNumber;
        moveY = "Vertical" + playerNumber;
        jump = "Jump" + playerNumber;
        bulle = "Bulle" + playerNumber;
    }

    public void VarInit()
    {
        jumpCount = jumpAmount;
        bulleTimer = bulleCd;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
        Jump();
        Look();
        Shoot();
        BulleControl();
        BulleCD();


        
    }

    private void FixedUpdate()
    {
        baseVelocity = rb.velocity;
        speed = baseVelocity.magnitude;
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Ground")
        {
            jumpCount++;
        }

        Debug.Log("collide");
        pointContact = collision.GetContact(0).point;

        Bulle(collision.GetContact(0).normal, collision);
    }

    private void Move()
    {
        float verticalAxisValue = Input.GetAxis(moveY);
        float horizontalAxisValue = Input.GetAxis(moveX);

        
        movement.Set(horizontalAxisValue, 0f, verticalAxisValue);
        movement = movement.normalized * moveSpeed * Time.deltaTime;

        rb.MovePosition(transform.position + movement);
    }

    private void Look()
    {
        float lookXValue = Input.GetAxis(lookX);
        float lookYValue = Input.GetAxis(lookY);

        Vector3 lookVector = new Vector3(lookYValue, 0, lookXValue);
        float VectorLenght = Vector3.Magnitude(lookVector);
        float step = rotationSpeed * Time.deltaTime;
        Vector3 newDir = Vector3.RotateTowards(transform.forward, lookVector, step, 0.0f);



        look = Vector3.Lerp(transform.forward, newDir, 1);
        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(look), Time.deltaTime * rotationSpeed);
    }

    private void Jump()
    {
        if (Input.GetButtonDown(jump) && jumpCount > 0)
        {
            rb.AddForce(Vector3.up * jumpForce * Time.deltaTime,ForceMode.Impulse);
            jumpCount--;
            Debug.Log(jumpCount);
        }
    }

    private void Shoot()
    {
        if(Input.GetAxis(fireButton) > 0)
        {
            GameObject go = Instantiate(bulletRef, gunPoint.position, gunPoint.rotation);
            Rigidbody shellInstance = go.GetComponent<Rigidbody>();

            shellInstance.AddForce(shootForce * gunPoint.right,ForceMode.Impulse);
            Destroy(go, 4f);
        }
    }


    public void BulleControl()
    {
        if(bulleBool)
        {
            if (Input.GetAxis(bulle) > 0)
            {
                isActive = true;
                bulleGo.SetActive(true);
            }

            else
            {
                DesactivateBulle();
            }
        }

    }

    public void DesactivateBulle()
    {
        isActive = false;
        bulleGo.SetActive(false);
    }

    public void Bulle(Vector3 collisionNormal, Collision collision)
    {
        if (collision.gameObject.tag == "Water" && isActive == true)
        {
            Debug.Log("I touch lava with bulle ON");

            bounceDirection = Vector3.Reflect(baseVelocity, collision.GetContact(0).normal);
            rb.velocity = bounceDirection.normalized * Mathf.Max(speed, minBounce);

            bulleBool = false;
            DesactivateBulle();
            Debug.Log("Speed : " + speed);
            Debug.Log("Out Direction: " + bounceDirection.normalized * Mathf.Max(speed, minBounce));

        }
    }

    public void BulleCD()
    {
        if(!bulleBool)
        {
            bulleTimer -= Time.deltaTime;

            if(bulleTimer <= 0f)
            {
                bulleBool = true;
                bulleTimer = bulleCd;
            }
        }
    }

}
