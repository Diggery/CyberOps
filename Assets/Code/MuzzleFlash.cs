using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MuzzleFlash : MonoBehaviour {

    ParticleSystem sparks;
    ParticleSystem smoke;
    Renderer flash1;
    Renderer flash2;

    float flashTime = 0.1f;
    float flashTimer = 0f;

	void Start () {
        sparks = transform.Find("Sparks").GetComponent<ParticleSystem>();
        smoke = transform.Find("Smoke").GetComponent<ParticleSystem>();
        flash1 = transform.Find("Flash1").GetComponent<Renderer>();
        flash2 = transform.Find("Flash2").GetComponent<Renderer>();
	}
	
	void Update () {
        if (flashTimer > 0) {
            flashTimer -= Time.deltaTime / flashTime;
            Color flashColor = new Color(flashTimer, flashTimer, flashTimer) * 1f;
            flash1.material.SetColor("_TintColor", flashColor);
            flash2.material.SetColor("_TintColor", flashColor);

            if (flashTimer < 0) {
                flash1.enabled = false;
                flash2.enabled = false;
            }
        }
	}

    public void Flash() {
        flashTimer = 1.0f;
        sparks.Play();
        smoke.Play();

        Quaternion flashRot = Quaternion.LookRotation(
            -transform.forward,
            Camera.main.transform.position - transform.position
        );

        flash1.enabled = true;
        flash1.material.color = Color.white;
        float flash1Flip = Mathf.Sign(Random.value - 0.5f);
        flash1.transform.localScale =
              new Vector3(Random.Range(0.25f, 1.0f) * flash1Flip, 1, 1.5f);
        flash1.transform.rotation = flashRot;

        
        flash2.enabled = true;
        flash2.material.color = Color.white;
        float flash2Flip = Mathf.Sign(Random.value - 0.5f);
        flash2.transform.localScale =
              new Vector3(Random.Range(0.25f, 0.75f) * flash2Flip, 1, 1);
        flash2.transform.rotation = flashRot;

    }
}
