using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIController : MonoBehaviour {

    GameManager gameManager;
    UnitControl unitControl;
    UnitAttack unitAttack;
    UnitMover unitMover;
    MapControl mapControl;

    public GameObject currentTarget;

    float visualRange = 15.0f;

    public enum AIState { Scanning, Moving, Attacking, Waiting }

    AIState state = AIState.Waiting;
    public AIState State {
        get { return state; }
        set {
            if (state != value) {
                switch (value) {
                    case AIState.Scanning:
                        state = AIState.Scanning; 
                        unitAttack.ShouldBeAiming = false;

                        Debug.Log("Entering Scanning State");
                        break;

                    case AIState.Moving:
                        state = AIState.Moving;

                        MapCellData safeCell = 
                            mapControl.GetSafestPosition(
                                transform.position, 
                                unitControl.TeamName, 
                                5
                            );
                        
                        unitControl.MoveTo(safeCell.position);

                        Debug.Log("Entering Moving State");

                        break;

                    case AIState.Attacking:
                        state = AIState.Attacking;
                        unitAttack.ShouldBeAiming = true;
                        Debug.Log("Entering Attacking State");

                        break;

                    case AIState.Waiting:
                        state = AIState.Waiting;
                        waitTimer = 
                            waitTime + Random.Range( -waitTime * 0.25f, waitTime * 0.25f );
                        Debug.Log("Entering Waiting State");

                        break;
                }
            }
        }
    }
        

    bool ReadyToFire {
        get {
            return firingCoolDown < 0;
        }
    }

    int burstLength = 10;
    int burstCount = 10;
    float firingCoolDownTime = 3.0f;
    float firingCoolDown = -1.0f;

    float waitTime = 3.0f;
    float waitTimer = 0.0f;

	void Start () {
        gameManager = GameManager.instance;
        unitAttack = GetComponent<UnitAttack>();
        unitControl = GetComponent<UnitControl>();
        unitMover = GetComponent<UnitMover>();
        mapControl = gameManager.ActiveMap;
	}
	
	void Update () {
        if (firingCoolDown > 0) {
            firingCoolDown -= Time.deltaTime;
        }

        if (waitTimer > 0) {
            waitTimer -= Time.deltaTime;
            if (waitTimer < 0) {
                
                State = AIState.Moving;
            }
        }

        switch (state) {
            case AIState.Scanning:
                currentTarget = ScanForTargets();
                if (currentTarget) {
                    State = AIState.Attacking;
                } else {
                    State = AIState.Waiting;
                }

                break;

            case AIState.Moving:
                if (!unitMover.IsMoving)
                    State = AIState.Scanning;
                break;

            case AIState.Attacking:
                if (!currentTarget)
                    State = AIState.Scanning;
                
                if (ReadyToFire) {
                    AttackEnemy(currentTarget);
                }
                break;

            case AIState.Waiting:
                waitTimer -= Time.deltaTime;
                if (waitTimer < 0) {
                    State = AIState.Scanning;
                }
                break;
        }
	}

    GameObject ScanForTargets() {
        GameObject[] possibleTargets = GameObject.FindGameObjectsWithTag("Unit");
        LayerMask layerMask = 1 << LayerMask.NameToLayer("Terrain");
        float closestDistance = Mathf.Infinity;
        GameObject closestTarget = null;

        foreach(GameObject target in possibleTargets) {

            Debug.Log("Scanning " + target.name);

            if (target.name.Contains(unitControl.TeamName)) continue;
            Debug.Log(target.name + " is on the other team");

            UnitControl targetControl = target.GetComponent<UnitControl>();
            if (!targetControl || targetControl.IsDead) continue;
            Debug.Log(target.name + " is not dead");

            float targetDistance = Vector3.Distance(
                target.transform.position, 
                transform.position
            );
            if (targetDistance > visualRange) continue;
            Debug.Log(target.name + " is in visual range");

            if (closestTarget && closestDistance < targetDistance) continue;
            Debug.Log(target.name + " is the closest target");

            Ray ray = new Ray(
                transform.position + (Vector3.up * 0.75f),
                (target.transform.position - transform.position).normalized
            );

            if (!Physics.Raycast(ray, targetDistance, layerMask)) {

                closestDistance = targetDistance;
                closestTarget = target;
            }
        }
        if (closestTarget) 
            Debug.Log(closestTarget.name + " is the closest target");

        return closestTarget;
    }

    void AttackEnemy(GameObject target) {
        unitAttack.ShouldBeAiming = true;
        unitAttack.AimingDirection = 
            (target.transform.position - transform.position).normalized;
        
        if (ReadyToFire && 
            Vector3.Dot(unitAttack.FiringDirection, unitAttack.AimingDirection)
            > 0.95f) {

            if (unitAttack.Attack(true)) {
                burstCount--;
                if (burstCount <= 0) {
                    burstCount = burstLength + Random.Range(-2, 2);
                    firingCoolDown = firingCoolDownTime + Random.Range(-0.5f, 0.5f);
                } 
            }
        } 
    }

    public void HitTarget(UnitControl victim) {
        
    }
    public void KilledTarget(UnitControl victim) {
        if (victim.gameObject.Equals(currentTarget)) {
            currentTarget = null;
            if (State == AIState.Attacking)
                State = AIState.Scanning;
        }
    }
}
