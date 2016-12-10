using UnityEngine;
using System.Collections;

[DisallowMultipleComponent]
public class HelpText : MonoBehaviour {
	
	TextMesh textMesh;

	void Awake () {

		textMesh = this.GetComponent<TextMesh>();
	}

	void Update () {
		
		float newAlpha = textMesh.color.a;

		newAlpha -= 0.15f * Time.deltaTime;
		textMesh.color = new Color (1, 1, 1, newAlpha);

		if(newAlpha <= 0) {

			Destroy(this.gameObject);
		}
	}
}
