﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour
{
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
    }

    public void InitVar()
    {
        timerBool = true;
        currentGameTimer = gameTimer;
    }

    // Update is called once per frame
    void Update()
    {
        GameTimer();
        Swapfloor();
        RestartGame();
    }

    public void GameTimer()
    {
        if(timerBool)
        {
            currentGameTimer -= Time.deltaTime;
            timerText.text = currentGameTimer.ToString("F2") + " s";

        }

        if (currentGameTimer <= 0)
        {
            
            StartCoroutine(SwapFloor2());
            //swapFloorBool = true;
            timerBool = false;
            currentGameTimer = gameTimer;
            timerText.text = "0s";
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


    public void RespawnPlayers()
    {

    }

    public void RestartGame()
    {
        if(Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
    }
}
