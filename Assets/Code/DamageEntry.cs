using UnityEngine;
using TMPro;

public class DamageEntry : MonoBehaviour {

    public TextMeshProUGUI desc;
    public RectTransform marker;

    public string Text {
        get { return desc.text; }
        set { desc.text = value; }
	}

    public RectTransform Marker {
        get { return marker; }
    }

    CombotPart part;
    public CombotPart Part {
        get { return part; }
        set { part = value; }
    }

    public void Remove() {
        Debug.Log("Fixing " + Text);
        if (part) part.RemoveDamageMarker(this);
        Destroy(marker.gameObject);
        Destroy(gameObject);
    }
}
