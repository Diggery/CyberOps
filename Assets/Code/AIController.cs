using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIController : MonoBehaviour {

    GameManager gameManager;
    UnitControl unitControl;
    UnitAttack unitAttack;
    MapControl mapControl;

    UnitControl currentTarget;
    public UnitControl CurrentTarget {
        get { return currentTarget; }
        set { currentTarget = value; }
    }

    float visualRange = 15.0f;

    public bool ReadyToFire {
        get {
            return firingCoolDown < 0;
        }
    }

    int burstLength = 10;
    int burstCount = 10;
    float burstOffsetAngle = 0;
    float burstIncrementAngle = 0;
    Vector3 burstOffsetAxis = Vector3.zero;
    float firingCoolDownTime = 3.0f;
    float firingCoolDown = -1.0f;



    int hitShots = 0;

    Dictionary<string, AIState> states = new Dictionary<string, AIState>();
    AIState currentState;
    public string State {
        get{
            return currentState.StateName;
        }
        set{
            if (states.ContainsKey(value)) {
                if (currentState) currentState.StateExit();
                currentState = states[value];
                currentState.StateEnter();
            } else {
                Debug.Log("There is no state called " + value);
            }
        }
    }

	void Start () {
        gameManager = GameManager.Instance;
        unitAttack = GetComponent<UnitAttack>();
        unitControl = GetComponent<UnitControl>();
        mapControl = gameManager.ActiveMap;

        AIStateWaiting aiStateWaiting = gameObject.AddComponent<AIStateWaiting>();
        aiStateWaiting.StateInit();
        states.Add(aiStateWaiting.StateName, aiStateWaiting);

        AIStateMoving aiStateMoving = gameObject.AddComponent<AIStateMoving>();
        aiStateMoving.StateInit();
        states.Add(aiStateMoving.StateName, aiStateMoving); 

        AIStateAttacking aiStateAttacking = gameObject.AddComponent<AIStateAttacking>();
        aiStateAttacking.StateInit();
        states.Add(aiStateAttacking.StateName, aiStateAttacking);

        State = "Waiting";
	}
	
	void Update () {
        if (firingCoolDown > 0) {
            firingCoolDown -= Time.deltaTime;
        }

        currentState.StateUpdate();
	}

    public UnitControl ScanForTargets() {
        return ScanForTargets(null);
    }

    public UnitControl ScanForTargets(UnitControl excludeThisGuy) {
        GameObject[] possibleTargets = GameObject.FindGameObjectsWithTag("Unit");
        LayerMask layerMask = 1 << LayerMask.NameToLayer("Terrain");
        float closestDistance = Mathf.Infinity;
        GameObject closestTarget = null;

        foreach(GameObject target in possibleTargets) {

            if (target.name.Contains(unitControl.TeamName)) continue;

            UnitControl targetControl = target.GetComponent<UnitControl>();
            if (!targetControl || targetControl.IsDead) continue;

            if (excludeThisGuy && excludeThisGuy.Equals(targetControl)) continue;

            float targetDistance = Vector3.Distance(
                target.transform.position, 
                transform.position
            );
            if (targetDistance > visualRange) continue;

            if (closestTarget && closestDistance < targetDistance) continue;

            Ray ray = new Ray(
                transform.position + (Vector3.up * 0.75f),
                (target.transform.position - transform.position).normalized
            );

            Debug.DrawRay( ray.origin, ray.direction * targetDistance, Color.green, 1.0f);

            bool canHit = false;
            if (!canHit) {
                MapCellData myCell = mapControl.GetData(transform.position);
                foreach (Vector3 otherPosition in myCell.ExtraFiringPositions) {
                    ray.origin = otherPosition;
                    canHit = !Physics.Raycast(ray, targetDistance, layerMask);
                    if (canHit) break;
                }            
            }

            if (canHit) {
                closestTarget = target;
                closestDistance = targetDistance;
            }
        }
        if (closestTarget) {
            UnitControl targetControl = closestTarget.GetComponent<UnitControl>();
            if (!targetControl)
                Debug.Log(closestTarget.name + " doesn't have a unitControl");

            return targetControl;
        } else {
            Debug.Log(transform.name + "'s scan found noone");
            return null;
        }
    }

    public void AttackEnemy(UnitControl target) {
        unitAttack.ShouldBeAiming = true;
        Vector3 targetPosition = target.TargetPos;

        Vector3 aimDirection = (targetPosition - unitAttack.FiringPosition).normalized;
        Quaternion burstRotation = Quaternion.AngleAxis(burstIncrementAngle, burstOffsetAxis);
        unitAttack.AimingDirection = burstRotation * aimDirection;

        Debug.DrawRay(unitAttack.FiringPosition, unitAttack.AimingDirection * 10, Color.red);
        Debug.DrawRay(unitAttack.FiringPosition, unitAttack.FiringDirection * 10, Color.green);

        float targetOffset = Vector3.Dot(unitAttack.FiringDirection, unitAttack.AimingDirection);

        if (ReadyToFire && targetOffset > 0.95f) {
            if (unitAttack.Attack(true)) {
                if (burstCount == burstLength) {
                    burstOffsetAngle = Vector3.Angle(
                        unitAttack.AimingDirection,
                        unitAttack.FiringDirection
                    );
                    burstOffsetAxis = Vector3.Cross(
                        unitAttack.FiringDirection,
                        unitAttack.AimingDirection
                    );
                }
                burstCount--;
                burstIncrementAngle = (((float)burstCount / (float)burstLength) * (burstOffsetAngle * 2));
                if (burstCount <= 0) {
                    if (hitShots == 0) {
                        Debug.Log("Didnt hit anything!");
                    }
                    burstCount = burstLength;
                    firingCoolDown = firingCoolDownTime + Random.Range(-0.5f, 0.5f);
                    hitShots = 0;
                } 
            }
        } 
    }

    public bool MoveToBetterPositon() {
        MapControl.SafePositionRequest posRequest = new MapControl.SafePositionRequest(
            transform.position, unitControl.TeamName, 5);
        posRequest.excludeCenter = true;
        MapCellData myCell = mapControl.GetData(transform.position);
        MapCellData safeCell = mapControl.GetSafestPosition(posRequest);

        if (safeCell.lastScoreCheck > mapControl.GetCellScore(myCell, unitControl.TeamName)) {
            unitControl.MoveTo(safeCell.position);
            Debug.Log("Moving to a better position");
            State = "Moving";
            return true;
        }
        return false;
    }

    public void HitTarget(UnitControl victim) {
        Debug.Log(transform.name + " hit " + victim.name);
        hitShots++;
    }
    public void KilledTarget(UnitControl victim) {
        Debug.Log(transform.name + " killed " + victim.name);

        if (victim.Equals(currentTarget)) {
            currentTarget = null;
            if (State == "Attacking")
                State = "Waiting";
        }
    }
}
