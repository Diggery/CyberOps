using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class WeaponUI : MonoBehaviour {

    WeaponRanged weapon;

    CanvasGroup canvas;
    Image background; 
    Text ammoCount; 
    Image magazineIcon; 
    List<Image> extraMagazines = new List<Image>();

    bool isOpen = false;
    public bool IsOpen {
        get { return isOpen; }
        set { 
            isOpen = value;
            canvas.alpha = isOpen ? 1 : 0;
            connector.enabled = isOpen;
        }
    }

    public int Rounds {
        set {
            ammoCount.text = value.ToString();
            UIColor = Color.white;
            ammoCount.color = value == 0 ? Color.red : Color.white;
        }
    }

    public int Magazines {
        set {
            if (extraMagazines.Count != value) {
                extraMagazines.Clear();
                for (int i = 0; i < value; i++) {
                    Image newMag = Instantiate(
                        magazineIcon,
                        magazineIcon.transform.parent
                    ) as Image;
                    newMag.color = new Color(1.0f, 0.8f, 0.0f, 0.5f);
                    extraMagazines.Add(newMag);
                    PositionMagazines();
                }
            }
        }
    }

    Color startColor = new Color(1.0f, 0.8f, 0.0f);
    Color uiColor = Color.white;
    public Color UIColor {
        get { return uiColor; }
        set {
            uiColor = 
            background.color = 
            connectorDot.color = 
            connector.material.color = 
            magazineIcon.color = value;
        }
    }

    Vector2 magazineHomePos = new Vector2(20.0f, 0.0f);
    Vector2 magazineExtraPos = new Vector2(24.0f, -1.5f);

    LineRenderer connector;
    Image connectorDot; 

    Vector3 weaponOffset = new Vector3(0.3f, 0.2f, -0.5f);

    Color clearColor = new Color(1, 1, 1, 0);

    public void Init (WeaponRanged parent) {
        weapon = parent;
        background = transform.Find("Background").GetComponent<Image>();
        ammoCount = transform.Find("AmmoCount").GetComponent<Text>();
        magazineIcon = transform.Find("MagazineIcon").GetComponent<Image>();
        canvas = GetComponent<CanvasGroup>();
        connector = transform.Find("Line").GetComponent<LineRenderer>();
        connectorDot = transform.Find("Dot").GetComponent<Image>();


        IsOpen = false;
        UIColor = startColor;
	}
	
	void Update () {

        if (isOpen) {
            Vector3 cameraRelative =
                Camera.main.transform.InverseTransformPoint(weapon.FiringPosition);
            Vector3 posGoal =
                Camera.main.transform.TransformPoint(cameraRelative + weaponOffset);

            transform.position =
                Vector3.Lerp(transform.position, posGoal, Time.deltaTime * 3);

            connector.SetPosition(0, weapon.FiringPosition);
            connector.SetPosition(1, transform.position);

            UIColor = Color.Lerp(UIColor, startColor, Time.deltaTime * 5);            
        }
	}

    void PositionMagazines() {
        for (int i = 0; i < extraMagazines.Count; i++) {
            Vector2 magPos = magazineExtraPos;
            magPos.x += i * 3.0f;
            extraMagazines[i].rectTransform.anchoredPosition = magPos;
            extraMagazines[i].rectTransform.sizeDelta = new Vector2(3.0f, 6.0f);
            extraMagazines[i].name = "ExtraMagazine" + i; 
        }
    }

    public void UseMagazine() {

        Image oldMagazine = extraMagazines[0];
        extraMagazines.Remove(oldMagazine);
        Destroy(oldMagazine.gameObject);
        PositionMagazines();
    }

}
