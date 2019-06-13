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

    public TestWeapon(string name, int damage, int fireRate, GameObject bullet,float speed, Transform gunPoint) : base(name,damage,fireRate,bullet, speed, gunPoint)
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
    }

    public override void Shoot()
    {
        spread.x = Random.Range(-verticalSpread, verticalSpread);
        spread.y = Random.Range(-horizontalSpread, horizontalSpread);

        if (Input.GetAxis(fireButton) > 0 && Time.time > nextFire)
        {
            nextFire = Time.time + fireRate;

            GameObject bulletInstance = Instantiate(bullet, gunPoint.position, gunPoint.rotation);

            bulletInstance.transform.Rotate(spread.x, spread.y, transform.rotation.z, Space.Self);

            Rigidbody instanceRb = bulletInstance.GetComponent<Rigidbody>();
            instanceRb.AddForce(speed * Time.deltaTime * bulletInstance.transform.forward, ForceMode.Impulse);

            Destroy(bulletInstance, 4f);
        }
    }
}
