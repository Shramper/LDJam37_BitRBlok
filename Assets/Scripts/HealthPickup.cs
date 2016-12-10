using UnityEngine;

[DisallowMultipleComponent]
public class HealthPickup : MonoBehaviour {

	[SerializeField] float additionAmount = 10;

	void OnTriggerEnter (Collider other) {

		if(other.CompareTag("Player")) {

			other.GetComponent<Player>().RestoreHealth(additionAmount);
			this.GetComponent<AudioSource>().Play();
			this.GetComponent<MeshRenderer>().enabled = false;
			Destroy(this.gameObject, this.GetComponent<AudioSource>().clip.length);
		}
	}
}
