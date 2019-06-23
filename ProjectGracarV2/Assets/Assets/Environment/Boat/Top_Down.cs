using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Top_Down : MonoBehaviour
{


    float TotalFrames = 1800;

    Animator Animator;

    public bool TopDown;

    void Start()
    {

        Animator = gameObject.GetComponent<Animator>();


        if (TopDown) Animator.SetBool("TopDown", true);

        if (!TopDown) Animator.SetBool("TopDown", false);


       // Animator.Play("Boat_Top_Anim", 0, (900f / TotalFrames));



    }





    // Update is called once per frame
    void Update()
    {

      

    }

}