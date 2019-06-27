using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestWeapon : Weapon
{
    [HideInInspector] public string fireButton;
    public int playerNumber;
    private float nextFire;
    public Vector2 spread;
    public float horizontalSpread;
    public float verticalSpread;
    private Controller controller;
    public float knockbackAmount;
    public float bubbleDamage;
    public float destroyTiming;
    public GameObject jetdeau;

    public TestWeapon(string name,float fireRate, GameObject bullet,float speed, Transform gunPoint, bool canShoot) : base(name,fireRate,bullet, speed, gunPoint, canShoot)
    {

    }

    // Start is called before the first frame update
    void Start()
    {
        controller = GetComponentInParent<Controller>();
    }

    // Update is called once per frame
    void Update()
    {
        Shoot();

        if(Input.GetAxis(fireButton) > 0)
        {
            jetdeau.SetActive(true);
        }
        else
        {
            jetdeau.SetActive(false);
        }

    }

    public override void Shoot()
    {
        spread.x = Random.Range(-verticalSpread, verticalSpread);
        spread.y = Random.Range(-horizontalSpread, horizontalSpread);

        if(canShoot == true)
        {
            if (Input.GetAxis(fireButton) > 0 && Time.time > nextFire)
            {
                nextFire = Time.time + fireRate;
                
                GameObject bulletInstance = Instantiate(bullet, gunPoint.position, gunPoint.rotation);

                bulletInstance.GetComponent<bullet>().Initialize(knockbackAmount, bubbleDamage);
                bulletInstance.transform.Rotate(spread.x, spread.y, transform.rotation.z, Space.Self);

                Rigidbody instanceRb = bulletInstance.GetComponent<Rigidbody>();
                //instanceRb.AddForce(speed * bulletInstance.transform.forward, ForceMode.Impulse);
                instanceRb.velocity = speed * bulletInstance.transform.forward;

                Destroy(bulletInstance, destroyTiming);
            }
        }
    }
}
