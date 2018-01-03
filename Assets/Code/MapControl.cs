using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapControl : MonoBehaviour {
    
    [SerializeField]
    public MapCellData[] mapData;

    public float gridSize = 1.0f;
    Vector2 mapSize = new Vector2(10,10);
    Vector3 centerOffset = new Vector3(0,0,0);

    public GameObject testMarker;
    public GameObject testMarkerEmpty;
    public GameObject testMoveMarker;


	void Start () {
        mapSize = GetMapSize();
        centerOffset = transform.position - new Vector3(mapSize.x/2, 0, mapSize.y/2);
	}
	
	void Update () {
        if (Input.GetKeyUp(KeyCode.X)) 
            TestMap();
	}

    public Vector2 GetMapSize() {
        BoxCollider mapFloor = GetComponent<BoxCollider>();

        return new Vector2(mapFloor.size.x, mapFloor.size.z); 
    }
     
   public MapCellData GetData(Vector3 mapPos) {
        Vector2 coor = MapPosToCoor(mapPos);

        int xPos = Mathf.RoundToInt(coor.x);
        int yPos = Mathf.RoundToInt(coor.y);

        int index = yPos * Mathf.FloorToInt(mapSize.x) + xPos;
        if (index < 0 || index > mapData.Length - 1) {
            Debug.Log("Map Position: " + mapPos.x + ", " + mapPos.y + " is off the map");
        }
        return mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos];
    }

    public Vector3 CoorToMapPos(Vector2 coor) {
        return new Vector3(coor.x * gridSize , transform.position.y, coor.y * gridSize) + centerOffset;
    }

    public Vector2 MapPosToCoor(Vector3 MapPos) {
        return new Vector2(MapPos.x / gridSize, MapPos.z / gridSize) - new Vector2(centerOffset.x, centerOffset.z);
    }

    void TestMap() {
        foreach(MapCellData data in mapData) {
            if (data.HasCover()) {
                Instantiate(testMarker, data.position, data.rotation);
            } else {
                Instantiate(testMarkerEmpty, data.position, data.rotation);
            }
        }
    }
}
