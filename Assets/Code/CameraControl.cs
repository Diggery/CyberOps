using UnityEngine;
using System.Collections;

public class CameraControl : MonoBehaviour {

    public AnimationCurve cameraMove;

    public Vector3 cameraOffset = Vector3.zero;

    Transform cameraTransform;

    float moveTimer = -1;
    Vector3 moveStartPos = Vector3.zero;
    Vector3 moveEndPos = Vector3.zero;
    float moveSpeed = 20.0f;
    float moveDuration = 1.0f;

    Transform reticle;

    Transform player;

    float recenterTime = 2.0f;
    float recenterTimer = 0.0f;

    bool autoRecenter = false;

    public bool IsMoving {
        get { return moveTimer >= 0; }
    }

	void Awake () {
        reticle = transform.Find("GvrControllerPointer/Laser/Reticle");
        cameraTransform = Camera.main.transform;
	}
	
	void LateUpdate () {

        if (autoRecenter && player) {
            Vector3 cameraPos = new Vector3(cameraTransform.position.x, 0, cameraTransform.position.z);
            Vector3 cameraDirection = (player.position - cameraPos).normalized;
            if (Vector3.Dot(cameraDirection, cameraTransform.forward) < 0.5f) {
                recenterTimer -= Time.deltaTime;
                if (recenterTimer < 0) {
                    recenterTimer = recenterTime;
                    MoveTo(player.position);
                }
            } else {
                if (recenterTimer < recenterTime) {
                    recenterTimer += Time.deltaTime;
                }
            }
        }

        if (IsMoving) {
            moveTimer += Time.deltaTime / moveDuration;
            float amount = cameraMove.Evaluate(moveTimer);
            transform.position = Vector3.Lerp(moveStartPos, moveEndPos, amount);
            if (moveTimer > 1.0f)
                MoveComplete();
        }
	}

    public void SetPlayer(GameObject newPlayer) {
        player = newPlayer.transform;
    }

    public void MoveTo(Vector3 endPos) {

        Debug.Log("Move Camera from " + moveStartPos + " to " + moveEndPos);

        moveTimer = 0;
        moveStartPos = transform.position;
        moveEndPos = endPos + new Vector3(0, cameraOffset.y, 0);
        moveEndPos += GetRecenterOffset();

        float moveDistance = Vector3.Distance(moveStartPos, moveEndPos);

        if (moveDistance < 0.1f) {
            Debug.Log("Don't move to the same spot!");
            MoveComplete();
            return;
        }

        moveDuration = moveDistance / moveSpeed;
    }
    void MoveComplete() {
        moveTimer = -1;
    }

    public Transform GetReticle() {
        return reticle;
    }
 
    public Ray GetControllerRay() {
        return new Ray(Camera.main.transform.position, reticle.position - Camera.main.transform.position);
    } 

    public void Recenter() {
        MoveTo(player.position);
    }

    public Vector3 GetRecenterOffset() {

        float heading = (
            Mathf.Atan(cameraTransform.forward.x / cameraTransform.forward.z)
        ) * Mathf.Rad2Deg;

        if (cameraTransform.forward.z < 0) {
            heading += 180 * Mathf.Sign(cameraTransform.forward.x);
        }

        return Quaternion.AngleAxis(
            Mathf.RoundToInt(heading / 90.0f) * 90,
            Vector3.up) * (Vector3.forward * cameraOffset.z);
    }

}
