using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickupWeapon : MonoBehaviour
{
    public TestWeapon testWeapon;

    // Start is called before the first frame update
    void Start()
    {
        testWeapon = GetComponent<TestWeapon>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            Controller player =  other.GetComponentInParent<Controller>();
            if(player.hasAGun == false)
            {
                player.SpawnWeapon();
                Destroy(this.gameObject);
            }
            
        }
        
    }
}
