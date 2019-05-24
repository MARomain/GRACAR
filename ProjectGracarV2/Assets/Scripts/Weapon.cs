using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Weapon : MonoBehaviour
{
    public string name;
    public float damage;
    public float fireRate;
    public GameObject bullet;
    public float speed;
    public Transform gunPoint;

    public Weapon(string name, int damage, int fireRate, GameObject bullet, float speed, Transform gunPoint)
    {
        this.name = name;
        this.damage = damage;
        this.fireRate = fireRate;
        this.bullet = bullet;
        this.speed = speed;
        this.gunPoint = gunPoint;
    }

    public abstract void Shoot();

}
