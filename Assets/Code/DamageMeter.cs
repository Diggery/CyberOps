using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DamageMeter : MonoBehaviour {

    public Color fullColor;
    public Color fullOutline;
    public Color damagedColor;
    public Color warningOutline;
    public Color warningColor;
    public Color emergencyColor;
    public AnimationCurve pulseCurve;
    float pulseTimer = 0.0f;

    enum DisplayState { full, damaged, warning, emergency }
    DisplayState currentState = DisplayState.full;

    RectTransform rectTransform;
    Image upperMeter;
    Image lowerMeter;

    float amount = 0.5f;
    public float Amount {
        set {
            amount = Mathf.Clamp01(value);
            SetPos();

            if (amount >= 1.0f) {
                currentState = DisplayState.full;
                upperMeter.material.SetColor("_Outline", fullOutline);
                upperMeter.material.SetColor("_Fill", fullColor);
                lowerMeter.material.SetColor("_Outline", fullOutline);
                lowerMeter.material.SetColor("_Fill", fullColor);
            } else if (amount < 1.0f && amount > 0.5f) {
                currentState = DisplayState.damaged;
                upperMeter.material.SetColor("_Outline", fullOutline);
                upperMeter.material.SetColor("_Fill", fullColor);
                lowerMeter.material.SetColor("_Outline", fullOutline);
                lowerMeter.material.SetColor("_Fill", damagedColor);
            } else if (amount < 0.5f && amount > 0.25f) {
                currentState = DisplayState.warning;
                upperMeter.material.SetColor("_Outline", warningOutline);
                upperMeter.material.SetColor("_Fill", damagedColor);
                lowerMeter.material.SetColor("_Outline", warningOutline);
                lowerMeter.material.SetColor("_Fill", warningColor);
            } else {
                currentState = DisplayState.emergency;
                upperMeter.material.SetColor("_Outline", warningOutline);
                upperMeter.material.SetColor("_Fill", damagedColor);
                lowerMeter.material.SetColor("_Outline", warningOutline);
                lowerMeter.material.SetColor("_Fill", emergencyColor);
            }
        }
    }

	void Start () {
        rectTransform = GetComponent<RectTransform>();
        upperMeter = transform.Find("Upper").GetComponent<Image>();
        lowerMeter = transform.Find("Lower").GetComponent<Image>();
        Amount = 1.0f;

        upperMeter.material = Instantiate(upperMeter.material);
        lowerMeter.material = Instantiate(lowerMeter.material);
	}
	
	void Update () {
        if (currentState == DisplayState.emergency) {
            pulseTimer += Time.deltaTime;
            if (pulseTimer > 1.0f)
                pulseTimer--;
            float pulse = pulseCurve.Evaluate(pulseTimer);
            Color pusleColor = Color.Lerp(warningOutline, emergencyColor, pulse);
            upperMeter.material.SetColor("_Outline", pusleColor);
            lowerMeter.material.SetColor("_Outline", pusleColor);
        }
	}

    void SetPos() {
        float margin = 4.0f;
        float hieght = rectTransform.sizeDelta.y - (margin * 2);

        float amountFilled = hieght * amount;
        float amountEmpty = hieght - amountFilled;
        upperMeter.rectTransform.sizeDelta = new Vector2(0, -amountFilled - margin);
        lowerMeter.rectTransform.sizeDelta = new Vector2(0, -amountEmpty - margin);
    }
}
