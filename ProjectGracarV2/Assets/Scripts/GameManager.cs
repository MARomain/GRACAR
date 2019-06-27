using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;
using UnityEngine.PostProcessing;

public class GameManager : MonoBehaviour
{
    [Header("General")]
    public GameObject[] players;
    public float player1Score;
    public float player2Score;
    public float player3Score;
    public float player4Score;
    public float[] playerScore;
    public TextMeshProUGUI[] playersScoreText;
    public float scoreToWin;


    public float startDelay;
    public float endDelay;

    private WaitForSeconds startWait;
    private WaitForSeconds endGameWait;

    [Header("Spawns")]
    public Transform[] spawnPointsPlayers;
    public Transform[] spawnPointsChest;
    public float spawnDelay;

    [Header("Chest")]
    public int playerInControl;
    public GameObject chest;

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


    [Header("EndGame")]
    public GameObject endGameCanvas;
    public PostProcessingProfile pppMenu;
    public Transform[] endPointScorePos;
    public GameObject[] stuffToHide;

    // Start is called before the first frame update
    void Start()
    {
        ResetScores();
        Time.timeScale = 1f;

        startWait = new WaitForSeconds(startDelay);
        endGameWait = new WaitForSeconds(endDelay);

        SetTextColors();

        StartCoroutine(GameLoop());
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
        //GameTimer();
        //Swapfloor();
        RestartGame();
    }


    //Code de la game loop : 
    //StartCoroutine(Gameloop()) dans le Start()
    //A l'intérieur une Coroutine GameStarting() pour le placement des joueurs etc puis à la fin on return dans la gameloop
    //Après dans la gameloop on lance une Coroutine GamePlaying() avec le lancement du timer etc début de la game
    //Toujours dans Gameplaying il faut un While(PersonneAAtteintLeScoreMax) et à l'intérieur if(TimerEnd()) voir gamemanager charlatank
    //Ca repart dans la Gameloop() et on lance GameEnding() qui va afficher le score à la fin 


    public IEnumerator GameLoop()
    {
        yield return StartCoroutine(GameStarting());

        yield return StartCoroutine(GamePlaying());

        yield return StartCoroutine(GameEnding());

        StartCoroutine(GameLoop());
    }

    public IEnumerator GameStarting()
    {
        Time.timeScale = 1f;

        Debug.Log("Game Starting");
        ResetPlayers();
        //ResetScores();
        yield return startDelay;

    }

    public IEnumerator GamePlaying()
    {
        Debug.Log("Game Playing");
        StartTimer();
        InitChest();

        while (!MaxScoreReached())
        {
            GameTimer(); // essayer de merge StartTimer et GameTimer à un moment

            if (TimerEnded())
                yield return null;
        }
    }

    public IEnumerator GameEnding()
    {
        Debug.Log("Game Ending");
        Time.timeScale = 0;
        endGameCanvas.SetActive(true);
        for (int i = 0; i < playersScoreText.Length; i++)
        {
            playersScoreText[i].transform.position = endPointScorePos[i].position;
        }

        for (int i = 0; i < stuffToHide.Length; i++)
        {
            stuffToHide[i].gameObject.SetActive(false);
        }

        cam.GetComponent<PostProcessingBehaviour>().profile = pppMenu;

        
            for (int i = 0; i < 20; i++)
            {
                if (Input.GetKeyDown("joystick 1 button " + i))
                {
                    SceneManager.LoadScene("MainMenu");
                }
            }

            if (Input.anyKeyDown)
            {
                SceneManager.LoadScene("MainMenu");
            }


        yield return endDelay;
    }




    public void ResetPlayers()
    {
        for (int i = 0; i < players.Length; i++)
        {
            players[i].transform.position = spawnPointsPlayers[i].transform.position;
            players[i].transform.rotation = spawnPointsPlayers[i].transform.rotation;
        }
    }

    public void ResetScores()
    {
        for (int i = 0; i < playerScore.Length; i++)
        {
            print("score 0");
            playerScore[i] = 0f;
            playersScoreText[i].text = "0";
        } 
    }

    public void StartTimer()
    {
        timerBool = true;
        currentGameTimer = gameTimer;
    }

    public void InitChest()
    {
        Debug.Log(spawnPointsChest[ChooseSpawnPoint(spawnPointsChest)].position);
        chest.transform.position = spawnPointsChest[ChooseSpawnPoint(spawnPointsChest)].position;
        chest.transform.rotation = spawnPointsChest[ChooseSpawnPoint(spawnPointsChest)].rotation;
        //l'intégration avec robin
    }


    public int ChooseSpawnPoint(Transform[] spawnPoints)
    {
        return Random.Range(0, spawnPoints.Length);
    }


    private bool MaxScoreReached()
    {
        for (int i = 0; i < playerScore.Length; i++)
        {
            if (playerScore[i] >= scoreToWin)
            {
                return true;
            }
        }
         return false;

        //if (player1Score >= scoreToWin || player2Score >= scoreToWin || player3Score >= scoreToWin || player4Score >= scoreToWin)
        //{
        //    return true;
        //}
        //else return false;
        
    }

    private float WhoWon()
    {
        //if (player1Score >= scoreToWin)
        //    return 1;

        //if (player2Score >= scoreToWin)
        //    return 2;

        //if (player3Score >= scoreToWin)
        //    return 3;

        //if (player4Score >= scoreToWin)
        //    return 4;

        for (int i = 0; i < playerScore.Length; i++)
        {
            if(playerScore[i] >= scoreToWin)
            {
                return playerScore[i] + 1f;
            }
        }

        return 0;
    }






    //Code du spawn selon 3 étape : 
    //Un coffre fix avec des points de spawn fix, les joueurs respawn sur un point de spawn choisi aléatoirement
    //Un coffre dynamique avec des points de spawns adapté selon la position du coffre, les joueurs respawn sur un point de spawn choisi aléatoirement
    //Un coffre dynamique avec des points de spawns adapté selon la position du coffre, les joueurs respawn selon ou sont les autres joueurs (dans un endroit solo)




    //Quand un joueur meurs
    //Ca lance une fonction dans le gameManager pour le faire respawn
    //

    public IEnumerator Respawn(int playerNumber, float spawnDelay)
    {
        players[playerNumber - 1].SetActive(false);
        yield return new WaitForSeconds(spawnDelay);
        players[playerNumber - 1].SetActive(true);
        players[playerNumber - 1].transform.position = spawnPointsPlayers[ChooseSpawnPoint(spawnPointsPlayers)].position;
        players[playerNumber - 1].GetComponent<Controller>().rb.velocity = Vector3.zero;
    }





    public void GameTimer()
    {
        if(timerBool)
        {
            currentGameTimer -= Time.deltaTime;

            float minutes = Mathf.Floor(currentGameTimer / 60);
            float seconds = Mathf.RoundToInt(currentGameTimer % 60);
            timerText.text = minutes.ToString("F0") + ":" + seconds.ToString("F0");
        }

        if (currentGameTimer <= 0)
        {

            //StartCoroutine(SwapFloor2());
            //swapFloorBool = true;
            //timerBool = false;
            //currentGameTimer = gameTimer;
            //timerText.text = "0s";

            //SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }


    public bool TimerEnded()
    {
        if (currentGameTimer <= 0)
        {
            StartCoroutine(GameEnding());
        }
        return true;
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
