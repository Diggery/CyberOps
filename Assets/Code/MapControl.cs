using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class MapControl : MonoBehaviour {
    
    [SerializeField]
    public MapCellData[] mapData;

    public float gridSize = 1.0f;
    Vector2 mapSize = new Vector2(10,10);
    Vector3 centerOffset = new Vector3(0,0,0);
    public float visualRange = 8;

    public GameObject testMarker;
    public GameObject testMarkerEmpty;
    public GameObject testMoveMarker;


	void Start () {
        Init();
	}

    public void Init() {
        mapSize = GetMapSize();
        centerOffset = transform.position - new Vector3(mapSize.x / 2, 0, mapSize.y / 2);        
    }
	
	void Update () {
        if (Input.GetKeyUp(KeyCode.X)) 
            TestCellScores(GetMapArea(new Vector3(0, 0, 0), 10.0f, true));

        if (Input.GetKeyUp(KeyCode.C))
            TestLOS(new Vector3(0, 0, 0));

        if (Input.GetKeyUp(KeyCode.V))
            TestData(GetMapArea(Vector3.zero));

	}

    public Vector2 GetMapSize() {
        BoxCollider mapFloor = GetComponent<BoxCollider>();

        return new Vector2(mapFloor.size.x, mapFloor.size.z); 
    }

    public MapCellData GetData(Vector3 mapPos) {
        Vector2 mapCoor = MapPosToCoor(mapPos);
        Debug.Log("mapPos " + mapPos + " is mapCoor " + mapCoor);
        return GetData(mapCoor);
    }

    public MapCellData GetData(Vector2 mapCoor) {
        int xPos = Mathf.RoundToInt(mapCoor.x);
        int yPos = Mathf.RoundToInt(mapCoor.y);

        int index = yPos * Mathf.FloorToInt(mapSize.x) + xPos;
        if (index < 0 || index > mapData.Length - 1) {
            Debug.Log("Map Position: " + mapCoor.x + ", " + mapCoor.y + " is off the map");
        }
        return mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos];
    }

    public Vector3 CoorToMapPos(Vector2 coor) {
        return new Vector3(coor.x * gridSize , transform.position.y, coor.y * gridSize) + centerOffset;
    }

    public Vector2 MapPosToCoor(Vector3 mapsPos) {
        return new Vector2(mapsPos.x / gridSize, mapsPos.z / gridSize) - new Vector2(centerOffset.x, centerOffset.z);
    }

    public List<MapCellData> GetMapArea(Vector2 mapCoor) {
        return GetMapArea(CoorToMapPos(mapCoor), visualRange, true);
    }

    public List<MapCellData> GetMapArea(Vector3 mapPos) {
        return GetMapArea(mapPos, visualRange, true);
    }

    public List<MapCellData> GetMapArea(Vector3 mapPos, float range) {
        return GetMapArea(mapPos, range, false);
    }

    public List<MapCellData> GetMapArea(Vector3 mapPos, float range, bool circular) {
        Vector2 coor = MapPosToCoor(mapPos);
        int xPos = Mathf.FloorToInt(coor.x);
        int yPos = Mathf.FloorToInt(coor.y);

        int cellRange = Mathf.RoundToInt(range);

        int startX = Mathf.Max(xPos - cellRange, 0);
        int startY = Mathf.Max(yPos - cellRange, 0);
        int endX = Mathf.Min(xPos + cellRange, Mathf.FloorToInt(mapSize.x) - 1);
        int endY = Mathf.Min(yPos + cellRange, Mathf.FloorToInt(mapSize.y) - 1);

        List<MapCellData> mapDataInRange = new List<MapCellData>();

        for (int y = startY; y <= endY; ++y) {
            for (int x = startX; x <= endX; ++x) {
                MapCellData newData = mapData[y * Mathf.FloorToInt(mapSize.x) + x];
                if (circular) {
                    float distance = Vector3.Distance(newData.position, mapPos);
                    if (distance > range) continue;
                }
                mapDataInRange.Add(newData);
            }           
        }
        return mapDataInRange;
    }

    public MapCellData GetSafestPosition(Vector3 mapPos, string teamName, float range) {
        MapCellData safestCell = null;
        float bestScore = 0;
        List<MapCellData> area = GetMapArea(mapPos, range);
        foreach (MapCellData cell in area) {
            if (cell.CurrentStatus == MapCellData.CellStatus.Collision)
                continue;
            
            float cellScore = GetCellScore(cell, teamName);
            if (cellScore > bestScore) {
                safestCell = cell;
                bestScore = cellScore;
            }
        }
        return safestCell;
    }

    public float GetCellScore(MapCellData mapCell, string teamName) {
        float score = 0.0f;

        if (mapCell.HasCover) score += 0.6f;
        if (mapCell.HasHighCover) score += 0.6f;

        GameObject[] attackers = GameObject.FindGameObjectsWithTag("Unit");

        foreach (GameObject attacker in attackers) {
            if (attacker.name.Contains(teamName)) continue;
                       
            MapCellData attackerCell = GetData(attacker.transform.position);
            float sqrDistance = (mapCell.position - attackerCell.position).sqrMagnitude;

            if (mapCell.AttackablePositions.Contains(attackerCell.position)) {
                if (sqrDistance < (16 * gridSize)) {
                    score -= 3.0f;
                } else if (sqrDistance < (32 * gridSize)) {
                    score -= 2.0f;
                } else {
                    score -= 1.0f;
                }
            }

            if (attackerCell.ExtraAttackablePositions.Contains(mapCell.position)) {
                if (sqrDistance < (16 * gridSize)) {
                    score -= 1.0f;
                } else if (sqrDistance < (32 * gridSize)) {
                    score -= 0.5f;
                } else {
                    score -= 0.25f;
                }
            }


            if (sqrDistance < (5 * gridSize)) {
                score -= 5.0f;
            }
        }

        return score;
    }

    public void TestData(List<MapCellData> testData) {
        foreach (MapCellData cell in testData) {
            GameObject testObj = null;
            if (cell.HasCover) {
                testObj = GameObject.CreatePrimitive(PrimitiveType.Sphere);
            } else {
                testObj = GameObject.CreatePrimitive(PrimitiveType.Cube);
            }
            testObj.transform.position = cell.position + (Vector3.up * 0.5f);
            testObj.transform.localScale = Vector3.one * 0.5f;
        }
    }


    void TestLOS(Vector3 mapPos) {
        MapCellData mapCell = GetData(mapPos);
        Debug.Log("Marking " + mapCell.AttackablePositions.Count + " spots");

        GameObject centerObj = GameObject.CreatePrimitive(PrimitiveType.Cube);
        centerObj.transform.position = mapPos + (Vector3.up * 1.0f);
        centerObj.transform.localScale = Vector3.one * 0.5f;

        foreach (Vector3 pos in mapCell.AttackablePositions) {
            GameObject testObj = GameObject.CreatePrimitive(PrimitiveType.Cube);
            testObj.transform.position = pos + (Vector3.up * 0.5f);
            testObj.transform.localScale = Vector3.one * 0.5f;
        }           
    }

    void TestCellScores(List<MapCellData> testData) {
        foreach (MapCellData cell in testData) {
            GameObject testObj = GameObject.CreatePrimitive(PrimitiveType.Cube);
            testObj.transform.position = cell.position + (Vector3.up * 0.5f);
            testObj.transform.localScale = Vector3.one * 0.5f;
            float amount = GetCellScore(cell, "xxx");

            Color scoreColor = Color.white;
            if (amount > 0) {
                scoreColor = Color.green;
            } else if (Mathf.Abs(amount) < Mathf.Epsilon) {
                scoreColor = Color.white;
            } else if (amount < 0 && amount >= -1) {
                scoreColor = Color.yellow;
            } else {
                scoreColor = Color.red;
            }
            testObj.GetComponent<Renderer>().material.color = scoreColor;
        }        
    }
}
