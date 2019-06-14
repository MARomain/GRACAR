using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bullet : MonoBehaviour
{

    Vector3 knockBackDirection;
    private Rigidbody rb;
    public float rebounceMultiplier;
    private Vector3 oldVelocity;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void FixedUpdate()
    {
        oldVelocity = rb.velocity;
    }



    private void OnCollisionEnter(Collision collision)
    {
        //get the point of contact
        ContactPoint contact = collision.GetContact(0);
        Debug.Log(collision.gameObject.tag);

        //On rentre forcément en collision avec le player vue qu'il détient le rigidbody
        if(collision.gameObject.tag == "Player")
        {
            Controller controller = collision.gameObject.GetComponent<Controller>();

            //si la bulle est active
            if(controller.isActive == true)
            {
                Vector3 bounceDirection = Vector3.Reflect(oldVelocity, contact.normal);
                Debug.DrawRay(transform.position, collision.GetContact(0).normal, Color.green);
                rb.velocity = bounceDirection * rebounceMultiplier;
                Quaternion rotation = Quaternion.FromToRotation(oldVelocity, bounceDirection);
                transform.rotation = rotation * transform.rotation;
            }

            //si la bulle n'est pas active
            if(controller.isActive == false)
            {
                Destroy(this.gameObject);
                Rigidbody targetRb = collision.gameObject.GetComponentInParent<Rigidbody>();
                Debug.DrawRay(contact.point, contact.normal * 10f, Color.red, 100f);
                knockBackDirection = -contact.normal;
                targetRb.AddForce(knockBackDirection.normalized * 200f);
            }

        }

        if (collision.gameObject.tag == "Wall")
        {
            Destroy(this.gameObject);
        }
    }
}
