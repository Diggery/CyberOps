using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleKiller : MonoBehaviour {

    ParticleSystem system;

	void Start () {
        system = GetComponent<ParticleSystem>();
	}
	
	void Update () {
        if (!system.IsAlive()) 
            Destroy(gameObject);
	}
}
