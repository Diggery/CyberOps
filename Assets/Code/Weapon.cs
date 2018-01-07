using UnityEngine;
using System.Collections;

public class Weapon : MonoBehaviour {

    public float range = 2.0f;
    public float attacksPerSecond = 1.0f;
    public bool isSecondary = false;
    public bool hasScope = false;

    public enum WeaponType { Melee, Ranged }
    protected WeaponType type = WeaponType.Melee;
    public WeaponType Type {
        get { return type; }
    }

    public enum FiringMode { Single, Auto };
    public FiringMode mode = FiringMode.Single;

    public RuntimeAnimatorController animOverride;

    protected UnitControl owner;
    protected GameManager gameManager;

    public bool hasWeaponFlash = false;
    protected Light weaponFlash;

    bool isEquipped = false;
    public bool IsEquipped {
        get {
            return isEquipped;
        }
    }

    public virtual bool IsReady {
        get { 
            bool isReady = true;
            if (coolDownTimer > 0) {
                isReady = false;
            }
            return isReady; 
        }
    }

    protected bool inUse = false;
    public virtual bool InUse {
        get { return inUse; }
        set { inUse = value; }
    }

    protected float damage = 1.0f;
    float coolDown = 0.15f;
    protected float coolDownTimer = 0.0f;

    float activateDelay = 1.0f;
    float activateTimer = -1.0f;



    public virtual Vector3 FiringPosition {
        get{
            return transform.position;
        }
    }

    public virtual Vector3 FiringDirection {
        get {
            return transform.forward;
        }
    }
   
    public virtual void Init (UnitControl _owner) {
        owner = _owner;
        if (!_owner.IsPlayer)
            hasScope = false;
        
        gameManager = GameManager.instance;
        coolDown = 1 / attacksPerSecond;
        Debug.Log(owner.name + " recieved an " + gameObject.name);
        if (hasWeaponFlash) Invoke("AddWeaponFlash", 0.1f);
	}

    public virtual void AddWeaponFlash() {
        weaponFlash = new GameObject("WeaponFlash").AddComponent<Light>();
        weaponFlash.type = LightType.Point;
        weaponFlash.color = new Color(1.0f, 0.8f, 0.0f, 1.0f);
        weaponFlash.range = 3.0f;
        weaponFlash.transform.SetParent(transform);
        weaponFlash.transform.localPosition = new Vector3(0, 0, 0.25f);
    }

	
	protected virtual void Update () {
        if (coolDownTimer > 0)
            coolDownTimer -= Time.deltaTime;
        
        if (activateTimer > 0) {
            activateTimer -= Time.deltaTime;
            if (activateTimer < 0)
                Activate();
        }

        if (hasWeaponFlash && weaponFlash && weaponFlash.enabled) {
            weaponFlash.intensity = 
                Mathf.Lerp(weaponFlash.intensity, 0.0f, Time.deltaTime * 8);
            
            if (weaponFlash.intensity < 0.05f)
                weaponFlash.enabled = false;
        }
	}

    public virtual void Stowed() {
        isEquipped = false;
    }

    public virtual void Drawn() {
        isEquipped = true;
        activateTimer = activateDelay;
    }        

    public virtual void Activate() {
        Debug.Log(gameObject.name + " is Activated");
    }

    public virtual void Deactivate() {
        Debug.Log(gameObject.name + " is Deactivated");
    }

    public virtual void Attack() {
        coolDownTimer = coolDown;
    }

    public virtual void Reload() {
    }

    public virtual void Drop() {
        Deactivate();
        isEquipped = false;
        owner = null;
        transform.SetParent(null);
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.isKinematic = false;
        Vector3 torque = new Vector3(
            Random.Range(-1.0f, 1.0f),
            Random.Range(-1.0f, 1.0f),
            Random.Range(-1.0f, 1.0f)
        );
        rb.AddTorque(torque * 10, ForceMode.VelocityChange);
        GetComponent<BoxCollider>().enabled = true;
        Debug.Log("Dropping " + gameObject.name);

    }
}
