using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainUIControl : MonoBehaviour {


    bool isOpen = false;
    public bool IsOpen {
        get {
            return isOpen;
        }

        set {
            isOpen = value;
            if (isOpen && openTimer <= 0) 
                Open();
            
            openTimer = Mathf.Clamp01(openTimer);

        }
    }

    float openTimer = 0;
    float openDuration = 1.25f;

    float lastCamUpAngle = -1.0f;

    CanvasGroup[] panels;

    void Start () {
        IsOpen = false;
        panels = GetComponentsInChildren<CanvasGroup>();
	}
	
	void Update () {
        Transform mainCam = Camera.main.transform;
        transform.position = mainCam.position;
        float camUpAngle = Vector3.Dot(mainCam.forward, Vector3.up);
        if (!isOpen && camUpAngle > 0 && lastCamUpAngle < 0) {
            IsOpen = true;
        }
        if (isOpen && camUpAngle < 0 && lastCamUpAngle > 0) {
            IsOpen = false;
        }
        lastCamUpAngle = camUpAngle;




        if (openTimer >= 0.0f && openTimer <= 1.0f) {
            openTimer += Time.deltaTime / (isOpen ? openDuration : -openDuration);
            float amount = Mathf.SmoothStep(0, 1, openTimer);
            foreach (CanvasGroup panel in panels) {
                panel.alpha = amount;
            }
            if (openTimer < 0.0f) {
                Close();
            }
        }
	}

    void Open() {
        Debug.Log("Opening Panel ");

        foreach (CanvasGroup panel in panels) {
            panel.gameObject.SetActive(true);
        }
    }

    void Close() {

        Debug.Log("Closing Panel");
        foreach (CanvasGroup panel in panels) {
            panel.gameObject.SetActive(false);
        }
    }
}
