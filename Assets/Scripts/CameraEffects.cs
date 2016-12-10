using UnityEngine;

[DisallowMultipleComponent]
[RequireComponent(typeof(Camera))]
public class CameraEffects : MonoBehaviour {

	[Header("Parameters")]
	[SerializeField, Range(0,0.5f)] float maxXAxisShake = 0.1f;
	[SerializeField, Range(0,0.5f)] float maxYAxisShake = 0.1f;
	[SerializeField, Range(0,0.5f)] float maxRotationShake = 0.5f;
	[SerializeField, Range(0,0.5f)] float shakeDuration = 0.25f;

	float shakeTimer = 0;
	Vector3 startPosition;
	Vector3 startRotation;

	void Update () {

		if (shakeTimer > 0) {

			this.transform.position = new Vector3 (this.transform.position.x + Random.Range (-maxXAxisShake, maxXAxisShake), 
				this.transform.position.y + Random.Range (-maxYAxisShake, maxYAxisShake), 
				this.transform.position.z);

			this.transform.rotation = Quaternion.Euler(startRotation.x + Random.Range(-maxRotationShake, maxRotationShake), startRotation.y, startRotation.z + Random.Range(-maxRotationShake, maxRotationShake));

			shakeTimer -= Time.deltaTime;

			// Check if need to reset camera transform
			if(shakeTimer <= 0) { 

				this.transform.position = startPosition;
				if(shakeTimer <= 0) { this.transform.rotation = Quaternion.Euler(startRotation); }
			}

		}
	}

	public void ShakeCamera () {

		startPosition = this.transform.position;
		startRotation = this.transform.rotation.eulerAngles;
		shakeTimer = shakeDuration;
	}
}
