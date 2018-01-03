using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScopeControl : MonoBehaviour {

    Camera scopeCam;

    Transform scopeView;

    float minZoom = 1.0f;
    float maxZoom = 16.0f;
    float currentZoom = 8.0f;
    float zoomOffset = 0.0f;

    bool active = false;
    public bool IsActive {
        get { return active; }
        set { active = value; }
    }

    bool inUse = false;
    public bool InUse {
        get { return inUse; }
        set { 
            inUse = value; 
            zoomTimer = Mathf.Clamp01(zoomTimer);
        }
    }
    float zoomTimer = 0.0f;
    float zoomSpeed = 3.0f;

    public RenderTexture ScopeTexture {
        get { return scopeCam.targetTexture; }
    }

	void Start () {
        scopeCam = GetComponent<Camera>();
	}
	
	void LateUpdate () {
        if (InUse && GvrControllerInput.IsTouching)
            zoomOffset = GvrControllerInput.TouchPos.y;
                        
        if (zoomTimer >= 0.0f && zoomTimer <= 1.0f) {
            zoomTimer += Time.deltaTime / (inUse ? zoomSpeed : -zoomSpeed / 8);
            currentZoom = Mathf.Lerp(minZoom, maxZoom, zoomTimer);
        }
        scopeCam.fieldOfView = Camera.main.fieldOfView / (currentZoom + (zoomOffset * 10));
	}

}
