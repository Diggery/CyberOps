using UnityEngine;
using System;
using System.Collections;
using UnityEngine.AI;

public class UnitMover : MonoBehaviour {

    Animator animator;
    UnitControl unitControl;
    NavMeshAgent navAgent;
    MapControl mapControl;

    bool isMoving = false;
    public bool IsMoving {
        get { return isMoving; }
        set { 
            isMoving = value;
            animator.SetBool("Moving", isMoving);
            navAgent.updatePosition = value;
            navAgent.updateRotation = value;
        }
    }

    float moveSpeed = 4.5f;
    float turnSpeed = 300.0f;

    float transitionTimer = 0.0f;
    float transitionDuration = 0.5f;
    bool isTransitioning = false;
    Vector3[] transitionPos = new Vector3[2];
    Quaternion[] transitionRot = new Quaternion[2];
    public bool IsTransitioning {
        get { return isTransitioning; }
        set {
            isTransitioning = value;
            transitionTimer = 0;
        }
    }

    bool movingToCover = false;
                
    public void Init () {
        animator = GetComponent<Animator>();
        unitControl = GetComponent<UnitControl>();
        navAgent = gameObject.AddComponent<NavMeshAgent>();
        navAgent.radius = GetComponent<CapsuleCollider>().radius;
        navAgent.speed = moveSpeed; 
        navAgent.angularSpeed = turnSpeed; 
        mapControl = GameManager.instance.ActiveMap;
        animator.SetFloat("MoveSpeed", 1.5f);
    }

    void Update () {

        //Finished Moving;
        if (IsMoving && !navAgent.pathPending && navAgent.remainingDistance <= navAgent.stoppingDistance) {
            if (!navAgent.hasPath || Math.Abs(navAgent.velocity.sqrMagnitude) < Mathf.Epsilon) 
                StopMoving();
        }

        //Almost reached cover, start transitioning;
        if (movingToCover && IsMoving && !navAgent.pathPending && navAgent.remainingDistance < (0.75f * mapControl.gridSize)) {
            Debug.Log("StartTransition");
            TransitionToCover(navAgent.destination);
        }

        // close to cover, transition to standing behind cover
        if (IsTransitioning) {
            transitionTimer += Time.deltaTime / transitionDuration;
            transform.position = Vector3.Lerp(transitionPos[0], transitionPos[1], transitionTimer);
            transform.rotation = Quaternion.Lerp(transitionRot[0], transitionRot[1], transitionTimer);
            if (transitionTimer > 1.0f) {
                IsTransitioning = false;
                transform.position = transitionPos[1];
                transform.rotation = transitionRot[1];
            }
        }

        if (Input.GetKeyDown(KeyCode.Space)) {
            MoveTo(new Vector3(5.0f, 0, 5.0f));
        }
    }



    public void MoveTo(Vector3 newPos) {
        if ((newPos - transform.position).sqrMagnitude < 1.0f) {
            Debug.Log("Destination is too close");
            return;
        }
            
        MapCellData mapData = mapControl.GetData(newPos);
        if (mapData.IsCollision) {
            Debug.Log("Can't move into collision");
            return;
        }

        IsMoving = true;
        animator.SetBool("HighCover", false);
        animator.SetBool("LowCover", false);

        animator.SetTrigger("StartMoving");
        movingToCover = mapData.HasCover;
        navAgent.SetDestination(mapData.position);
        mapControl.GetData(transform.position).CurrentStatus =
                      MapCellData.CellStatus.Open;
    }

    public void TransitionToCover(Vector3 mapPos) {
        StopMoving();
        MapCellData mapData = mapControl.GetData(mapPos);

        transitionPos[0] = transform.position;
        transitionPos[1] = mapData.position;
        transitionRot[0] = transform.rotation;
        transitionRot[1] = mapData.rotation;
        IsTransitioning = true;

        string coverType =  mapData.HasHighCover ? "HighCover" : "LowCover";
        mapData.CurrentStatus = MapCellData.CellStatus.Occupied;
        animator.SetBool(coverType, true);
    }

    public void Turn(int direction) {
        transitionPos[0] = transform.position;
        transitionPos[1] = transform.position;
        transitionRot[0] = transform.rotation;
        transitionRot[1] = 
            transform.rotation * Quaternion.AngleAxis(45 * direction, Vector3.up);
        IsTransitioning = true;
    }

    public void StopMoving() {
        IsMoving = false;
        unitControl.MoveComplete();
        navAgent.isStopped = true;
        navAgent.ResetPath();
        movingToCover = false;
    }
}
