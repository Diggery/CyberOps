using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class UnitControl : MonoBehaviour {

    GameManager gameManager;
    CameraControl cameraControl;

    Animator animator;
    UnitMover unitMover;
    UnitAttack unitAttack;

    RagdollControl ragdollControl;

    UnityEngine.AI.NavMeshAgent navAgent;

    public Transform AttachRightHand { get; set; }
    public Transform AttachLeftHand { get; set; }
    public Transform AttachRightBack { get; set; }
    public Transform AttachLeftBack { get; set; }

    public string TempPrimaryWeapon = "AssaultRifle";
    public string TempSecondaryWeapon = "";

    public string teamName = "Team1";
    public string TeamName {
        get { return teamName; }
        set {
            teamName = value;
            gameObject.name += "_" + teamName;
        }
    }

    public bool startAsPlayer = false;
    protected bool isPlayer;
    public bool IsPlayer {
        get { return this == gameManager.ActiveUnit; }
    }

    protected bool isDead;
    public bool IsDead {
        get { return isDead; }
    }

    public bool IsMoving {
        get { return unitMover.IsMoving; }
    }

    float hitPoint;
    float maxHits = 10;

    public void Init() {
        gameManager = GameManager.instance;
        cameraControl = gameManager.CameraControl;

        gameObject.tag = "Unit";
        gameObject.layer = LayerMask.NameToLayer("Units");

        CapsuleCollider collision = gameObject.AddComponent<CapsuleCollider>();
        collision.radius = 0.1f;
        collision.height = 1.8f;
        collision.center = new Vector3(0.0f, 1.0f, 0.0f);

        animator = GetComponent<Animator>();

        unitMover = gameObject.AddComponent<UnitMover>();
        unitMover.Init();
        unitAttack = gameObject.AddComponent<UnitAttack>();
        unitAttack.Init();

        TeamName = teamName;

        if (!TempSecondaryWeapon.Equals(""))
            AddWeapon(TempSecondaryWeapon);


        hitPoint = maxHits;

        RagdollConfig ragdollConfig = gameObject.AddComponent<RagdollConfigCombot>();
        if (ragdollConfig)
            ragdollControl = ragdollConfig.Init();

        if (startAsPlayer)
            gameManager.ActiveUnit = this;

        AddWeapon(TempPrimaryWeapon);
    }

    void Update() {
        if (isDead)
            return;

        if (!animator) animator = GetComponent<Animator>();
        animator.SetFloat("Random", Random.value);
    }


    public bool AddWeapon(string weaponName) {

        if (!AttachRightBack) {
            Debug.Log("Missing an attachPoint");
            return false;
        }

        Debug.Log("Getting " + weaponName + " for " + gameObject.name);
        GameObject weaponObj = gameManager.GetEquipment(weaponName);
        Weapon weapon = weaponObj.GetComponent<Weapon>();

        weaponObj.transform.SetParent(AttachRightBack, false);

        if (weapon) {
            weapon.Init(this);
            unitAttack.AddWeapon(weapon, !weapon.isSecondary);
            unitAttack.DrawWeapon(weapon);

            if (weapon.animOverride) {
                animator.runtimeAnimatorController = weapon.animOverride;
            }
        } else {
            return false;
        }
        return true;
    }

    public void MoveTo(Vector3 pos) {
        unitMover.MoveTo(pos);
    }
    public void MoveComplete() {
        //cameraControl.Move(transform.position);
    }

    public void ResetCamera(Vector3 pos) {
        cameraControl.MoveTo(pos);
    }

    public void TakeDamage(DamageInfo damageInfo) {
        if (isDead && damageInfo.hitTarget) {
            Rigidbody target = damageInfo.hitTarget.GetComponent<Rigidbody>();
            if (target) {
                target.GetComponent<Rigidbody>().AddForce(
                    (damageInfo.GetDamageDirection(transform) * -5) + (Vector3.up * 10),
                    ForceMode.VelocityChange
                );
            }
        }

        //animator.SetTrigger("GetHit" + damageInfo.GetOrthagonalDirectionName(transform));
        hitPoint -= damageInfo.damageAmount;
        Debug.Log("Hit Points now " + damageInfo.damageAmount);

        if (!isDead && hitPoint < 0) {
            ragdollControl.SwitchToRagdoll(
                damageInfo.GetDamageDirection(transform),
                damageInfo.hitTarget
            );

            Die();
        }
    }


    public void Die() {
        isDead = true;
        unitAttack.DropWeapons();
    }

    public void Die(Vector3 dir) {
        ragdollControl.SwitchToRagdoll(dir);
        Die();
    }
}
