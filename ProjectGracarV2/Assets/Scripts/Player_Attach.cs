using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_Attach : MonoBehaviour
{
    

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            other.transform.parent.parent = transform;
        }

    }

    private void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            other.transform.parent.parent = transform;
        }

    }

    private void OnTriggerExit(Collider other)
    {

        if (other.gameObject.tag == "Player")
        {
            other.transform.parent.parent = null;
        }

    }



}
