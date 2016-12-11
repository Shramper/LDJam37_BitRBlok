using UnityEngine;
using System.Collections;

public class ObjectSpawner : MonoBehaviour {
    [Header("Parameters")]
	[SerializeField] int minBoxSpawnAmount = 5;
	[SerializeField] int maxBoxSpawnAmount = 10;
    [SerializeField] int minEnemySpawnAmount = 5;
	[SerializeField] int maxEnemySpawnAmount = 10;

	[Header("References")]
	[SerializeField] GameObject boxPrefab;
    [SerializeField] GameObject[] enemyPrefabs;

	// Use this for initialization
	void Start () {
        SpawnEnemies();
        SpawnBoxes();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void DestroySpawnedObjects() {
        // Destroy old objects first
		for(int i = 0; i < this.transform.childCount; i++) {

			Destroy(this.transform.GetChild(i).gameObject);
		}
    }

    public void SpawnEnemies() {
        // Destroy all otehr objects
        DestroySpawnedObjects();

		// Spawn new enemies
		int amountToSpawn = Random.Range(minBoxSpawnAmount, maxBoxSpawnAmount);
        int counter = 0;
		for(int i = 0; i < amountToSpawn; i++) {

			Vector3 spawnPosition = new Vector3(Random.Range(-7.5f, 7.5f), 0.4f, Random.Range(-3.5f, 3.5f));
			Vector3 spawnRotation = new Vector3(0, Random.Range(0, 360f), 0);

            int rand = Random.Range(0, enemyPrefabs.Length);
			GameObject newEnemy = Instantiate(enemyPrefabs[rand], spawnPosition, Quaternion.Euler(spawnRotation)) as GameObject;
			newEnemy.transform.SetParent(this.transform);
		}
    }

    public void SpawnBoxes () {
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
