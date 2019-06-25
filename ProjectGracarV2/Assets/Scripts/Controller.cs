using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Controller : MonoBehaviour
{
    [Header("General")]
    public int playerNumber;
    public Color playerColor;
    public SpriteRenderer direction;
    public GameObject dummyModel;
    public GameObject[] playerModels;
    public GameObject meshToReskin;
    public Material[] playerSkins;
    public GameObject currentModel;
    public Rigidbody rb;
    public bool spawnWithGun;
    public bool hasAGun;
    public bool isGrounded;
    public float groundCheckLenght;
    public Animator animator;


    [Header("Movement")]
    public bool doesBubbleStopMovement; // cette variable est seulement utile pour des tests
    public bool doesBubbleSlowMovement; //cette variable est seulement utile pour des tests
    public bool canMove = true;
    public float moveSpeed;
    public float baseMoveSpeed;
    public float moveSpeedBubble;
    private Vector3 movement;
    public float maxKnockBack;

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
    public float bubbleActiveTime = 1f;
    public float maxBubbleHealth = 3f;
    public Slider sliderBubble;
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
    public Renderer bubbleRenderer;
    public Material[] bubbleMat;


    private string lookX;
    private string lookY;
    private string moveX;
    private string moveY;
    private string bubble;

    private void Awake()
    {
        rb = GetComponent<Rigidbody>();
        animator = GetComponentInChildren<Animator>();
    }

    // Start is called before the first frame update
    void Start()
    {
        VarInit();
        AttributionBonSkin();
        if (spawnWithGun) SpawnWeapon();

        groundCheckLenght = 0.2f; // distance qui part des pieds du joueurs, longueur raycast

        lookX = "HorizontalLook" + playerNumber;
        lookY = "VerticalLook" + playerNumber;
        moveX = "Horizontal" + playerNumber;
        moveY = "Vertical" + playerNumber;
        bubble = "Bubble" + playerNumber;

        //Selection du bon skin
        //currentModel = playerModels[playerNumber - 1];
        //Instantiate(currentModel, this.transform);
        //Destruction de l'ancienne modé
        //Destroy(dummyModel);

    }

    public void VarInit()
    {
        bubbleTimer = bubbleCd;
    }

    public void AttributionBonSkin()
    {
        bubbleRenderer.material = bubbleMat[playerNumber -1];
        Material[] matArray = meshToReskin.GetComponent<Renderer>().materials;
        matArray[1] = playerSkins[playerNumber -1];
        meshToReskin.GetComponent<Renderer>().materials = matArray;

        //color sprite direction
        direction.color = playerColor;
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
        CheckGrounded();
        MaxKnockBack();

        //for (int i = 1; i < 5; i++)
        //{
        //    Debug.Log(i);
        //    if (Mathf.Abs(Input.GetAxis("Horizontal" + i)) > 0.2 ||
        //        Mathf.Abs(Input.GetAxis("Horizontal" + i)) > 0.2 ||
        //        Mathf.Abs(Input.GetAxis("Horizontal" + i)) > 0.2 ||
        //        Mathf.Abs(Input.GetAxis("Horizontal" + i)) > 0.2)
        //    {
        //        //Debug.Log(Input.GetJoystickNames()[i] + " is moved");
        //    }
        //}
    }

    public void MaxKnockBack()
    {
        if(rb.velocity.magnitude > maxKnockBack)
        {
            rb.velocity = rb.velocity.normalized * maxKnockBack;
        }

    }


    public void CheckGrounded()
    {
        Vector3 origin = transform.position + new Vector3(0f, 0.8f, 0f);
        float distance = groundCheckLenght + 0.8f;
        Vector3 down = transform.TransformDirection(Vector3.down * distance);
        Debug.DrawRay(origin, down, Color.red);
        if (Physics.Raycast(origin, Vector3.down, distance, 9)) //oblige de faire partir le raycast d'un peu au dessus, sinon il part depuis les pieds et a pas le temps de toucher le sol
        {
            isGrounded = true;
            animator.SetBool("isFalling", false);
        }

        else
        {
            isGrounded = false;
            animator.SetBool("isFalling", true);
        }
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

            animator.SetFloat("DirX", horizontalAxisValue);
            animator.SetFloat("DirY", verticalAxisValue);

            movement.Set(horizontalAxisValue, 0f, verticalAxisValue);
            movement = movement * moveSpeed * Time.deltaTime;

            //rb.MovePosition(transform.position + movement);
            transform.Translate(movement,Space.World);
        }

        if(Vector3.Distance(transform.position, transform.position + movement) > 0)
        {
            animator.SetBool("isRunning", true);
        }

        else animator.SetBool("isRunning", false);
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
            if (Input.GetAxis(bubble) > 0 && isActive == false && bubbleHealth >= 1)
            {
                ActivateBubble();
            }

            else
            {
                //DesactivateBubble();
            }
        }

    }

    public void ActivateBubble()
    {
        isActive = true;
        animator.SetBool("inBubble", true);
        bubbleGo.SetActive(true);
        //le joueur ne peut plus tirer quand la bulle est active
        weaponScript.canShoot = false;

        bubbleHealth--;
        sliderBubble.value = bubbleHealth;
        if(doesBubbleStopMovement == true)
        {
            canMove = false;
            canLook = false;
        }

        if(doesBubbleSlowMovement == true && isGrounded == true)
        {
            moveSpeed = moveSpeedBubble;
        }

        StartCoroutine(DesactivateBubbleAfterXSec(bubbleActiveTime));
    }

    public IEnumerator DesactivateBubbleAfterXSec(float timing)
    {
        yield return new WaitForSeconds(timing);
        DesactivateBubble();
    }

    public void DesactivateBubble()
    {
        isActive = false;
        animator.SetBool("inBubble", false);
        bubbleGo.SetActive(false);
        //le joueur peut à nouveau tirer
        weaponScript.canShoot = true;
        canMove = true;
        canLook = true;
        moveSpeed = baseMoveSpeed;
    }

    public void Bubble(Vector3 collisionNormal, Collision collision)
    {
        if (collision.gameObject.tag == "Water" && isActive == true)
        {
            bounceDirection = Vector3.Reflect(baseVelocity, collision.GetContact(0).normal);
            rb.velocity = bounceDirection.normalized * Bounce;

            bubbleBool = false;
            //bubbleHealth -= bubbleDamageOnWater;
            sliderBubble.value = bubbleHealth;
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
            sliderBubble.value = bubbleHealth;
        }

        if (bubbleHealth >= maxBubbleHealth)
        {
            bubbleHealth = maxBubbleHealth;
            sliderBubble.value = bubbleHealth;
        }
    }


    //actuellement les HP de la bulles ne servent à rien
    //a voir niveau GD quoi en faire
    //pareil faire qu'on peut regen après 2 secondes ? 
    //pareil on regen la bulle que quand on tue des mecs ? 
    //pareil un pickup ? 

}
