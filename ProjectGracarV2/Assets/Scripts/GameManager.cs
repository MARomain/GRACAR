using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
    [Header("General")]
    public GameObject[] players;
    public float player1Score;
    public float player2Score;
    public float player3Score;
    public float player4Score;
    public TextMeshProUGUI[] playersScoreText;

    [Header("Respawns")]
    public Transform[] spawnPoints;

    [Header("Chest")]
    public int playerInControl;

    public bool timerBool;
    public TextMeshProUGUI timerText;
    public float gameTimer;
    private float currentGameTimer;

    

    public Camera cam;
    public Transform[] camElevation;
    public GameObject[] floorGo;
    public GameObject water;

    Vector3 startPos;
    public bool swapFloorBool;
    public float timeChangeFloor = 2f;
    public float currentTime = 0f;

    // Start is called before the first frame update
    void Start()
    {
        InitVar();
        SetTextColors();
    }

    public void InitVar()
    {
        timerBool = true;
        currentGameTimer = gameTimer;
    }

    public void SetTextColors()
    {
        for (int i = 0; i < players.Length; i++)
        {
            playersScoreText[i].color = players[i].GetComponent<Controller>().playerColor;
        }
    }

    // Update is called once per frame
    void Update()
    {
        GameTimer();
        //Swapfloor();
        RestartGame();
    }


    //Code du spawn selon 3 étape : 
    //Un coffre fix avec des points de spawn fix, les joueurs respawn sur un point de spawn choisi aléatoirement
    //Un coffre dynamique avec des points de spawns adapté selon la position du coffre, les joueurs respawn sur un point de spawn choisi aléatoirement
    //Un coffre dynamique avec des points de spawns adapté selon la position du coffre, les joueurs respawn selon ou sont les autres joueurs (dans un endroit solo)




    //Quand un joueur meurs
    //Ca lance une fonction dans le gameManager pour le faire respawn
    //

    public void Respawn(int playerNumber)
    {
        players[playerNumber - 1].transform.position = spawnPoints[ChooseSpawnPoint()].position;
        players[playerNumber - 1].GetComponent<Controller>().rb.velocity = Vector3.zero;
    }

    public int ChooseSpawnPoint()
    {
        return Random.Range(0, spawnPoints.Length);
    }

    public void UpdateScore()
    {

    }











    public void GameTimer()
    {
        if(timerBool)
        {
            currentGameTimer -= Time.deltaTime;

            float minutes = Mathf.Floor(currentGameTimer / 60);
            float seconds = Mathf.RoundToInt(currentGameTimer % 60);
            timerText.text = minutes.ToString("F0") + " : " + seconds.ToString("F0");
        }

        if (currentGameTimer <= 0)
        {

            //StartCoroutine(SwapFloor2());
            //swapFloorBool = true;
            //timerBool = false;
            //currentGameTimer = gameTimer;
            //timerText.text = "0s";

            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }

    public void Swapfloor()
    {
        if (swapFloorBool)
        {
            currentTime += Time.deltaTime;

            //cam.transform.position = Vector3.Lerp(cam.transform.position, camElevation[1].position, currentTime / timeChangeFloor);
            //water.transform.position = Vector3.Lerp(water.transform.position,new Vector3(0f, 15f, 0f), currentTime / timeChangeFloor);

            MoveObjectTransform(cam.gameObject, timeChangeFloor, camElevation[1]);
            MoveObjectToPosition(water, timeChangeFloor, new Vector3(0f, 14f, 0f));
        }

        if(currentTime >= timeChangeFloor)
        {
            swapFloorBool = false;
            //floorGo[0].SetActive(false);
            //floorGo[1].SetActive(true);
            currentTime = 0f;
        }
    }

    public IEnumerator SwapFloor2()
    {
        startPos = GetPosition(water);
        while (swapFloorBool)
        MoveObjectTransform(cam.gameObject, timeChangeFloor, camElevation[1]);
        MoveObjectToPosition(water, timeChangeFloor, new Vector3(0f, 14f, 0f));
        Debug.Log("i'm the coroutine");
        yield return new WaitForSeconds(timeChangeFloor);
    }



    public void MoveObjectTransform(GameObject objectToMove, float timeToMove, Transform PlaceToMove)
    {
        
        objectToMove.transform.position = Vector3.Lerp(objectToMove.transform.position, PlaceToMove.position, currentTime / timeToMove);
    }

    public void MoveObjectToPosition(GameObject objectToMove, float timeToMove, Vector3 direction)
    {
        
        objectToMove.transform.position = Vector3.Lerp(objectToMove.transform.position, direction, currentTime / timeToMove);

    }

    public Vector3 GetPosition(GameObject go)
    {
        return go.transform.position;
    }


    public void RestartGame()
    {
        if(Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }
}
