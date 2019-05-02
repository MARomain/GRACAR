using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LaBulle : MonoBehaviour
{

    public bool isActive;
    public GameObject bulle;
    public Rigidbody rb;
    public float bouncePower;
    public float minBounce;
    public Collider coll;
    private float bounciness;
    Vector3 baseVelocity;
    float speed;

    Vector3 vélocitéDuJoueur, rebond, lastPos;
    Vector3 pointContact;
    Vector3 bounceDirection;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
        coll = GetComponent<Collider>();
        bounciness = coll.material.bounciness;

        rb.AddForce(Vector3.forward * 100);
    }

    // Update is called once per frame
    void Update()
    {
        



        if (Input.GetKeyDown(KeyCode.E))
        {
            isActive = true;
            bulle.SetActive(true);
        }

        if(Input.GetKeyUp(KeyCode.E))
        {
            isActive = false;
            bulle.SetActive(false);
        }


    }

    private void FixedUpdate()
    {
        baseVelocity = rb.velocity;
        speed = baseVelocity.magnitude;
    }

    private void OnCollisionEnter(Collision collision)
    {

        pointContact = collision.GetContact(0).point;
        //vélocitéDuJoueur = transform.InverseTransformVector(baseVelocity);
        //rebond = Vector3.Reflect(baseVelocity, Vector3.up);

        
        Bounce(collision.GetContact(0).normal, collision);


        
    }

    public void Bounce(Vector3 collisionNormal, Collision collision)
    {
        if (collision.gameObject.tag == "lava" && isActive == true)
        {
            Debug.Log("I touch lava with bulle ON");

            bounceDirection = Vector3.Reflect(baseVelocity, collision.GetContact(0).normal);
            rb.velocity = bounceDirection * Mathf.Max(speed, minBounce);


            Debug.Log("Speed : " + speed);
            Debug.Log("Out Direction: " + bounceDirection);

            //rb.AddForce(bounceDirection * bouncePower, ForceMode.Impulse);
            //rb.AddForce(Vector3.up * -speed * bouncePower, ForceMode.Impulse);
        }

        if (collision.gameObject.tag == "lava" && isActive == false)
        {
            Debug.Log("T MORT");
        }
    }

    private void OnDrawGizmos()
    {
        //Gizmos.color = Color.yellow;
        //Gizmos.DrawSphere(pointContact.point, .5f);


        //Gizmos.color = Color.cyan;
        //Gizmos.DrawLine(pointContact.point, vélocitéDuJoueur);

        //Gizmos.color = Color.red;
        //Gizmos.DrawLine(pointContact.point, rebond);

        //Gizmos.color = Color.green;
        //Gizmos.DrawLine(pointContact.point, pointContact.normal);

        Gizmos.color = Color.green;
        //Gizmos.DrawLine(pointContact.point, pointContact.normal);
        Gizmos.DrawRay(pointContact, bounceDirection);
    }
}
