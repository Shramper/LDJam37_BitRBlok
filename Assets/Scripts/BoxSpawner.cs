using UnityEngine;
using System.Collections;

public class BoxSpawner : MonoBehaviour {

	[Header("Parameters")]
	[SerializeField] int minBoxSpawnAmount = 5;
	[SerializeField] int maxBoxSpawnAmount = 10;

	[Header("References")]
	[SerializeField] GameObject boxPrefab;

	// Use this for initialization
	void Start () {
	
		SpawnBoxes();
	}
	
	public void SpawnBoxes () {
		
		// Destroy old boxes first
		for(int i = 0; i < this.transform.childCount; i++) {

			Destroy(this.transform.GetChild(i).gameObject);
		}

		// Spawn new boxes
		int amountToSpawn = Random.Range(minBoxSpawnAmount, maxBoxSpawnAmount);
		for(int i = 0; i < amountToSpawn; i++) {

			Vector3 spawnPosition = new Vector3(Random.Range(-7.5f, 7.5f), 0, Random.Range(-3.5f, 3.5f));
			Vector3 spawnRotation = new Vector3(0, Random.Range(0, 360f), 0);

			GameObject newBox = Instantiate(boxPrefab, spawnPosition, Quaternion.Euler(spawnRotation)) as GameObject;
			newBox.transform.SetParent(this.transform);
		}
	}
}
