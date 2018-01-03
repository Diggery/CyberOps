﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CombotConstructor : MonoBehaviour {


    public string headPrefab;
    public string torsoPrefab;
    public string armsPrefab;
    public string legsPrefab;

    Animator animator;
    Transform geoGroup;
    Transform skelGroup;
    Transform rootMotion;

    Transform leftArmAttach;
    Transform rightArmAttach;
    Transform leftLegAttach;
    Transform rightLegAttach;
    Transform headAttach;

    List<GameObject> partsToInitialize = new List<GameObject>();

    public Color combotColor = Color.white;

    GameManager gameManager;
    UnitControl unitControl;


    void Start() {
        Invoke("Init", 1.0f);
    }

	public void Init() {
        animator = GetComponent<Animator>();
        gameManager = GameManager.instance;
        unitControl = GetComponent<UnitControl>();
        Build();
        InitializeParts();
        StartCoroutine(BindAnimator());
	}
   
    IEnumerator BindAnimator() {
        yield return new WaitForEndOfFrame();
        animator.Rebind();
        UnitControl unitControl = GetComponent<UnitControl>();
        SetupAttachPoints(unitControl); 
        unitControl.Init();
        Destroy(this);
    }

    void Build() {
        geoGroup = new GameObject("Combot_Geometry").transform;
        geoGroup.SetParent(transform);
        geoGroup.localPosition = Vector3.zero;
        geoGroup.localRotation = Quaternion.identity;
        geoGroup.localScale = Vector3.one;

        skelGroup = new GameObject("Combot_Skeleton").transform;
        skelGroup.SetParent(transform);
        skelGroup.localPosition = Vector3.zero;
        skelGroup.localRotation = Quaternion.identity;
        skelGroup.localScale = Vector3.one;

        rootMotion = new GameObject("RootMotion_Skel").transform;
        rootMotion.SetParent(skelGroup);
        rootMotion.localPosition = Vector3.zero;
        rootMotion.localRotation = Quaternion.identity;
        rootMotion.localScale = Vector3.one;

        AddTorso();
        AddArms();
        AddLegs();
        AddHead();

        AddNameSpace(transform);
    }

    void InitializeParts() {
        foreach(GameObject part in partsToInitialize) {
            CombotPart partControl = part.GetComponent<CombotPart>();
            if (partControl) {
                partControl.Init(unitControl);
            }
        }
    }

    void AddTorso() {

        GameObject part = Instantiate(gameManager.GetCombotPart(torsoPrefab)) as GameObject;
        part.transform.position = transform.position;
        part.transform.rotation = transform.rotation;
        part.transform.localScale = transform.localScale;

        Transform rootSkel = part.transform.Find("Hips_Skel");
        rootSkel.SetParent(rootMotion, false);
        leftLegAttach = rootSkel.transform.Find("LeftUpperLeg_Skel");
        rightLegAttach = rootSkel.transform.Find("RightUpperLeg_Skel");
        leftArmAttach = rootSkel.transform.Find("Spine_Skel/Torso_Skel/LeftClav_Skel/LeftUpperArm_Skel");
        rightArmAttach = rootSkel.transform.Find("Spine_Skel/Torso_Skel/RightClav_Skel/RightUpperArm_Skel");
        headAttach = rootSkel.transform.Find("Spine_Skel/Torso_Skel/Neck_Skel/Head_Skel");

        Transform partGeo = part.transform.Find("Torso_Geo");
        partGeo.GetComponent<Renderer>().material.color = combotColor;
        partGeo.SetParent(geoGroup, false);
        Destroy(part);

        partsToInitialize.Add(rootSkel.gameObject);
    }

    void AddArms() {
        GameObject part = Instantiate(gameManager.GetCombotPart(armsPrefab)) as GameObject;
        part.transform.position = transform.position;
        part.transform.rotation = transform.rotation;
        part.transform.localScale = transform.localScale;

        Transform partSkel = part.transform.Find("LeftUpperArm_Skel");
        partSkel.SetParent(leftArmAttach.parent);
        Destroy(leftArmAttach.gameObject);

        Transform partGeo = part.transform.Find("LeftArm_Geo");
        partGeo.SetParent(geoGroup);

        partSkel = part.transform.Find("RightUpperArm_Skel");
        partSkel.SetParent(rightArmAttach.parent);
        Destroy(rightArmAttach.gameObject);

        partGeo = part.transform.Find("RightArm_Geo");
        partGeo.SetParent(geoGroup);
        Destroy(part);

        partsToInitialize.Add(partSkel.gameObject);
    }

    void AddLegs() {
        GameObject part = Instantiate(gameManager.GetCombotPart(legsPrefab)) as GameObject;
        part.transform.position = transform.position;
        part.transform.rotation = transform.rotation;
        part.transform.localScale = transform.localScale;

        Transform leftSkel = part.transform.Find("LeftUpperLeg_Skel");
        if (!leftSkel) Debug.Log("Can't Find LeftUpperLeg_Skel");
        leftSkel.SetParent(leftLegAttach.parent);
        Destroy(leftLegAttach.gameObject);

        Transform rightSkel = part.transform.Find("RightUpperLeg_Skel");
        rightSkel.SetParent(rightLegAttach.parent);
        Destroy(rightLegAttach.gameObject);

        Transform partGeo = part.transform.Find("Legs_Geo");
        partGeo.SetParent(geoGroup);
        Destroy(part);

        partsToInitialize.Add(rightSkel.gameObject);

    }

    void AddHead() {
        GameObject part = Instantiate(gameManager.GetCombotPart(headPrefab)) as GameObject;
        part.transform.position = transform.position;
        part.transform.rotation = transform.rotation;
        part.transform.localScale = transform.localScale;

        Transform partSkel = part.transform.Find("Head_Skel");
        if (!partSkel) Debug.Log("Can't Find Head_Skel");
        if (!headAttach) Debug.Log("Can't Find headAttach");

        partSkel.SetParent(headAttach.parent);
        partSkel.SetAsFirstSibling();
        Destroy(headAttach.gameObject);

        Transform partGeo = part.transform.Find("Head_Geo");
        partGeo.SetParent(geoGroup);
        Destroy(part);

        partsToInitialize.Add(partSkel.gameObject);


    }

    void AddNameSpace(Transform hierarchy) {
        Transform[] allChildren = GetComponentsInChildren<Transform>();
        foreach (Transform child in allChildren) {
            
            if (!child.parent)
                continue;
            
            if (!child.name.Contains("Combot:"))
                child.name = "Combot:" + child.name;
        }
    }

    void SetupAttachPoints(UnitControl unitControl) {
        string pathToLeftBackAttach = 
            "Combot:Combot_Skeleton/" +
            "Combot:RootMotion_Skel/" +
            "Combot:Hips_Skel/" +
            "Combot:Spine_Skel/" +
            "Combot:Torso_Skel/" +
            "Combot:LeftBack_Attach"; 
        Transform attachLeftBack = transform.Find(pathToLeftBackAttach);
        if (!attachLeftBack)
            Debug.Log("Can't find " + pathToLeftBackAttach);


        string pathToRightBackAttach = 
            "Combot:Combot_Skeleton/" +
            "Combot:RootMotion_Skel/" +
            "Combot:Hips_Skel/" +
            "Combot:Spine_Skel/" +
            "Combot:Torso_Skel/" +
            "Combot:RightBack_Attach"; 
        Transform attachRightBack = transform.Find(pathToRightBackAttach);
        if (!attachRightBack)
            Debug.Log("Can't find " + pathToRightBackAttach);

        string pathToLeftHandAttach = 
            "Combot:Combot_Skeleton/" +
            "Combot:RootMotion_Skel/" +
            "Combot:Hips_Skel/" +
            "Combot:Spine_Skel/" +
            "Combot:Torso_Skel/" +
            "Combot:LeftClav_Skel/" +
            "Combot:LeftUpperArm_Skel/" +
            "Combot:LeftLowerArm_Skel/" +
            "Combot:LeftHand_Skel/" +
            "Combot:LeftHand_Attach";
        Transform attachLeftHand = transform.Find(pathToLeftHandAttach);
        if (!attachLeftHand)
            Debug.Log("Can't find " + pathToLeftHandAttach);

        string pathToRightHandAttach = 
            "Combot:Combot_Skeleton/" +
            "Combot:RootMotion_Skel/" +
            "Combot:Hips_Skel/" +
            "Combot:Spine_Skel/" +
            "Combot:Torso_Skel/" +
            "Combot:RightClav_Skel/" +
            "Combot:RightUpperArm_Skel/" +
            "Combot:RightLowerArm_Skel/" +
            "Combot:RightHand_Skel/" +
            "Combot:RightHand_Attach";
        Transform attachRightHand = transform.Find(pathToRightHandAttach);
        if (!attachRightHand)
            Debug.Log("Can't find " + pathToRightHandAttach);

        unitControl.AttachRightHand = attachRightHand;
        unitControl.AttachLeftHand = attachLeftHand;
        unitControl.AttachLeftBack = attachLeftBack;
        unitControl.AttachRightBack = attachRightBack;

    }
}