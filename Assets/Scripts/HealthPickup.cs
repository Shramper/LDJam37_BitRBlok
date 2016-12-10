using UnityEngine;

[DisallowMultipleComponent]
public class HealthPickup : MonoBehaviour {

	[SerializeField] float additionAmount = 10;

	void OnTriggerEnter (Collider other) {

		if(other.CompareTag("Player")) {

			other.GetComponent<Player>().RestoreHealth(additionAmount);
			Destroy(this.gameObject);
		}
	}
}
