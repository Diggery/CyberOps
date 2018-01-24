using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DamageUIControl : MonoBehaviour {

    float amount = 1.0f;

    public DamageMeter[] meters;

	void Start () {
		
	}
	
	void Update () {
        if (Input.GetKey(KeyCode.Space)) {
            amount -= 0.1f;
            //foreach(DamageMeter meter in meters) {
            meters[0].Amount = amount;
            //}
        }
	}
}
