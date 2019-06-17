using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Controller : MonoBehaviour
{
    [Header("General")]
    public int playerNumber;
    public GameObject dummyModel;
    public GameObject[] playerModels;
    public GameObject currentModel;
    private Rigidbody rb;
    public bool spawnWithGun;
    public bool hasAGun;

    [Header("Movement")]
    public bool doesBubbleStopMovement; // cette variable est seulement utile pour des tests
    public bool canMove = true;
    public float moveSpeed;
    private Vector3 movement;

    [Header("Look")]
    public bool canLook = true;
    public float rotationSpeed;
    private Vector3 look;

    [Header("Shoot")]
    public GameObject bubbleRef;
    public Transform gunPoint;
    public float shootForce;

    [Header("Weapon")]
    public GameObject baseWeapon;
    public Transform weaponPosition;
    public GameObject weaponInstance;
    public TestWeapon weaponScript;

    [Header("Bubble")]
    public float maxBubbleHealth = 3f;
    public float bubbleHealth = 3f;
    public float regeneration = 0.5f;
    public float bubbleDamageOnWater = 1f;
    public bool isActive;
    public GameObject bubbleGo;
    public float Bounce;
    public bool bubbleBool;
    public float bubbleCd;
    private float bubbleTimer;
    Vector3 baseVelocity;
    private float speed;
    private Vector3 pointContact;
    private Vector3 bounceDirection;


    private string lookX;
    private string lookY;
    private string moveX;
    private string moveY;
    private string bubble;

    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Start is called before the first frame update
    void Start()
    {
        VarInit();
        if(spawnWithGun) SpawnWeapon();


        lookX = "HorizontalLook" + playerNumber;
        lookY = "VerticalLook" + playerNumber;
        moveX = "Horizontal" + playerNumber;
        moveY = "Vertical" + playerNumber;
        bubble = "Bubble" + playerNumber;

        //Selection du bon skin
        currentModel = playerModels[playerNumber - 1];
        Instantiate(currentModel, this.transform);
        //Destruction de l'ancienne modé
        Destroy(dummyModel);

    }

    public void VarInit()
    {
        bubbleTimer = bubbleCd;
    }

    public void SpawnWeapon()
    {
        weaponInstance = Instantiate(baseWeapon, weaponPosition);
        weaponScript = weaponInstance.GetComponent<TestWeapon>();
        weaponScript.playerNumber = playerNumber;
        weaponScript.fireButton = "Fire" + playerNumber;
        weaponInstance.transform.parent = transform;
        hasAGun = true;
    }

    // Update is called once per frame
    void Update()
    {
        Move();
        Look();
        BubbleControl();
        BubbleCd();
        RegeneRateBubble();
    }

    private void FixedUpdate()
    {
        baseVelocity = rb.velocity;
        speed = baseVelocity.magnitude;
    }

    private void OnCollisionEnter(Collision collision)
    {
        //BUBBLE BOUNCE STUFF
        pointContact = collision.GetContact(0).point;
        Bubble(collision.GetContact(0).normal, collision);
    }


    private void Move()
    {
        if(canMove)
        {
            float verticalAxisValue = Input.GetAxis(moveY);
            float horizontalAxisValue = Input.GetAxis(moveX);


            movement.Set(horizontalAxisValue, 0f, verticalAxisValue);
            movement = movement.normalized * moveSpeed * Time.deltaTime;

            rb.MovePosition(transform.position + movement);
        }
    }

    private void Look()
    {
        if(canLook)
        {
            float lookXValue = Input.GetAxis(lookX);
            float lookYValue = Input.GetAxis(lookY);

            Vector3 lookVector = new Vector3(lookXValue, 0, lookYValue);
            float VectorLenght = Vector3.Magnitude(lookVector);
            float step = rotationSpeed * Time.deltaTime;
            Vector3 newDir = Vector3.RotateTowards(transform.forward, lookVector, step, 0.0f);



            look = Vector3.Lerp(transform.forward, newDir, 1); // elle sert à rien cette ligne ? 
            transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(look), Time.deltaTime * rotationSpeed);
        }
    }


    public void BubbleControl()
    {
        if(bubbleBool)
        {
            if (Input.GetAxis(bubble) > 0)
            {
                ActivateBubble();
            }

            else
            {
                DesactivateBubble();
            }
        }

    }

    public void ActivateBubble()
    {
        isActive = true;
        bubbleGo.SetActive(true);
        //le joueur ne peut plus tirer quand la bulle est active
        weaponScript.canShoot = false;
        if(doesBubbleStopMovement == true)
        {
            canMove = false;
            canLook = false;
        }
    }

    public void DesactivateBubble()
    {
        isActive = false;
        bubbleGo.SetActive(false);
        //le joueur peut à nouveau tirer
        weaponScript.canShoot = true;
        canMove = true;
        canLook = true;
    }

    public void Bubble(Vector3 collisionNormal, Collision collision)
    {
        if (collision.gameObject.tag == "Water" && isActive == true)
        {
            bounceDirection = Vector3.Reflect(baseVelocity, collision.GetContact(0).normal);
            rb.velocity = bounceDirection.normalized * Bounce;

            bubbleBool = false;
            bubbleHealth -= bubbleDamageOnWater;
            DesactivateBubble();
        }
    }

    public void BubbleCd()
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

    public void RegeneRateBubble()
    {
        if (isActive == false && bubbleHealth <= maxBubbleHealth)
        {
            bubbleHealth += regeneration * Time.deltaTime;
        }

        if (bubbleHealth >= maxBubbleHealth) bubbleHealth = maxBubbleHealth;
    }


    //actuellement les HP de la bulles ne servent à rien
    //a voir niveau GD quoi en faire
    //pareil faire qu'on peut regen après 2 secondes ? 
    //pareil on regen la bulle que quand on tue des mecs ? 
    //pareil un pickup ? 

}
