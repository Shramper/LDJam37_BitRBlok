using UnityEngine;

[DisallowMultipleComponent]
[RequireComponent(typeof(Collider), typeof(Rigidbody))]
public class Player : MonoBehaviour {

	[SerializeField] float movementSpeed = 1;

	Rigidbody rb2d;

	void Awake () {

		rb2d = this.GetComponentInChildren<Rigidbody>();
	}

	void FixedUpdate () {

		ProcessMovement();
		ProcessRotation();
		ProcessActions();
	}

	void ProcessMovement () {

		Vector3 deltaPosition = Vector3.zero;

		if(Input.GetKey(KeyCode.A)) {

			deltaPosition += movementSpeed * Time.deltaTime * Vector3.left;
		}
		else if(Input.GetKey(KeyCode.D)) {

			deltaPosition += movementSpeed * Time.deltaTime * Vector3.right;
		}

		if(Input.GetKey(KeyCode.W)) {

			deltaPosition += movementSpeed * Time.deltaTime * Vector3.forward;
		}
		else if(Input.GetKey(KeyCode.S)) {

			deltaPosition += movementSpeed * Time.deltaTime * Vector3.back;
		}

		rb2d.MovePosition(this.transform.position + deltaPosition);
	}

	void ProcessRotation () {

		Vector3 worldPosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);
		Vector3 newPosition = new Vector3(worldPosition.x, 0, worldPosition.z);
		this.transform.LookAt(newPosition);
	}

	void ProcessActions () {

		if(Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButton(0)) {

			Collider[] hitObjectsArray = Physics.OverlapSphere(this.transform.position + this.transform.forward, 0.5f);
			foreach (Collider box in hitObjectsArray) {

				if(box.GetComponent<Box>()) {

					box.GetComponent<Box>().DestroyBox();
					Camera.main.GetComponent<CameraEffects>().ShakeCamera();
				}
			}
		}
	}
}
