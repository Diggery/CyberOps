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

    string unitName;
    public string teamName = "Team1";
    public string TeamName {
        get { return teamName; }
        set {
            teamName = value;
            unitName = gameObject.name;
            gameObject.name += "_" + teamName;
        }
    }

    public bool startAsPlayer = false;
    public bool addAI = false;
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

    AIController aiControl;

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

        hitPoint = maxHits;

        RagdollConfig ragdollConfig = gameObject.AddComponent<RagdollConfigCombot>();
        if (ragdollConfig)
            ragdollControl = ragdollConfig.Init();

        if (startAsPlayer)
            gameManager.ActiveUnit = this;

        if (addAI)
            aiControl = gameObject.AddComponent<AIController>();

        InventoryObject.PlayerEntry playerData = 
            gameManager.inventory.GetPlayerEntry(unitName);
        if (playerData == null) {
            Debug.Log("No PlayerData Found, Adding It");
            playerData = new InventoryObject.PlayerEntry();
            playerData.name = unitName;
            playerData.primaryWeapon = "AssaultRifle";
            playerData.primaryMagazines = 2;

            gameManager.inventory.AddPlayerEntry(playerData);
        }

        AddWeapon(playerData.primaryWeapon, playerData.primaryMagazines);
        AddWeapon(playerData.secondaryWeapon, playerData.secondaryMagazines);
    }

    void Update() {
        if (isDead)
            return;

        if (!animator) animator = GetComponent<Animator>();
        animator.SetFloat("Random", Random.value);
    }

    public bool AddWeapon(string weaponName) {
        return AddWeapon(weaponName, 0);
    }

    public bool AddWeapon(string weaponName, int mags) {

        if (string.IsNullOrEmpty(weaponName))
            return false;

        if (!AttachRightBack) {
            Debug.Log("Missing an attachPoint");
            return false;
        }

        Debug.Log("Getting " + weaponName + " for " + gameObject.name);
        GameObject weaponObj = gameManager.GetEquipment(weaponName);
        if (!weaponObj)
            return false;

        Weapon weapon = weaponObj.GetComponent<Weapon>();

        weaponObj.transform.SetParent(AttachRightBack, false);

        if (weapon) {
            weapon.Init(this);
            unitAttack.AddWeapon(weapon, !weapon.isSecondary);
            unitAttack.DrawWeapon(weapon);

            WeaponRanged weaponRanged = weaponObj.GetComponent<WeaponRanged>();
            if (weaponRanged) {
                weaponRanged.AddMagazines(mags);
            }

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

        if (!isDead && hitPoint < 0) {
            ragdollControl.SwitchToRagdoll(
                damageInfo.GetDamageDirection(transform),
                damageInfo.hitTarget
            );
            if (damageInfo.attacker) 
                damageInfo.attacker.AttackResults("Kill", this);
            Die();
        } else {
            if (damageInfo.attacker) 
                damageInfo.attacker.AttackResults("Hit", this);
        }
    }

    public void AttackResults(string result, UnitControl target) {
        switch (result) {
            case "Hit":
                if (aiControl) aiControl.HitTarget(target);
                break;
            case "Kill":
                if (aiControl) aiControl.KilledTarget(target);
                break;
        }
    }

    public void TriggerReload() {
        animator.SetTrigger("Reload");
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
