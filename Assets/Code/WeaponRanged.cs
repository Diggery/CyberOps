using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeaponRanged : Weapon {

    GameObject projectilePrefab;

    ScopeControl scope;
    public ScopeControl Scope {
        get { return scope; }
    }

    Transform muzzle;
    MuzzleFlash muzzleFlash;
    Vector3 firingPosition;

    public float verticleSpray = 0;
    public float horizontalSpray = 0;

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

    public override bool InUse {
        get { return inUse; }
        set { 
            inUse = value;
            if (weaponUI) weaponUI.IsOpen = inUse;
        }
    }

    Transform magazine;

    int magazines = 0;
    public int Magazines {
        get { return magazines; }
    }

    int magazineSize = 30;
    int rounds = 0;
    float reloadTime = 3.0f; //this is a failsafe
    float reloadTimer = 0.0f;

    public bool needsUI = true;
    WeaponUI weaponUI;

    public override void Init (UnitControl _owner) {
        base.Init(_owner);
        type = WeaponType.Ranged;
        projectilePrefab = gameManager.GetPrefab("Projectile");
        muzzle = transform.Find("Muzzle");
        GameObject muzzleFlashObj = Instantiate(gameManager.GetPrefab("MuzzleFlash"), muzzle);
        muzzleFlash = muzzleFlashObj.GetComponent<MuzzleFlash>();
        magazine = transform.Find("Magazine");
        rounds = magazineSize;

        if (_owner.IsPlayer) {
            if (hasScope) {
                GameObject scopeCamObj = Instantiate(gameManager.GetPrefab("ScopeCam"), muzzle);
                scope = scopeCamObj.AddComponent<ScopeControl>();
                scopeCamObj.transform.localRotation = Quaternion.identity;               
            }

            if (needsUI) {
                GameObject weaponUIObj = Instantiate(gameManager.GetPrefab("WeaponUI"));
                weaponUI = weaponUIObj.GetComponent<WeaponUI>();
                weaponUI.Init(this);
            }
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

    public override void AddWeaponFlash() {
        base.AddWeaponFlash();
        weaponFlash.transform.SetParent(muzzle, false);
    }

    public void AddMagazines(int amount) {
        magazines = amount;
        if (weaponUI) weaponUI.Magazines = magazines;
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

        GameObject projectile = Instantiate(
            projectilePrefab, 
            FiringPosition, 
            transform.rotation
        ) as GameObject;

        Vector3 aimingDirection = FiringDirection;

        float vOffset = Random.Range(-verticleSpray, verticleSpray);
        aimingDirection = Quaternion.AngleAxis(vOffset, Vector3.right) * aimingDirection;
        float hOffset = Random.Range(-horizontalSpray, horizontalSpray);
        aimingDirection = Quaternion.AngleAxis(hOffset, Vector3.up) * aimingDirection;

        DamageInfo damageInfo = new DamageInfo(damage, DamageType.Puncture, owner);
        projectile.GetComponent<Projectile>().Init(owner, aimingDirection, range, damageInfo);

        rounds--;
        if (weaponUI) weaponUI.Rounds = rounds;

        if (rounds <= 0)
            EjectMagazine();

        if (weaponFlash) {
            weaponFlash.color = Color.Lerp(Color.white, Color.yellow, Random.value);
            weaponFlash.enabled = true;
            weaponFlash.intensity = 5;
        }

    }

    public void EjectMagazine() {

        GameObject oldMag = Instantiate(magazine.gameObject, 
                                        magazine.position, 
                                        magazine.rotation);
        oldMag.GetComponent<BoxCollider>().enabled = true;
        Rigidbody oldMagRB = oldMag.GetComponent<Rigidbody>();
        oldMagRB.isKinematic = false;
        oldMagRB.AddRelativeForce(-Vector3.up, ForceMode.Impulse);
        oldMagRB.AddRelativeTorque(Vector3.forward, ForceMode.Impulse);

        magazine.GetComponent<Renderer>().enabled = false;

        if (magazines == 0) {
            return;
        }
        magazines--;
        if (weaponUI) weaponUI.UseMagazine();

        owner.TriggerReload();
        reloadTimer = reloadTime;
        Debug.Log("Ejecting Magazine");
    }

    public override void Reload() {
        reloadTimer = -1f;
        rounds = magazineSize;
        if (weaponUI) weaponUI.Rounds = rounds;

        magazine.GetComponent<Renderer>().enabled = true;

        Debug.Log("Reloaded");
    }
}
