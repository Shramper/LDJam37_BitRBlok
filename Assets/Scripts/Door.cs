using UnityEngine;
using UnityEngine.UI;

[DisallowMultipleComponent]
public class Door : MonoBehaviour {

	[SerializeField] BoxSpawner boxSpawner;
	[SerializeField] Image overlay;
	[SerializeField] float fadeSpeed = 0.1f;

	bool fadingOut = false;

	void Update () {

//		if (fadingIn) {
//
//			float newAlpha = overlay.color.a;
//			newAlpha += fadeSpeed * Time.deltaTime;
//			overlay.color = new Color (0, 0, 0, newAlpha);
//
//			if (newAlpha >= 1) {
//
//				fadingIn = false;
//				fadingOut = true;
//			}
//		}
		if (fadingOut) {

			float overlayAlpha = overlay.color.a;
			overlayAlpha -= fadeSpeed * Time.deltaTime;
			overlay.color = new Color (0, 0, 0, overlayAlpha);

			if (overlayAlpha <= 0) {

				fadingOut = false;
				overlay.gameObject.SetActive(false);
			}
		}
	}

	void OnTriggerEnter(Collider other) {

		if(other.CompareTag("Player")) {

			overlay.gameObject.SetActive(true);
			overlay.color = Color.black;
			fadingOut = true;

			GameObject[] doors = GameObject.FindGameObjectsWithTag("Door");

			GameObject randomDoor = doors[Random.Range(0, doors.Length)];
			other.transform.position = randomDoor.transform.position + 1.5f * randomDoor.transform.forward;

			boxSpawner.SpawnBoxes();
		}
	}
}
