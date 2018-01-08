using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIStateWaiting : AIState {
    
    float waitDuration = 3.0f;
    float waitTimer = 0;

    public override void StateInit() {
        base.StateInit();
        stateName = "Waiting";
    }

    public override void StateEnter() {
        base.StateEnter();
        unitAttack.ShouldBeAiming = false;

        UnitControl newTarget = ai.ScanForTargets();

        if (newTarget && !ai.MoveToBetterPositon()) {
            ai.CurrentTarget = newTarget;
            ai.State = "Attacking";
        }

        waitTimer =
            waitDuration + Random.Range(-waitDuration * 0.25f, waitDuration * 0.25f);

    }

    public override void StateUpdate() {
        base.StateUpdate();

        waitTimer -= Time.deltaTime;
        if (waitTimer < 0) {
            waitTimer = waitDuration - Random.Range(0.0f, 1.0f);
            float currentScore = mapControl.GetCellScore(
                transform.position,
                unitControl.TeamName
            );

            if (currentScore < 3) {
                Debug.Log("Too dangerous, moving");
                ai.State = "Moving";
                return;
            }
            ai.CurrentTarget = ai.ScanForTargets();
            if (ai.CurrentTarget) ai.State = "Attacking";
        }
    }

    public override void StateExit() {
        base.StateExit();
    }
}
