using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class bullet : MonoBehaviour
{

    Vector3 knockBackDirection;
    private Rigidbody rb;
    public float rebounceMultiplier;

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }



  

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.transform.tag == "Player")
        {
            Controller controller = collision.gameObject.GetComponent<Controller>();
            if(controller.isActive)
            {
                Vector3 bounceDirection = Vector3.Reflect(rb.velocity, collision.GetContact(0).normal);
                Debug.DrawRay(transform.position, collision.GetContact(0).normal, Color.green);
                rb.velocity = bounceDirection.normalized + rb.velocity * rebounceMultiplier;
                Debug.Log(bounceDirection);

            }

            else if (controller.isActive == false)
            {
                Destroy(this.gameObject);
                Rigidbody targetRb = collision.gameObject.GetComponentInParent<Rigidbody>();
                knockBackDirection = transform.position - collision.transform.position;
                targetRb.AddForce(knockBackDirection.normalized * 200f);
                Debug.Log(transform.position - collision.transform.position);
                Debug.Log("direction :" + knockBackDirection);
            }
            

        }

        

        if(collision.gameObject.tag == "Wall")
        {
            Destroy(this.gameObject);
        }
    }
}
