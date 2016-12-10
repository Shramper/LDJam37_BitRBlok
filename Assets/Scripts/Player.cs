using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

[DisallowMultipleComponent]
[RequireComponent(typeof(Collider), typeof(Rigidbody))]
public class Player : MonoBehaviour {

	[Header("Player Attributes")]
	[SerializeField] float currentMaxHealth = 50;
	[SerializeField] float currentAttack = 10;
	[SerializeField] float currentMoveSpeed = 5;

	[Header("Parameters")]
	[SerializeField] float healthUpgradeAmount = 5;
	[SerializeField] float attackUpgradeAmount = 5;
	[SerializeField] float speedUpgradeAmount = 0.5f;

	[Header("References")]
	[SerializeField] GameObject statPanel;
	[SerializeField] GameObject healthBar;
	[SerializeField] Text maxHealthText;
	[SerializeField] Text attackText;
	[SerializeField] Text speedText;

	Rigidbody rb2d;
	float currentHealth;

	void Awake () {

		rb2d = this.GetComponentInChildren<Rigidbody>();
		currentHealth = currentMaxHealth;
		HideStatPanel();
	}

	#region Input
	void FixedUpdate () {

		ProcessMovement();

		if(!EventSystem.current.IsPointerOverGameObject()) {

			ProcessRotation();
			ProcessActions();
		}
	}

	void ProcessMovement () {

		Vector3 deltaPosition = Vector3.zero;

		if(Input.GetKey(KeyCode.A)) {

			deltaPosition += currentMoveSpeed * Time.deltaTime * Vector3.left;
		}
		else if(Input.GetKey(KeyCode.D)) {

			deltaPosition += currentMoveSpeed * Time.deltaTime * Vector3.right;
		}

		if(Input.GetKey(KeyCode.W)) {

			deltaPosition += currentMoveSpeed * Time.deltaTime * Vector3.forward;
		}
		else if(Input.GetKey(KeyCode.S)) {

			deltaPosition += currentMoveSpeed * Time.deltaTime * Vector3.back;
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
				// TODO: else if Enemy!
			}
		}
	}
	#endregion

	#region UI
	public void ShowStatPanel () {

		statPanel.SetActive(true);
	}

	public void HideStatPanel () {

		statPanel.SetActive(false);
	}
	#endregion

	#region Health
	public void UpdateHealth () {

		currentHealth = Mathf.Clamp(currentHealth, 0, currentMaxHealth);

		// Update bar
		float healthPercentage = currentHealth / currentMaxHealth;
		healthBar.transform.localScale = new Vector3(healthPercentage, 1, 1);

		// Update canvas value
		maxHealthText.text = currentMaxHealth.ToString("000");
	}

	public void ReduceHealth (float damage) {

		currentHealth -= damage;
		UpdateHealth();
		if(currentHealth <= 0) { PlayerDead(); }
	}

	public void RestoreHealth(float amount) {

		currentHealth += amount;
		UpdateHealth();
	}

	public void UpgradeHealth () {

		currentMaxHealth += healthUpgradeAmount;
		UpdateHealth();
	}

	public void PlayerDead () {

		// TODO: Player death!
		Debug.Log("Player dead!");
	}
	#endregion

	#region Attack
	public void UpgradeAttack () {

		currentAttack += attackUpgradeAmount;
		attackText.text = currentAttack.ToString("000");
	}
	#endregion

	#region Speed
	public void UpgradeSpeed () {

		currentMoveSpeed += speedUpgradeAmount;
		speedText.text = currentMoveSpeed.ToString("000");
	}
	#endregion
}
