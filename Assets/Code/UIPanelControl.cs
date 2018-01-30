using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIPanelControl : MonoBehaviour {

    public float openDelay = 0.0f;
    CanvasGroup canvasGroup;

    bool isOpen = false;
    public bool IsOpen {
        get {
            return isOpen;
        }
        set {
            isOpen = value;
            if (isOpen && openTimer <= 0)
                Open();
            openTimer = Mathf.Clamp(openTimer, -openDelay, 1.0f);
        }
    }

    float openTimer = 0;
    float openDuration = 1.25f;

    void Start() {
        canvasGroup = GetComponent<CanvasGroup>();
        IsOpen = false;
    }

    void Update() {
        if (openTimer >= -openDelay && openTimer <= 1.0f) {
            openTimer += Time.deltaTime / (isOpen ? openDuration : -openDuration);
            float amount = Mathf.SmoothStep(0, 1, openTimer);
                canvasGroup.alpha = amount;
            if (openTimer < -openDelay) {
                Close();
            }
        }
    }

    void Open() {
        Debug.Log("Opening Panel ");
        gameObject.SetActive(true);
    }

    void Close() {

        Debug.Log("Closing Panel");
        gameObject.SetActive(false);
    }
}
