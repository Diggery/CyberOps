using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIState : MonoBehaviour {

    protected AIController ai;
    protected GameManager gameManager;
    protected UnitControl unitControl;
    protected UnitAttack unitAttack;
    protected UnitMover unitMover;
    protected MapControl mapControl;

    protected bool isActive = false;
    public bool IsActive {
        get { return IsActive; }
        set { IsActive = value; }
    }

    protected string stateName = "none";
    public string StateName {
        get { return stateName; }
    }


    public virtual void StateInit() {
        gameManager = GameManager.Instance;
        ai = GetComponent<AIController>();
        unitControl = GetComponent<UnitControl>();
        unitAttack = GetComponent<UnitAttack>();
        unitMover = GetComponent<UnitMover>();
        mapControl = gameManager.ActiveMap;
    }

    public virtual void StateEnter() {
        isActive = true;
        Debug.Log("------>  Entering " + stateName + " state.");
    }

    public virtual void StateUpdate() {

    }

    public virtual void StateExit() {
        isActive = false;
        Debug.Log("------>  Exiting " + stateName + " state.");
    }
}
