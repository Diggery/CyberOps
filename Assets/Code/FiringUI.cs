using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FiringUI : MonoBehaviour {

    Vector3 blockedScale = new Vector3(0.25f, 0.25f, 0.25f);

    LineRenderer firingClear;
    LineRenderer firingBlocked;
    Transform noShotIcon;
    UnitAttack unitAttack;
    ScopeView scopeView;

    float hitRange = 0.0f;

    Transform nearCircle;
    Renderer nearCircleRend;
    Transform midCircle;
    Renderer midCircleRend;
    Transform farCircle;
    Renderer farCircleRend;
    Color circleColor = new Color(0.4f, 0.4f, 0.4f, 0.1f);

    bool isOpen = false;
    public bool IsOpen {
        get {
            return isOpen;
        }

        set {
            if (value == isOpen)
                return;
            
            isOpen = value;
            if (isOpen) {
                openTimer = 0.0f;
                nearCircleRend.enabled = true;
                midCircleRend.enabled = true;
                farCircleRend.enabled = true;
                firingClear.enabled = true;

                WeaponRanged currentWeapon = (WeaponRanged)unitAttack.GetWeapon();
                if (currentWeapon.hasScope)
                    scopeView.SetScope(currentWeapon.Scope);
                
            } else {
                openTimer = Mathf.Clamp01(openTimer);
                HideLines();
            }
        }
    }

    float openTimer = 0.0f;
    float openSpeed = 1.0f;
    public AnimationCurve openCurve;
    public AnimationCurve closeCurve;

    public float displayRange = 10.0f;

    InputControl inputControl;
    public InputControl Input { 
        get { return inputControl; }
        set { 
            inputControl = value; 
            unitAttack = inputControl.Player.GetComponent<UnitAttack>();
        }
    }

    public Vector3 ScopeAttachPos {
        get {  return midCircle.position; } 
    }

	void Start () {
        firingClear = transform.Find("FiringLine_Clear").GetComponent<LineRenderer>();
        firingBlocked = transform.Find("FiringLine_Blocked").GetComponent<LineRenderer>();
        noShotIcon = transform.Find("Icon_NoShot");
        nearCircle = transform.Find("NearCircle");
        nearCircleRend = nearCircle.GetComponent<Renderer>();
        midCircle = transform.Find("MidCircle");
        midCircleRend = midCircle.GetComponent<Renderer>();
        farCircle = transform.Find("FarCircle");
        farCircleRend = farCircle.GetComponent<Renderer>();
        Transform scopeViewTransform = transform.Find("ScopeView");
        scopeView = scopeViewTransform.GetComponent<ScopeView>();
        HideLines();
	}

    void Update() {
        if (isOpen) {
            DrawLines();
            nearCircle.Rotate(Vector3.forward, 10 * Time.deltaTime, Space.Self);
            midCircle.Rotate(Vector3.forward, -45 * Time.deltaTime, Space.Self);
            farCircle.Rotate(Vector3.forward, 90 * Time.deltaTime, Space.Self);
        } else {
            if (inputControl && inputControl.IsAiming)
                DrawTempLines();
        }

        if (openTimer >= 0 && openTimer <= 1) {
            openTimer += Time.deltaTime / (isOpen ? openSpeed : -openSpeed);

            float amount = isOpen ?
                openCurve.Evaluate(openTimer) : closeCurve.Evaluate(openTimer);

            float nearScale = Mathf.Lerp(2.0f, 1.5f, amount);
            nearCircle.localScale = Vector3.one * nearScale;
            float midScale = Mathf.Lerp(2.0f, 1.0f, amount);
            midCircle.localScale = Vector3.one * midScale;
            float farScale = Mathf.Lerp(2.0f, 0.5f, amount);
            farCircle.localScale = Vector3.one * farScale;

            Color fadeColor = Color.Lerp(Color.black, circleColor, amount);
            nearCircleRend.material.SetColor("_TintColor", fadeColor);
            midCircleRend.material.SetColor("_TintColor", fadeColor * 1.5f);
            farCircleRend.material.SetColor("_TintColor", fadeColor * 2.0f);
            if (openTimer <= 0 && openTimer >= 1) {
                nearCircleRend.enabled = false;
                midCircleRend.enabled = false;
                farCircleRend.enabled = false;
            }
        }
        scopeView.ShowScope = openTimer >= 1.0f;
    }

    public void ShowLines() {
        IsOpen = true;
    }

    void DrawTempLines() {
        Vector3 firingPos = unitAttack.FiringPosition;
        firingClear.SetPosition(0, firingPos);
        firingClear.SetPosition(1, firingPos + unitAttack.FiringDirection * 10);
        firingClear.enabled = true;
        firingClear.material.color = Color.white;//Lerp(Color.clear, Color.white, amount);
    }

    void DrawLines() {
        Vector3 firingPos = unitAttack.FiringPosition;
        Vector3 aimingDir = unitAttack.FiringDirection;

        transform.position = firingPos;
        transform.rotation = Quaternion.LookRotation(aimingDir);

        Vector3 endPos = firingPos + (aimingDir * displayRange);
        Ray firingRay = new Ray(firingPos, aimingDir);

        RaycastHit hit;
        if (Physics.Raycast(firingRay, out hit, displayRange)) {
            hitRange = Mathf.Lerp(hitRange, hit.distance, Time.deltaTime * 5.0f);
            ShotBlocked(true);
            firingClear.SetPosition(0, firingPos);
            firingClear.SetPosition(1, hit.point);

            firingBlocked.SetPosition(0, hit.point);
            firingBlocked.SetPosition(1, endPos);

            noShotIcon.position = hit.point;
            noShotIcon.rotation = Quaternion.LookRotation(hit.normal);
            noShotIcon.localScale = blockedScale;
        } else {
            hitRange = Mathf.Lerp(hitRange, displayRange, Time.deltaTime * 5.0f);
            ShotBlocked(false);
            firingClear.SetPosition(0, firingPos);
            firingClear.SetPosition(1, endPos);
        }

        //place circles
        float transAmount = openCurve.Evaluate(openTimer);
        Vector3 hitPos = firingPos + (aimingDir * hitRange);

        nearCircle.position = Vector3.Lerp(
            firingPos, hitPos,
            transAmount * 0.1f
        );

        midCircle.position = firingPos + (aimingDir * Mathf.Min(5, hitRange));

        farCircle.position = Vector3.Lerp(
            firingPos, hitPos,
            transAmount * 0.9f
        );
    }

    public void HideLines() {
        IsOpen = false;
        firingClear.enabled = false;
        firingBlocked.enabled = false;
        noShotIcon.gameObject.SetActive(false);
    }

    void ShotBlocked(bool setting) {
        if (noShotIcon.gameObject.activeSelf != setting) {
            noShotIcon.gameObject.SetActive(setting);
        }
        firingBlocked.enabled = setting;
    }
}
