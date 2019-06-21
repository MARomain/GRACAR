using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Top_Down : MonoBehaviour
{



    Animator Animator;

    public bool TopDown;

    void Start()
    {

        Animator = gameObject.GetComponent<Animator>();

        

    }

    // Update is called once per frame
    void Update()
    {

        if (TopDown) Animator.SetBool("TopDown", true);

        if (!TopDown) Animator.SetBool("TopDown", false);

    }

}