using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class MapCellData {

    public Vector3 position;

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
    public enum CoverStatus { Open, Claimed, Occupied, Collision }

    public CoverType[] cover = new CoverType[4];

    public CoverStatus CurrentStatus { get; set; }

    public bool IsCollision {
        get { return CurrentStatus == CoverStatus.Collision; }
    }

    public void AddCover(CoverType[] newCover) {
        cover = newCover;
    }
 
    public bool HasCover() {
        bool hasCover = false;
        foreach (CoverType coverDirection in cover)
            if (coverDirection != CoverType.None)
                hasCover = true;
        return hasCover;
    }
    public bool HasHighCover() {
        bool hasHighCover = false;
        foreach (CoverType coverDirection in cover)
            if (coverDirection == CoverType.High)
                hasHighCover = true;
        return hasHighCover;
    }

    public bool HasCover(int direction) {
        return cover[direction] != CoverType.None;
    }

    public bool IsLowCover(int direction) {
        return cover[direction] == CoverType.Low;
    }



    public bool IsHighCover(int direction) {
        return cover[direction] == CoverType.High;
    }

}
