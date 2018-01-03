using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetAimingFlag : StateMachineBehaviour {

    UnitAttack unitAttack;

	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!unitAttack) unitAttack = animator.gameObject.GetComponent<UnitAttack>();
        unitAttack.IsAiming = true; 
	}

	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
        if (!unitAttack) unitAttack = animator.gameObject.GetComponent<UnitAttack>();
        unitAttack.IsAiming = false; 
	}
}
