using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MainUIControl : MonoBehaviour {


    bool isOpen = false;

    float lastCamUpAngle = -1.0f;

    float recenterCoolDown = 1.0f;

    UIPanelControl[] panels;

    DamageListControl damageList; 

    void Start () {
        isOpen = false;
        panels = GetComponentsInChildren<UIPanelControl>();
        damageList = transform.Find(
            "CombotStatusPivot/CombotStatusPanel/DamageList"
        ).GetComponent<DamageListControl>();
	}
	
	void Update () {
        if (recenterCoolDown > 0) 
            recenterCoolDown -= Time.deltaTime;
        
        Transform mainCam = Camera.main.transform;
        transform.position = mainCam.position;
        float camUpAngle = Vector3.Dot(mainCam.forward, Vector3.up);

        if (!isOpen && camUpAngle > 0 && lastCamUpAngle < 0)
            Open();
        
        if (isOpen && camUpAngle < 0 && lastCamUpAngle > 0)
            Close();

        lastCamUpAngle = camUpAngle;
	}

    void Open() {
        isOpen = true;
        foreach (var panel in panels) panel.IsOpen = true;
        if (recenterCoolDown <= 0) {
            float cameraHeading = Camera.main.transform.eulerAngles.y;
            transform.rotation = Quaternion.AngleAxis(cameraHeading, Vector3.up);
        }
    }

    void Close() {
        isOpen = false;
        foreach (var panel in panels) panel.IsOpen = false;   

        recenterCoolDown = 1.0f;
    }

    public void AddDamageUI(CombotPart part) {
        if (!damageList.IsDamageListFull) {
            DamageEntry entry = damageList.AddEntry(part.name);
            part.AddDamageMarker(entry);

        }
    }
}
