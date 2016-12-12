using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;

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
	[SerializeField] Image overlay;
	[SerializeField] GameObject statPanel;
	[SerializeField] GameObject healthBar;
	[SerializeField] Text maxHealthText;
	[SerializeField] Text attackText;
	[SerializeField] Text speedText;

	[Header("Audio")]
	[SerializeField] AudioClip walkAudio;
	[SerializeField] AudioClip attackAudio;

	Rigidbody rb2d;
	AudioSource audioSource;
	float currentHealth;
    bool attacking = false;

	void Awake () {

		rb2d = this.GetComponentInChildren<Rigidbody>();
		audioSource = this.GetComponentInChildren<AudioSource>();
		currentHealth = currentMaxHealth;
		HideStatPanel();
	}

    void Update() {
        Vector3 oldRot = transform.rotation.eulerAngles;
        transform.rotation = Quaternion.Euler(0, oldRot.y, 0);
    }

	#region Input
	void FixedUpdate () {

		if(currentHealth > 0) {
			
			ProcessMovement();

			if(!EventSystem.current.IsPointerOverGameObject()) {

				ProcessRotation();
				ProcessActions();
			}
		}
		else {
			
			float newAlpha = overlay.color.a;
			newAlpha += Time.fixedDeltaTime;
			overlay.color = new Color(1, 0, 0, newAlpha);
			if(newAlpha > 2) { SceneManager.LoadScene(0); }
		}

		if(Input.GetKeyDown(KeyCode.Q)) {

			ReduceHealth(10);
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

		if(deltaPosition != Vector3.zero) {

			if(!audioSource.isPlaying) {

				audioSource.clip = walkAudio;
				audioSource.pitch = Random.Range(0.9f, 1.1f);
				audioSource.Play();
			}

			rb2d.MovePosition(this.transform.position + deltaPosition);
		}
	}

	void ProcessRotation () {

		Vector3 worldPosition = Camera.main.ScreenToWorldPoint(Input.mousePosition);
		Vector3 newPosition = new Vector3(worldPosition.x, 0, worldPosition.z);
		this.transform.LookAt(newPosition);
	}

	void ProcessActions () {

		if(Input.GetKeyDown(KeyCode.Space) || Input.GetMouseButton(0)) {

			Collider[] hitObjectsArray = Physics.OverlapSphere(this.transform.position + this.transform.forward, 0.5f);
			foreach (Collider hitObject in hitObjectsArray) {

				if(hitObject.GetComponent<Box>()) {

					hitObject.GetComponent<Box>().DestroyBox();
					Camera.main.GetComponent<CameraEffects>().ShakeCamera();
				}
				else if(hitObject.transform.name.Contains("Enemy") && !attacking) {

                    StartCoroutine(AttackEnemy(hitObject.gameObject));
				}
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
		overlay.gameObject.SetActive(true);
		overlay.color = new Color(1, 0, 0, 0);
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

    #region Attack

    IEnumerator AttackEnemy(GameObject enemy) {
        attacking = true;
        enemy.GetComponent<Enemy>().ReduceHealth(currentAttack);
        yield return new WaitForSeconds(2);
        attacking = false;
    }

    #endregion
}
