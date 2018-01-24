using UnityEngine;
using System.Collections;

public class CombotPart : MonoBehaviour {

    public enum Type {SetUp, Arms, Legs, Head, Torso}

    public RuntimeAnimatorController animOverride;

    Type partType = Type.SetUp;
    public Type PartType {
        get { return partType; }
    }

    protected UnitControl unitControl;
    public SkeletonControl Skeleton { get; set; }

    CombotPart partPair;

    public float maxHealth;
    public float armor;
    float currentHealth;

    public void Setup(UnitControl _unitControl, Type newType, float newMaxHealth, float newArmor) {
        unitControl = _unitControl;
        partType = newType;
        maxHealth = newMaxHealth;
        armor = newArmor;
    }


    public virtual void Init () {
        if (animOverride != null) {
            unitControl.gameObject.GetComponent<Animator>().runtimeAnimatorController = animOverride;
        }
        currentHealth = maxHealth;
	}

    public void SetPair(CombotPart pair) {
        partPair = pair;
    }
	
    protected virtual void Update () {
	
	}

    public virtual float AbsorbDamage(DamageInfo info) {
        float damage = info.damageAmount;
        damage *= 1 - (armor / 10.0f);
        currentHealth -= damage;
        if (partType != Type.Torso && currentHealth < 0)
            Skeleton.EjectPart(this);
        
        return damage;
    }
}
