using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class killzone : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player") // ce check evite juste "NullReferenceException" quand d'autres objets que le joueur touche le collider au if du dessous
        {
            if (other.gameObject.GetComponent<Controller>().isActive == true)
            {
                return;
                //LET HIM LIVE
            }
            else
            {
                Destroy(other.gameObject);
            }
        }
        
    }
}
