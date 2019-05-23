using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class test : MonoBehaviour
{

    public GameObject water;
    public float timeChangeFloor;
    public float currentTime = 0f;
    public float ratio;
    Vector3 saucisse;
    // Start is called before the first frame update
    void Start()
    {
        saucisse = water.transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        currentTime += Time.deltaTime;

        MoveObjectToPosition(water, timeChangeFloor, new Vector3(20f, 20f, -23f));

        
    }

    public void MoveObjectToPosition(GameObject objectToMove, float timeToMove, Vector3 direction)
    {
        ratio = currentTime / timeToMove;
        
        objectToMove.transform.position = Vector3.Lerp(saucisse, direction, currentTime / timeToMove);
    }   
}
