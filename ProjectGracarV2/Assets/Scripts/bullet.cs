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

        if(collision.gameObject.tag == "Bubble")
        {
            Vector3 bounceDirection = Vector3.Reflect(oldVelocity, contact.normal);
            Debug.DrawRay(transform.position, collision.GetContact(0).normal, Color.green);
            rb.velocity = bounceDirection * rebounceMultiplier;
            Quaternion rotation = Quaternion.FromToRotation(oldVelocity, bounceDirection);
            transform.rotation = rotation * transform.rotation;
        }
    




                // si ça touche le player

                //Destroy(this.gameObject);
                //Rigidbody targetRb = collision.gameObject.GetComponentInParent<Rigidbody>();
                //knockBackDirection = transform.position - collision.transform.position;
                //targetRb.AddForce(knockBackDirection.normalized * 200f);
                //Debug.Log(transform.position - collision.transform.position);
                //Debug.Log("direction :" + knockBackDirection);
            


        

        if(collision.gameObject.tag == "Wall")
        {
            Destroy(this.gameObject);
        }
    }
}
