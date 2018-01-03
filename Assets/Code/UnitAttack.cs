using UnityEngine;
using System.Collections;

public class UnitAttack : MonoBehaviour {

    UnitControl unitControl;
    Animator animator;
    InputControl inputControl;

    float attackCoolDown = 0.0f;

    public bool useAbsoluteDirection = true;

    float aimOffset = 0.0f;

    bool isAiming = false; 
    public bool IsAiming { 
        get { return isAiming; }
        set { 
            isAiming = value; 
            attackCoolDown = 0.2f;
        }
    }

    public bool CanAttack {
        get {
            bool canAttack = false;

            if (primaryWeapon || secondaryWeapon)
                canAttack = true;

            if (unitControl.IsMoving)
                canAttack = false;

            if (attackCoolDown > 0)
                canAttack = false;
            
            return canAttack;
        }
    }

    public bool HasMelee {
        get {
            bool hasMelee = false;
            if (primaryWeapon && primaryWeapon.Type == Weapon.WeaponType.Melee)
                hasMelee = true;
            
            if (secondaryWeapon && secondaryWeapon.Type == Weapon.WeaponType.Melee)
                hasMelee = true;

            return hasMelee;
        }
    }

    public bool HasRanged {
        get {
            bool hasRanged = false;
            if (primaryWeapon && primaryWeapon.Type == Weapon.WeaponType.Ranged)
                hasRanged = true;
            
            if (secondaryWeapon && secondaryWeapon.Type == Weapon.WeaponType.Ranged)
                hasRanged = true;

            return hasRanged;
        }
    }

    Vector3 firingOffset = Vector3.up;
    public Vector3 FiringPosition {
        get { 
            if (primaryWeapon && primaryWeapon.IsEquipped)
                return primaryWeapon.FiringPosition;

            return transform.position + firingOffset;
        }
    }

    public Vector3 FiringDirection {
        get {
            if (primaryWeapon && primaryWeapon.IsEquipped)
                return primaryWeapon.FiringDirection;

            return transform.forward;
        }
    }

    Weapon currentWeapon;
    Weapon primaryWeapon;
    Weapon secondaryWeapon;

    public void Init () {
        unitControl = GetComponent<UnitControl>();
        animator = GetComponent<Animator>();
        inputControl = GameManager.instance.InputControl;
    }

    void Update () {

        if (attackCoolDown > 0)
            attackCoolDown -= Time.deltaTime;

        animator.SetBool("Aiming", inputControl.IsAiming);

        Vector3 absoluteDir = inputControl.ControllerDirection;
        Vector3 controllerDir = inputControl.ReticleDirection;

        Vector3 aimingDirection = transform.InverseTransformDirection(
            useAbsoluteDirection ? absoluteDir : controllerDir
        );
            
        float inclinationAngle = Vector3.Angle(
            new Vector3(aimingDirection.x, 0, aimingDirection.z).normalized,
            aimingDirection
        );

        inclinationAngle *= Mathf.Sign(Vector3.Dot(Vector3.up, aimingDirection));

        float heading = (Mathf.Atan(aimingDirection.x / aimingDirection.z)) 
            * Mathf.Rad2Deg;

        if (aimingDirection.z < 0) {
            heading += 180 * Mathf.Sign(aimingDirection.x);
        }

        float normalizedAltitude = Mathf.InverseLerp(-20, 20, inclinationAngle);
        normalizedAltitude = (normalizedAltitude * 2) - 1;

        if (aimOffset > 0)
            aimOffset = Mathf.Clamp01(aimOffset - 0.025f);

        Vector2 aimGoal = new Vector2(heading, normalizedAltitude);

        animator.SetFloat ("Horizontal", aimGoal.x);

        animator.SetFloat ("Vertical", aimGoal.y + aimOffset);
    }

    public void Attack() {
        if (!CanAttack || !primaryWeapon || !primaryWeapon.IsReady || !IsAiming)
            return;
        primaryWeapon.Attack();
        aimOffset = 0.15f;

    }

    public Weapon GetWeapon() {
        if (primaryWeapon && primaryWeapon.IsEquipped)
            return primaryWeapon;

        if (secondaryWeapon && secondaryWeapon.IsEquipped)
            return secondaryWeapon;

        return null;
    }

    public void AddWeapon(Weapon weapon, bool isPrimary) {
        if (isPrimary)
            primaryWeapon = weapon;
        else
            secondaryWeapon = weapon;
    }

    public void DrawWeapon(Weapon weapon) {
        if (weapon != primaryWeapon && weapon != secondaryWeapon)
            Debug.Log(gameObject.name + " doesn't own a " + weapon.name);

        StowWeapon();
        currentWeapon = weapon;
        if (!unitControl.AttachRightHand)
            Debug.Log("Can't find the hand attach point");
        currentWeapon.transform.SetParent(unitControl.AttachRightHand);
        currentWeapon.transform.localPosition = Vector3.zero;
        currentWeapon.transform.localRotation = Quaternion.identity;
        currentWeapon.Drawn();
    }

    public void StowWeapon() {
        if (currentWeapon) {
            Transform attachPoint = currentWeapon.isSecondary ? unitControl.AttachLeftBack : unitControl.AttachRightBack;
            currentWeapon.transform.SetParent(attachPoint);
            currentWeapon.transform.localPosition = Vector3.zero;
            currentWeapon.transform.localRotation = Quaternion.identity;
            currentWeapon.Stowed();
            currentWeapon = null;
        }
    }

    public void DropWeapons() {
        if (primaryWeapon)
            primaryWeapon.Drop();

        if (secondaryWeapon)
            secondaryWeapon.Drop();       
    }
}
