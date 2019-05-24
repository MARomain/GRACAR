using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Controller : MonoBehaviour
{
    [Header("General")]
    public int playerNumber;
    private Rigidbody rb;
    public bool spawnWithGun;
    public bool hasAGun;

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

    [Header("Weapon")]
    public GameObject baseWeapon;
    public Transform weaponPosition;

    [Header("Bubble")]
    public bool isActive;
    public GameObject bubbleGo;
    public float minBounce;
    public bool bubbleBool;
    public float bubbleCd;
    private float bubbleTimer;
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
        if(spawnWithGun) SpawnWeapon();


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
        bubbleTimer = bubbleCd;
    }

    public void SpawnWeapon()
    {
        GameObject weapon = Instantiate(baseWeapon, weaponPosition);
        weapon.transform.parent = transform;
        hasAGun = true;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
        //Jump();
        Look();
        //Shoot();
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
        //JUMP STUFF
        if (collision.gameObject.tag == "Ground")
        {
            jumpCount++;
        }

        //BUBBLE BOUNCE STUFF
        pointContact = collision.GetContact(0).point;
        Bubble(collision.GetContact(0).normal, collision);
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

        Vector3 lookVector = new Vector3(lookXValue, 0, lookYValue);
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
        if(bubbleBool)
        {
            if (Input.GetAxis(bulle) > 0)
            {
                isActive = true;
                bubbleGo.SetActive(true);
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
        bubbleGo.SetActive(false);
    }

    public void Bubble(Vector3 collisionNormal, Collision collision)
    {
        if (collision.gameObject.tag == "Water" && isActive == true)
        {

            bounceDirection = Vector3.Reflect(baseVelocity, collision.GetContact(0).normal);
            rb.velocity = bounceDirection.normalized * Mathf.Max(speed, minBounce);

            bubbleBool = false;
            DesactivateBulle();
            Debug.Log("Speed : " + speed);
            Debug.Log("Out Direction: " + bounceDirection.normalized * Mathf.Max(speed, minBounce));

        }
    }

    public void BulleCD()
    {
        if(!bubbleBool)
        {
            bubbleTimer -= Time.deltaTime;

            if(bubbleTimer <= 0f)
            {
                bubbleBool = true;
                bubbleTimer = bubbleCd;
            }
        }
    }

}
