using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

public class GameManager : MonoBehaviour {

    CameraControl cameraControl;
    public CameraControl CameraControl {
        set { cameraControl = value; }
        get { return cameraControl; }
    }

    InputControl inputControl;
    public InputControl InputControl {
        set { inputControl = value; }
        get { return inputControl; }
    }

    UnitControl activeUnit;
    public UnitControl ActiveUnit {
        set { 
            activeUnit = value; 
            CameraControl.MoveTo(activeUnit.transform.position);
        }
        get { return activeUnit; }
    }

    MapControl mapControl;
    public MapControl ActiveMap {
        get { 
            if (!mapControl)
                mapControl = GameObject.FindGameObjectWithTag("Map").GetComponent<MapControl>();
            return mapControl; 
        }
    }

    float gridSize = 5.0f;
    public float GridSize {
        set { gridSize = value; }
        get { return gridSize; }
    }

    public InventoryObject inventory;
    public PartsInventory partsInventory;

    MainUIControl uiControl;

    static GameManager instance;

    public static GameManager Instance {
        get { return instance; }
    }

    private void CreateInstance() {
        if (instance == null) {
            instance = this;
        } else {
            Destroy(this.gameObject);
        }
    }

    void Awake() {
        CreateInstance();
        CameraControl = GameObject.Find("GvrRoot").GetComponent<CameraControl>();
        Invoke("AddInputControl", 0.1f);
        uiControl = GameObject.Find("GameUIRoot").GetComponent<MainUIControl>();
    }

    void AddInputControl() {
        inputControl = gameObject.AddComponent<InputControl>();
        inputControl.Init();        
    }

    void Start () {
    }

    public GameObject GetCombotPart(string name) {
        return partsInventory.GetPart(name);
    }

    public GameObject GetPrefab(string name) {
        return inventory.GetPrefab(name);
    }

    public GameObject GetEquipment(string name) {
        return inventory.GetEquipment(name);
    }

    public void UnitHit(UnitControl unitControl, CombotPart part) {
        if (unitControl.IsPlayer) {
            uiControl.AddDamageUI(part);
        }
    }
}

