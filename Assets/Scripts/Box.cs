using UnityEngine;

[DisallowMultipleComponent]
[RequireComponent(typeof(Collider), typeof(Rigidbody))]
public class Box : MonoBehaviour {

	[SerializeField] float spawnChance = 0.25f;
	[SerializeField] GameObject[] pickupPrefabs;

	public void DestroyBox () {

		if(Random.value < spawnChance) {

			Instantiate(pickupPrefabs[Random.Range(0, pickupPrefabs.Length)], this.transform.position, Quaternion.identity);
		}

		Destroy(this.gameObject);
	}
}
