using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIStateMoving : AIState {

    public override void StateInit() {
        base.StateInit();
        stateName = "Moving";
    }

    public override void StateEnter() {
        base.StateEnter();

        unitAttack.ShouldBeAiming = false;

        if (!unitControl.IsMoving)
            ai.MoveToBetterPositon();
    }

    public override void StateUpdate() {
        base.StateUpdate();

        if (!unitMover.IsMoving)
            ai.State = "Waiting";
    }

    public override void StateExit() {
        base.StateExit();

    }
}
