using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Chest : MonoBehaviour
{
    public GameManager gameManager;
    public enum chestState { free, controlled, contested};
    public chestState currentState;
    public int numberOfPlayerInChest;
    List<Controller> playersInChest = new List<Controller>();
    public float detectionRange;
    public float scorePerSec;

    // Start is called before the first frame update
    void Start()
    {
        gameManager = GameObject.Find("GameManager").GetComponent<GameManager>();
    }

    // Update is called once per frame
    void Update()
    {
        //CheckPlayers();
    }



    // Autre manière de check si le player est près du chest
    //Tester dans une recherche pour détecter la sortie d'un joueur s'il se fait tuer dans la zone
    // (ne passerait pas par OntriggerExit


    //public void CheckPlayers()
    //{
    //    Collider[] players = Physics.OverlapSphere(transform.position, detectionRange);

    //    foreach (Collider player in players)
    //    {
    //        if (player.gameObject.tag == "Player")
    //        {
    //            Controller controller = player.gameObject.GetComponentInParent<Controller>();
    //            Debug.Log("in the zone");
    //        }
    //    }
    //}

    //void OnDrawGizmosSelected()
    //{
    //    // Draw a yellow sphere at the transform's position
    //    Gizmos.color = Color.yellow;
    //    Gizmos.DrawWireSphere(transform.position, detectionRange);
    //}

    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player") // ce check evite juste "NullReferenceException" quand d'autres objets que le joueur touche le collider au if du dessous
        {
            Debug.Log(other.gameObject.name + " rentre dans la zone du chest");

            Controller controller = other.gameObject.GetComponentInParent<Controller>();
            playersInChest.Add(controller);
            numberOfPlayerInChest = playersInChest.Count;

            switch(currentState)
            {
                case chestState.free:
                    currentState = chestState.controlled;
                    gameManager.playerInControl = controller.playerNumber;
                    break;

                case chestState.contested:
                    break;

                    case chestState.controlled:
                    currentState = chestState.contested;
                    gameManager.playerInControl = 0;    //le point devient contester, 0 signifie que personne n'a le point
                    break;
            }
        }
    }


    private void OnTriggerExit(Collider other)
    {
        //Debug.Log(other.gameObject.name + " sors de la zone du chest");
        if (other.gameObject.tag == "Player") // ce check evite juste "NullReferenceException" quand d'autres objets que le joueur touche le collider au if du dessous
        {
            Controller controller = other.gameObject.GetComponentInParent<Controller>();
            playersInChest.Remove(controller);
            numberOfPlayerInChest = playersInChest.Count;

            switch (currentState)
            {
                case chestState.free:
                    break;

                case chestState.contested:
                    if(numberOfPlayerInChest == 1)
                    {
                        currentState = chestState.controlled;
                        gameManager.playerInControl = playersInChest[0].playerNumber;
                    }
                    break;

                case chestState.controlled:
                    if (numberOfPlayerInChest <= 0)
                    {
                        currentState = chestState.free;
                        gameManager.playerInControl = 0;    //le point redevient free, 0 signifie que personne n'a le point
                    }
                    break;
            }
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if(other.gameObject.tag =="Player")
        {
            switch (gameManager.playerInControl)
            {
                case 1:
                    gameManager.playerScore[gameManager.playerInControl - 1] += scorePerSec = Time.deltaTime;
                    gameManager.playersScoreText[gameManager.playerInControl - 1].text = gameManager.playerScore[gameManager.playerInControl - 1].ToString("F0");
                    break;

                case 2:
                    gameManager.playerScore[gameManager.playerInControl - 1] += scorePerSec = Time.deltaTime;
                    gameManager.playersScoreText[gameManager.playerInControl - 1].text = gameManager.playerScore[gameManager.playerInControl - 1].ToString("F0");
                    break;

                case 3:
                    gameManager.playerScore[gameManager.playerInControl - 1] += scorePerSec = Time.deltaTime;
                    gameManager.playersScoreText[gameManager.playerInControl - 1].text = gameManager.playerScore[gameManager.playerInControl - 1].ToString("F0");
                    break;

                case 4:
                    gameManager.playerScore[gameManager.playerInControl - 1] += scorePerSec = Time.deltaTime;
                    gameManager.playersScoreText[gameManager.playerInControl - 1].text = gameManager.playerScore[gameManager.playerInControl - 1].ToString("F0");
                    break;
            }



        }
    }
}
