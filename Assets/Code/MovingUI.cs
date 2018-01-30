using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingUI : MonoBehaviour {

    public Color uiColor;

    MapControl mapControl;

    Renderer circleRenderer;

    Transform line;
    Renderer lineRenderer;
    Transform tile;

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
        tile = transform.Find("Tile");
        lineRenderer = line.GetComponent<Renderer>();
        mapControl = GameManager.Instance.ActiveMap;

	}
	
	void Update () {
        if (isVisible) {

            transform.position = 
                Vector3.Lerp(transform.position, posGoal, Time.deltaTime * 15);
            transform.rotation = 
                Quaternion.LookRotation(player.position - transform.position);

            tile.position = posGoal + new Vector3(0, -0.025f, 0);
            tile.rotation = Quaternion.identity;
        }
	}

    public void SetPos(Vector3 pos) {
        if (!isVisible) {
            transform.position = pos;
            transform.rotation = 
                Quaternion.LookRotation(player.position - transform.position);
        }

        IsVisible = true;
        posGoal = mapControl.GetData(pos).position + new Vector3(0, 0.05f, 0);
        line.localScale = new Vector3(1.0f, 1.0f, 
            Vector3.Distance(player.position, transform.position)
        );

        circleRenderer.material.color = uiColor;
        lineRenderer.material.color = uiColor;

    }
}
