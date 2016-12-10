using UnityEngine;

[DisallowMultipleComponent]
public class HealthPickup : MonoBehaviour {

	[SerializeField] float additionAmount = 1;

	void OnTriggerEnter (Collider other) {

		if(other.CompareTag("Player")) {

			Debug.Log("Health!");
			Destroy(this.gameObject);
		}
	}
}
