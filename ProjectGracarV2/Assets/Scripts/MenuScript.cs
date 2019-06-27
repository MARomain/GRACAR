using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuScript : MonoBehaviour
{
    public float delayBeforeKeyPress;
    public bool canPress = false;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        delayBeforeKeyPress -= Time.deltaTime;

        if(delayBeforeKeyPress <= 0)
        {
            canPress = true;
        }

        if(canPress == true)
        {
            for (int i = 0; i < 20; i++)
            {
                if (Input.GetKeyDown("joystick 1 button " + i))
                {
                    SceneManager.LoadScene("LEVEL BATEAU BACKUP");
                }
            }

            if (Input.anyKeyDown)
            {
                SceneManager.LoadScene("LEVEL BATEAU BACKUP");
            }
        }

        


        //SceneManager.LoadScene("OtherSceneName");

    }


}
