using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScopeView : MonoBehaviour {

    Renderer scopeRenderer;
    FiringUI firingUI;
    Transform scope;
    ScopeControl scopeControl;
    Vector3[] scopeSizes = new Vector3[2];

    Transform scopeConnector;
    Renderer scopeConnectorRenderer;


    Transform player;

    bool isOpen = false;
    public bool ShowScope {
        set {
            if (isOpen != value) {
                isOpen = value;
                scopeControl.InUse = isOpen;
                openTimer = Mathf.Clamp01(openTimer);
                if (isOpen) {
                    scopeRenderer.material.mainTexture = scopeControl.ScopeTexture;
                    scopeRenderer.enabled = true;
                    scopeConnectorRenderer.enabled = true;   
                }
            }
        }
        get {
            return isOpen;
        }
    }
    float openTimer = 0.0f;
    float openDuration = 0.25f;

    float scopeAngle = 60.0f;
    float currentAngle = 0.0f;
    float offset = 1.5f;

    float ScopeDirection {
        get {
            if (!player)
                player = firingUI.Input.Player.transform;
            
            return Mathf.Sign(
                Vector3.Dot(player.right, firingUI.transform.forward)
            );
        }
    }

	void Start () {
        scope = transform.Find("Scope");
        scopeRenderer = scope.GetComponent<Renderer>();
        firingUI = transform.parent.GetComponent<FiringUI>();

        scopeConnector = transform.Find("ScopeConnector");
        scopeConnectorRenderer = scopeConnector.GetComponent<Renderer>();

        scopeSizes[0] = new Vector3(0.1f, 0.1f, 0.1f);
        scopeSizes[1] = new Vector3(0.75f, 0.75f, 0.75f);
	}
	
	void Update () {
        if (openTimer >= 0 && openTimer <= 1) {
            openTimer += Time.deltaTime /
                             (isOpen ? openDuration : -openDuration);
            float amount = Mathf.SmoothStep(0, 1, openTimer);

            scope.localScale = Vector3.Lerp(scopeSizes[0], scopeSizes[1], amount);
            Color scopeColor = Color.Lerp(Color.black, Color.white, amount);
            scopeConnectorRenderer.material.SetColor("_TintColor", scopeColor);
            if (!isOpen && openTimer < 0) {
                scopeRenderer.enabled = false;
                scopeConnectorRenderer.enabled = false;
            }
        }

        if (isOpen) {
            transform.position = firingUI.ScopeAttachPos;

            currentAngle = Mathf.Lerp(
                currentAngle,
                scopeAngle * ScopeDirection,
                Time.deltaTime * 5
            );

            scope.localPosition = 
                Quaternion.AngleAxis(currentAngle, Vector3.forward) *
                (Vector3.up * offset);

            scopeConnector.localRotation = Quaternion.AngleAxis(
                currentAngle, Vector3.forward
            );

            scopeConnector.localScale = new Vector3(0.5f, offset, 1.0f);


        } else {
            if (openTimer < 0) {
                scopeRenderer.enabled = false;
            }
        }
	}

    public void SetScope(ScopeControl scope) {
        scopeControl = scope;
    }
}
