using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InputControl : MonoBehaviour {

    GameManager gameManager;
    CameraControl cameraControl;

    Transform reticle;
    public Vector3 ReticlePos {
        get { return reticle.position; }
    }

    public Vector3 ReticleDirection {
        get {
            return (reticle.transform.position - player.transform.position).normalized;
        }
    }

    public Vector3 ControllerDirection {
        get {
            return GvrControllerInput.Orientation * Vector3.forward;
        }
    }

    bool aim;

    public bool IsAiming {
        get { return aim;}
        set { 
            if (value != aim) {
                if (value) {
                    cameraControl.Recenter();
                }
                aim = value;
                controllerRenderer.enabled = !aim;
                laserRenderer.enabled = !aim;
                reticle.GetComponent<Renderer>().enabled = !aim;
            }
        }
    }

    FiringUI firingUI;
    public FiringUI FiringUI { get { return firingUI; } }

    LineRenderer firingLineClear;
    LineRenderer firingLineBlocked;

    MovingUI movingUI;

    GameObject player;
    UnitControl playerControl;
    UnitAttack playerAttack;

    Renderer controllerRenderer;
    Renderer laserRenderer;

    public GameObject Player {
        get {return player;}
        set {
            player = value;
            playerControl = player.GetComponent<UnitControl>();
            playerAttack = player.GetComponent<UnitAttack>();
            cameraControl.SetPlayer(player);
        }
    }

	public void Init () {
        gameManager = GameManager.instance;
        cameraControl = gameManager.CameraControl;

        if (!cameraControl)
            Debug.Log("No CameraControl");
        reticle = cameraControl.GetReticle();

        controllerRenderer = 
            reticle.parent.parent.Find("ControllerVisual").GetComponent<Renderer>();
        
        laserRenderer =
            reticle.parent.GetComponent<Renderer>();

        GameObject firingUIPrefab = GameManager.instance.GetPrefab("FiringUI");
        firingUI = (Instantiate(firingUIPrefab) as GameObject).GetComponent<FiringUI>();

        GameObject movingUIPrefab = GameManager.instance.GetPrefab("MovingUI");
        movingUI = (Instantiate(movingUIPrefab) as GameObject).GetComponent<MovingUI>();
	}

	void Update () {
        if (!Player) {
            if (gameManager.ActiveUnit) {
                Player = gameManager.ActiveUnit.gameObject;
                movingUI.Init(player.transform);
                firingUI.Input = this;
            } else {
                return;
            }
        }

        if (GvrControllerInput.State == GvrConnectionState.Connected) {
            HandleClick();
            HandleReticle();
            HandleAppButton();            
        }

	}

    void HandleClick() {
        if (GvrControllerInput.ClickButtonDown) {
            playerAttack.Attack(true);
        }
        if (GvrControllerInput.ClickButton) {
            playerAttack.Attack(false);
        }
    }

    void HandleReticle() {
        IsAiming = GvrControllerInput.IsTouching;
        firingUI.IsOpen = playerAttack.IsAiming && IsAiming;
    }

    void HandleAppButton() {
        if (GvrControllerInput.AppButtonDown) {
            movingUI.IsVisible = true;
        }
        if (GvrControllerInput.AppButton) {
            LayerMask terrainMask = 1 << LayerMask.NameToLayer("Terrain");
            RaycastHit hit;
            if (Physics.Raycast(cameraControl.GetControllerRay(), out hit, 20, terrainMask)) {

                if (hit.transform.tag.Equals("Map")) {
                    movingUI.SetPos(hit.point);
                } else {
                    movingUI.IsVisible = false;
                }

            } else {
                movingUI.IsVisible = false;
            }
        }
        if (GvrControllerInput.AppButtonUp) {
            Vector3 movePos = movingUI.transform.position;
            if (movingUI.IsVisible &&
                !Physics.Linecast(
                    movePos + (Vector3.up * 5), 
                    movePos + (Vector3.up * 0.5f))) {
                playerControl.MoveTo(movingUI.transform.position);
            }
            movingUI.IsVisible = false;
        }        
    }


    Vector3 ControllerHeading() {
        Vector3 controllerDir = GvrControllerInput.Orientation * Vector3.forward;
        controllerDir.y = 0;
        return controllerDir;
    }
}
