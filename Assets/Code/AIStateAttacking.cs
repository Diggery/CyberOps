using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIStateAttacking : AIState {

    public override void StateInit() {
        base.StateInit();
        stateName = "Attacking";
    }

    public override void StateEnter() {
        base.StateEnter();
        unitAttack.ShouldBeAiming = true;


    }

    public override void StateUpdate() {
        base.StateUpdate();
        if (!ai.CurrentTarget || ai.CurrentTarget.IsDead) {
            Debug.Log("No target to attack!");
            ai.State = "Waiting";
            return;
        }

        if (ai.ReadyToFire) {
            ai.AttackEnemy(ai.CurrentTarget);
        }
    }

    public override void StateExit() {
        base.StateExit();
    }
}
