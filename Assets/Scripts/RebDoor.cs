using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class RebDoor : MonoBehaviour {

	
	[SerializeField] GameObject opposingDoor;
	[SerializeField] BoxSpawner boxSpawner;
	[SerializeField] Image overlay;
	[SerializeField] float fadeSpeed = 0.1f;

	bool fadingOut = false;

	void Update () {

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

			other.transform.position = opposingDoor.transform.position + 1.5f * opposingDoor.transform.forward;

			boxSpawner.SpawnBoxes();
		}
	}
}
