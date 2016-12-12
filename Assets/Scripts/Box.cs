using UnityEngine;

[DisallowMultipleComponent]
[RequireComponent(typeof(Collider), typeof(Rigidbody))]
public class Box : MonoBehaviour {

	[SerializeField] float spawnChance = 0.25f;
	[SerializeField] GameObject[] pickupPrefabs;
	bool isBroken = false;

	public void DestroyBox () {

		if(!isBroken) {

			isBroken = true;
			this.GetComponentInChildren<MeshRenderer>().enabled = false;

			if(Random.value < spawnChance) {

				Instantiate(pickupPrefabs[Random.Range(0, pickupPrefabs.Length)], this.transform.position, Quaternion.identity);
			}

			this.GetComponent<AudioSource>().Play();
			Destroy(this.gameObject, this.GetComponent<AudioSource>().clip.length);
		}
	}
}
