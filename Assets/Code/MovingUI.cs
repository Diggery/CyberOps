using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingUI : MonoBehaviour {

    MapControl mapControl;

    Renderer circleRenderer;

    Transform line;
    Renderer lineRenderer;

    Transform player;



    public bool isVisible = false;
    public bool IsVisible {
        get { return isVisible; }
        set {
            if (value != isVisible) {
                isVisible = value;
                circleRenderer.enabled = isVisible;
                lineRenderer.enabled = isVisible;
            }
        }
    }

    Vector3 posGoal; 

    public void Init(Transform _player) {
        player = _player;
        circleRenderer = GetComponent<Renderer>();

        line = transform.Find("Line");
        lineRenderer = line.GetComponent<Renderer>();
        mapControl = GameManager.instance.ActiveMap;

	}
	
	void Update () {
        if (isVisible) {
            transform.position = 
                Vector3.Lerp(transform.position, posGoal, Time.deltaTime * 15);
            transform.rotation = 
                Quaternion.LookRotation(player.position - transform.position);
        }
	}

    public void SetPos(Vector3 pos) {
        if (!isVisible) {
            transform.position = pos;
            transform.rotation = Quaternion.LookRotation(player.position - transform.position);
        }

        IsVisible = true;
        posGoal = mapControl.GetData(pos).position;
        line.localScale = new Vector3(1.0f, 1.0f, Vector3.Distance(player.position, transform.position));
    }
}
