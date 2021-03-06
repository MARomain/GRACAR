﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class Weapon : MonoBehaviour
{
    public string name;
    public float fireRate;
    public GameObject bullet;
    public float speed;
    public Transform gunPoint;
    public bool canShoot;

    public Weapon(string name, float fireRate, GameObject bullet, float speed, Transform gunPoint, bool canShoot)
    {
        this.name = name;
        this.fireRate = fireRate;
        this.bullet = bullet;
        this.speed = speed;
        this.gunPoint = gunPoint;
        this.canShoot = canShoot;
    }

    public abstract void Shoot();

}
