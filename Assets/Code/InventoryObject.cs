using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class InventoryObject : ScriptableObject {


	[System.Serializable]
	public class PrefabEntry {	
		public string name;
        public GameObject prefab;
	}

    [System.Serializable]
    public class EquipmentEntry {  
        public string name;
        public GameObject prefab;
        public Vector3 offset;
    }   

    [System.Serializable]
    public class PlayerEntry {  
        public string name;
        public string primaryWeapon;
        public int primaryMagazines;
        public string secondaryWeapon;
        public int secondaryMagazines;
    }  

    public PrefabEntry[] prefabs;
    public EquipmentEntry[] equipment;
    public List<PlayerEntry> players;

    public GameObject GetPrefab(string name) {
        GameObject prefab = null;
        foreach (PrefabEntry entry in prefabs) {
            if (entry.name.Equals(name) && entry.prefab) {
                prefab = entry.prefab;
                break;
            }
        }
        if (!prefab) 
            Debug.Log("No prefab called " + name + " found");
        
        return prefab;
    }

	public GameObject GetEquipment(string name) {
		GameObject equipmentObj = null;
        foreach (EquipmentEntry entry in equipment) {
            if (entry.name.Equals(name) && entry.prefab) {
                equipmentObj = Instantiate(entry.prefab, Vector3.zero, Quaternion.identity) as GameObject;
                equipmentObj.name = name;
				break;
			}
		}
		return equipmentObj;
	}

    public PlayerEntry GetPlayerEntry(string name) {
        PlayerEntry foundPlayer = null;
        foreach (PlayerEntry entry in players) {
            if (entry.name.Equals(name)) {
                foundPlayer = entry;
                break;
            }
        }
        return foundPlayer;       
    }

    public void AddPlayerEntry(PlayerEntry newEntry) {

        foreach (PlayerEntry entry in players) {
            if (entry.name.Equals(name)) {
                entry.primaryWeapon = newEntry.primaryWeapon;
                entry.primaryMagazines = newEntry.primaryMagazines;
                entry.secondaryWeapon = newEntry.secondaryWeapon;
                entry.secondaryMagazines = newEntry.secondaryMagazines;
                return;
            }
        }

        players.Add(newEntry);
    }
}
