using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class MapCellData {

    public Vector3 position;

    public float gridSize = 1.0f;

    public Quaternion rotation {
        get {
            return Quaternion.AngleAxis(Direction * 90, Vector3.up);
        }
    }

    public int Direction {
        get {
            int direction = 0;
            int lowDirection = 0;
            foreach (CoverType coverDirection in cover) {
                if (coverDirection == CoverType.High)
                    return direction;
                if (coverDirection == CoverType.Low)
                    lowDirection = direction;
                direction++;
            }
            return lowDirection;             
        }
    }

    public enum CoverType { None, Low, High }
    public enum CellStatus { Open, Claimed, Occupied, Collision }

    public List<Vector3> AttackablePositions = new List<Vector3>();
    public List<Vector3> ExtraFiringPositions = new List<Vector3>();
    public List<Vector3> ExtraAttackablePositions = new List<Vector3>();


    public CellStatus CurrentStatus { get; set; }

    public bool IsCollision {
        get { return CurrentStatus == CellStatus.Collision; }
    }

    public CoverType[] cover = new CoverType[4];
    public CoverType[] Cover {
        get {
            return cover;
        }
        set {
            cover = value;
            if (cover[0] == CoverType.High || cover[2] == CoverType.High) {
                if (IsOpen(position, Vector3.right))
                    ExtraFiringPositions.Add(position + (Vector3.right * gridSize));
                if (IsOpen(position, Vector3.left))
                    ExtraFiringPositions.Add(position + (Vector3.left * gridSize));
            }

            if (cover[1] == CoverType.High || cover[3] == CoverType.High) {
                if (IsOpen(position, Vector3.forward))
                    ExtraFiringPositions.Add(position + (Vector3.forward * gridSize));
                if (IsOpen(position, Vector3.back))
                    ExtraFiringPositions.Add(position + (Vector3.back * gridSize));
            }           
        }
    }

    bool IsOpen(Vector3 mapPos, Vector3 direction) {
        mapPos.y += (0.25f * gridSize);
        LayerMask terrainMask = 1 << LayerMask.NameToLayer("Terrain");
        return !Physics.Raycast(mapPos, direction, 1.0f * gridSize, terrainMask);
    }
 
    public bool HasCover {
        get {
            bool hasCover = false;
            foreach (CoverType coverDirection in cover)
                if (coverDirection != CoverType.None)
                    hasCover = true;
            return hasCover;           
        }
    }

    public bool HasHighCover {
        get {
            bool hasHighCover = false;
            foreach (CoverType coverDirection in cover)
                if (coverDirection == CoverType.High)
                    hasHighCover = true;
            return hasHighCover;            
        }
    }

    public bool IsCoverInDirection(int direction) {
        return cover[direction] != CoverType.None;
    }

    public bool IsLowCoverInDirection(int direction) {
        GetType(); 
        return cover[direction] == CoverType.Low;
    }

    public bool IsHighCoverInDirection(int direction) {
        return cover[direction] == CoverType.High;
    }

}
