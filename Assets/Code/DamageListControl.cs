using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml;
using UnityEngine;

public class DamageListControl : MonoBehaviour {

    GameManager gameManager;

    public TextAsset damageStrings;
    readonly List<string> damageDescriptions = new List<string>();
    readonly List<string> headComponents = new List<string>();
    readonly List<string> genericComponents = new List<string>();

    public bool IsDamageListFull {
        get { return transform.childCount >= 8; }
    }


    RectTransform headArea;
    RectTransform torsoArea;
    RectTransform leftArmArea;
    RectTransform rightArmArea;
    RectTransform leftLegArea;
    RectTransform rightLegArea;

    void Start () {
        gameManager = GameManager.Instance;
        ParseDamageStringsFile(damageStrings.text);

        headArea = transform.parent.Find("CombotGrid/HeadMeter").GetComponent<RectTransform>();
        torsoArea = transform.parent.Find("CombotGrid/TorsoMeter").GetComponent<RectTransform>();
        leftArmArea = transform.parent.Find("CombotGrid/LeftArmMeter").GetComponent<RectTransform>();
        rightArmArea = transform.parent.Find("CombotGrid/RightArmMeter").GetComponent<RectTransform>();
        leftLegArea = transform.parent.Find("CombotGrid/LeftLegMeter").GetComponent<RectTransform>();
        rightLegArea = transform.parent.Find("CombotGrid/RightLegMeter").GetComponent<RectTransform>();
	}
	
	void Update () {
        if (Input.GetKeyDown(KeyCode.P)) {
            Debug.Log(AddEntry("Head"));
        }
	}

    public DamageEntry AddEntry(string fullName) {
        string partName = "Head";
        if (fullName.ToLower().Contains("arm")) {
            if (fullName.ToLower().Contains("left")) {
                partName = "Left Arm";
            } else {
                partName = "Right Arm";
            }

        } else if (fullName.ToLower().Contains("head")) {
            partName = "Head";
        } else if (fullName.ToLower().Contains("leg")) {
            if (fullName.ToLower().Contains("left")) {
                partName = "Left Leg";
            } else {
                partName = "Right Leg";
            }
        } else if (
            fullName.ToLower().Contains("hips") ||
            fullName.ToLower().Contains("torso")) {
            partName = "Torso";
        }

        GameObject obj = Instantiate(
            gameManager.GetPrefab("DamageUIEntry"), transform);
        DamageEntry entry = obj.GetComponent<DamageEntry>();

        string component =
            partName.ToLower().Contains("head") ?
                    headComponents[Random.Range(0, headComponents.Count)] :
                    genericComponents[Random.Range(0, genericComponents.Count)];


        string damageText = string.Format(
            "{0} {1} on {2}",
            damageDescriptions[Random.Range(0, damageDescriptions.Count)],
            component,
            partName
        ).ToLower();
        entry.Text = damageText.First().ToString().ToUpper() + damageText.Substring(1);

        RectTransform part;
        switch (partName) {
            case "Head" : 
                part = headArea;
                break;
            case "LeftArm":
                part = leftArmArea;
                break;
            case "RightArm":
                part = rightArmArea;
                break;
            case "LeftLeg":
                part = leftLegArea;
                break;
            case "RightLeg":
                part = rightLegArea;
                break;
            default :
                part = torsoArea;
                break;
        }

        entry.Marker.transform.SetParent(part.transform);
        Vector2 pos = new Vector2(
            Random.Range(0, headArea.sizeDelta.x),
            Random.Range(0, -headArea.sizeDelta.y)
        );
        entry.Marker.anchoredPosition = pos;

        return entry;
    }

    void ParseDamageStringsFile(string xmlData) {
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(new StringReader(xmlData));
        string xmlPathPattern;

        xmlPathPattern = "//Damage/Descriptions/item";
        foreach (XmlNode node in xmlDoc.SelectNodes(xmlPathPattern)) 
            damageDescriptions.Add(node.InnerText);

        xmlPathPattern = "//Damage/Components/Head/item";
        foreach (XmlNode node in xmlDoc.SelectNodes(xmlPathPattern))
            headComponents.Add(node.InnerText);

        xmlPathPattern = "//Damage/Components/Generic/item";
        foreach (XmlNode node in xmlDoc.SelectNodes(xmlPathPattern))
            genericComponents.Add(node.InnerText);
    }
}
