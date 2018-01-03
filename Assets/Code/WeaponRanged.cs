using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponRanged : Weapon {

    GameObject projectilePrefab;

    public enum FiringMode { Single, Burst, Auto };
    public FiringMode mode = FiringMode.Single;

    ScopeControl scope;
    public ScopeControl Scope {
        get { return scope; }
    }

    Transform muzzle;
    MuzzleFlash muzzleFlash;
    Vector3 firingPosition;

    public override Vector3 FiringPosition {
        get {
            if (type == WeaponType.Ranged && muzzle)
                return muzzle.position;

            return transform.position;
        }
    }

    public override Vector3 FiringDirection {
        get {
            if (type == WeaponType.Ranged && muzzle)
                return muzzle.forward;

            return transform.forward;
        }
    }

    public override bool IsReady {
        get { 
            bool isReady = base.IsReady;

            if (reloadTimer > 0) 
                isReady = false;
            
            if (rounds <= 0) 
                isReady = false;
            
            return isReady; 
        }
    }

    int magazineSize = 10;
    int rounds = 0;
    float reloadTime = 1.0f;
    float reloadTimer = 0.0f;


    public override void Init (UnitControl _owner) {
        base.Init(_owner);
        type = WeaponType.Ranged;
        projectilePrefab = gameManager.GetPrefab("Projectile");
        muzzle = transform.Find("Muzzle");
        GameObject muzzleFlashObj = Instantiate(gameManager.GetPrefab("MuzzleFlash"), muzzle);
        muzzleFlash = muzzleFlashObj.GetComponent<MuzzleFlash>();

        rounds = magazineSize;

        if (hasScope && _owner.IsPlayer) {
            GameObject scopeCamObj = Instantiate(gameManager.GetPrefab("ScopeCam"), muzzle);
            scope = scopeCamObj.AddComponent<ScopeControl>();
            scopeCamObj.transform.localRotation = Quaternion.identity;
        }
    }

    protected override void Update () {
        base.Update();
        if (reloadTimer > 0) {
            reloadTimer -= Time.deltaTime;
            if (reloadTimer < 0) {
                Reload();
            }
        }
    }

    public override void Stowed() {
        base.Stowed();
        if (hasScope) {
            scope.IsActive = false;
        }
    }

    public override void Drawn() {
        base.Drawn();

    }        

    public override void Activate() {
        base.Activate();
        if (hasScope) {
            scope.IsActive = true;
        }
    }

    public override void Attack() {
        base.Attack();

        muzzleFlash.Flash();

        GameObject projectile = Instantiate(projectilePrefab, FiringPosition, transform.rotation) as GameObject;
        Vector3 aimingDirection = FiringDirection;

        DamageInfo damageInfo = new DamageInfo(damage, DamageType.Puncture, owner);
        projectile.GetComponent<Projectile>().Init(owner, aimingDirection, range, damageInfo);

        rounds--;

        if (rounds <= 0)
            EjectMagazine();

    }

    public void EjectMagazine() {
        reloadTimer = reloadTime;
        Debug.Log("Ejecting Magazine");
    }
    public void Reload() {
        rounds = magazineSize;
        Debug.Log("Reloaded");

    }
}
