using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;
using System.IO;


public class GenerateMapData {

    [MenuItem("CyberKnight/Generate Map Data")]
    public static void BuildMapData () {
        GameObject map = GameObject.Find("Map");
        MapControl mapControl = map.GetComponent<MapControl>();
        mapControl.Init();

        if (!mapControl) {
            Debug.Log("Can't find the gameobject called 'Map' with a mapControl on it.");
        } 
        Vector2 mapSize = mapControl.GetMapSize();

        mapControl.mapData = new MapCellData[Mathf.FloorToInt(mapSize.x) * Mathf.FloorToInt(mapSize.y)];
        FillOutMapData(mapControl);

        EditorUtility.SetDirty(mapControl);
    }

    [MenuItem("CyberKnight/Test LOS")]
    public static void TestLOS() {
        GameObject map = GameObject.Find("Map");
        MapControl mapControl = map.GetComponent<MapControl>();
        mapControl.Init();

        TestLOSForCell(new Vector3(0,0,0), mapControl);
    }

    [MenuItem("CyberKnight/Test Area")]
    public static void TestArea() {
        GameObject map = GameObject.Find("Map");
        MapControl mapControl = map.GetComponent<MapControl>();
        mapControl.Init();

        mapControl.TestData(mapControl.GetMapArea(Vector3.zero, 5));
    }


    static void FillOutMapData(MapControl mapControl) {

        Vector2 mapSize = mapControl.GetMapSize();
        Vector3 mapCenter = mapControl.transform.position - new Vector3(mapSize.x / 2, 0, mapSize.y / 2);

        Debug.Log("mapSize is " + mapSize);
        Debug.Log("MapCenter is " + mapCenter);

        for (int x = 0; x < mapSize.x; x++) {
            for (int y = 0; y < mapSize.y; y++) {

                MapCellData mapCell = new MapCellData();
                mapCell.gridSize = mapControl.gridSize;

                RaycastHit hit;
                Ray ray = new Ray(new Vector3((x) * mapControl.gridSize, 10.0f, (y) * mapControl.gridSize) + mapCenter, Vector3.down);

                LayerMask terrainMask = 1 << LayerMask.NameToLayer("Terrain");
                if (Physics.Raycast(ray, out hit, Mathf.Infinity, terrainMask)) {
                    mapCell.position = hit.point;
                    mapCell.Cover = GetCover(mapCell.position, mapControl.gridSize);

                    if (hit.transform.tag.Equals("HighCover") || hit.transform.tag.Equals("LowCover")) {
                        mapCell.CurrentStatus = MapCellData.CellStatus.Collision;
                    }
                }

                int xPos = Mathf.FloorToInt(x);
                int yPos = Mathf.FloorToInt(y);


                mapControl.mapData[yPos * Mathf.FloorToInt(mapSize.x) + xPos] = mapCell;
                DrawDebug(mapCell);

            }
        }

        //Second Pass for line of sight data
        for (int x = 0; x < mapSize.x; x++) {
            for (int y = 0; y < mapSize.y; y++) {
                Vector2 mapCoor = new Vector2(x, y);
                MapCellData thisCell = mapControl.GetData(mapCoor);
                if (thisCell == null) {
                    Debug.Log("No Cell Data");
                    continue;
                }
                if (thisCell.CurrentStatus == MapCellData.CellStatus.Collision)
                    continue;

                List<MapCellData> targetCells = mapControl.GetMapArea(mapCoor);
                foreach (MapCellData targetCell in targetCells) {
                    if (CheckLOS(targetCell.position, thisCell.position)) {
                        if (!thisCell.AttackablePositions.Contains(targetCell.position))
                            thisCell.AttackablePositions.Add(targetCell.position);
                    }
                    foreach (Vector3 extraPos in thisCell.ExtraFiringPositions) {
                        if (CheckLOS(targetCell.position, extraPos) && 
                            !CheckLOS(targetCell.position, thisCell.position)) {
                            thisCell.ExtraAttackablePositions.Add(targetCell.position);
                        }
                    }
                }
            }
        }
    }

    static void TestLOSForCell(Vector3 mapPos, MapControl mapControl) {
        MapCellData thisCell = mapControl.GetData(mapPos);
        if (thisCell == null)
            Debug.Log("No Cell Data");
        List<MapCellData> targetCells = mapControl.GetMapArea(mapPos);
        foreach (MapCellData targetCell in targetCells) {
            if (CheckLOS(targetCell.position, thisCell.position, true)) {
                thisCell.AttackablePositions.Add(targetCell.position);
            }
        }
        Debug.Log("Adding " + thisCell.AttackablePositions.Count + " positions for " + thisCell.position);       
    }

    static MapCellData.CoverType[] GetCover(Vector3 mapPoint, float gridSize) {
        MapCellData.CoverType north = MapCellData.CoverType.None;
        MapCellData.CoverType east = MapCellData.CoverType.None;
        MapCellData.CoverType west = MapCellData.CoverType.None;
        MapCellData.CoverType south = MapCellData.CoverType.None;
        mapPoint.y += (0.25f * gridSize);
        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Terrain");
        RaycastHit hit;

        if (Physics.Raycast(mapPoint, Vector3.forward, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "HighCover") north = MapCellData.CoverType.High;
            if (hit.transform.tag == "LowCover") north = MapCellData.CoverType.Low;
        }

        if (Physics.Raycast(mapPoint, Vector3.right, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "HighCover") east = MapCellData.CoverType.High;
            if (hit.transform.tag == "LowCover") east = MapCellData.CoverType.Low;
        }

        if (Physics.Raycast(mapPoint, Vector3.back, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "HighCover") south = MapCellData.CoverType.High;
            if (hit.transform.tag == "LowCover") south = MapCellData.CoverType.Low;
        }

        if (Physics.Raycast(mapPoint, Vector3.left, out hit, 1.0f * gridSize, terrainMask)) {
            if (hit.transform.tag == "HighCover") west = MapCellData.CoverType.High;
            if (hit.transform.tag == "LowCover") west = MapCellData.CoverType.Low;
        }

        MapCellData.CoverType[] cover = new MapCellData.CoverType[4];

        cover[0] = north;
        cover[1] = east;
        cover[2] = south;
        cover[3] = west;

        return cover;
    }

    static bool CheckLOS(Vector3 startPos, Vector3 endPos) {
        return CheckLOS(startPos, endPos, false);
    }

    static bool CheckLOS(Vector3 startPos, Vector3 endPos, bool drawLine) {
        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Terrain");
        bool hitSomething = Physics.Linecast(startPos + Vector3.up * 0.75f,
                                 endPos + Vector3.up * 0.75f,
                                 terrainMask);
        if (drawLine)
            Debug.DrawLine(startPos, endPos, hitSomething ? Color.white : Color.red, 10);
        return !hitSomething;
    }

    static void DrawDebug(MapCellData mapCell) {
        if (mapCell.CurrentStatus == MapCellData.CellStatus.Collision) {
            Debug.DrawLine(mapCell.position, mapCell.position + Vector3.up, Color.red, 20);
        } else if (mapCell.HasCover){
            Vector3 direction = Quaternion.AngleAxis(90 * mapCell.Direction, Vector3.up) * Vector3.forward;
            Vector3 origin = mapCell.position + Vector3.up;
            Debug.DrawLine(origin, origin + direction, Color.green, 20);
        } else {
            Debug.DrawLine(mapCell.position, mapCell.position + Vector3.up, Color.white, 20);
        }
    }
}