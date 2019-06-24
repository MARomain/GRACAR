using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ShowFPS : MonoBehaviour
{
    public Text fpsText;
    public float deltaTime;

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.P))
        {
            fpsText.gameObject.SetActive(!fpsText.gameObject.activeSelf);
        }


        deltaTime += (Time.deltaTime - deltaTime) * 0.1f;
        float fps = 1.0f / deltaTime;
        fpsText.text = Mathf.Ceil(fps).ToString();
    }


}
