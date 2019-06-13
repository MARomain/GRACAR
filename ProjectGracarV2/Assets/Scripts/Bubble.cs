using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bubble : MonoBehaviour
{
    public Rigidbody rb;
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
    public Controller controller;

    // Start is called before the first frame update
    void Start()
    {
        //rb = GetComponent<Rigidbody>();
        controller = GetComponentInParent<Controller>();
    }

    // Update is called once per frame
    void Update()
    {
        Debug.Log("bb");
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Water")
        {
            Debug.Log("script bubble collision");
            pointContact = collision.GetContact(0).point;
            Bounce(collision.GetContact(0).normal, collision);
        }
    }

    public void Bounce(Vector3 collisionNormal, Collision collision)
    {
        if (collision.gameObject.tag == "Water" && isActive == true)
        {
            bounceDirection = Vector3.Reflect(baseVelocity, collision.GetContact(0).normal);
            Debug.Log("velocity bubble");
            rb.velocity = bounceDirection.normalized * Mathf.Max(speed, minBounce);

            bubbleBool = false;
            controller.DesactivateBulle();
            Debug.Log("Speed : " + speed);
            Debug.Log("Out Direction: " + bounceDirection.normalized * Mathf.Max(speed, minBounce));
        }
    }

}
