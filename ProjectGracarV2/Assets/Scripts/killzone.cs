using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class killzone : MonoBehaviour
{
    public GameManager gameManager;

    // Start is called before the first frame update
    void Start()
    {
        gameManager = GameObject.Find("GameManager").GetComponent<GameManager>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.name + " a touché la killzone");
        if (other.gameObject.tag == "Player") // ce check evite juste "NullReferenceException" quand d'autres objets que le joueur touche le collider au if du dessous
        {
            Controller controller = other.gameObject.GetComponentInParent<Controller>();
            if (controller.isActive == true)
            {
                return;
                //LET HIM LIVE
            }

            else
            {
                //Destroy(other.transform.parent.gameObject);
                StartCoroutine(gameManager.Respawn(controller.playerNumber, gameManager.spawnDelay));
            }
        }


    }
}
