using UnityEngine;

[DisallowMultipleComponent]
public class HoverText : MonoBehaviour {
	
	[SerializeField] float hoverSpeed = 1;

	int direction = 1;
	float timer = 0;


	void Update () {

		timer += Time.deltaTime;

		if(timer >= 1) {

			direction *= -1;
			timer = 0;
		}

		this.transform.Translate(direction * hoverSpeed * Time.deltaTime * Vector3.up);
	}
}
