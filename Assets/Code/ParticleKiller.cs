using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParticleKiller : MonoBehaviour {

    ParticleSystem system;
    ParticleSystem[] allSystems;

    public float waitTime = 0;

	void Start () {
        system = GetComponent<ParticleSystem>();
        allSystems = GetComponentsInChildren<ParticleSystem>();
	}
	
	void Update () {
        if (waitTime > 0) {
            waitTime -= Time.deltaTime;
            if (waitTime < 0) {
                foreach(ParticleSystem pSystem in allSystems) {
                    ParticleSystem.MainModule main = pSystem.main;
                    main.loop = false;
                }
            }
        }

        if (waitTime < 0 && !system.IsAlive()) 
            Destroy(gameObject);
	}
}
