using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {

    GameTimer gameTimer;

    public enum Type { FAST, STRONG, HEALTHY };
    [SerializeField]Type currentType;

    [Header("References")]
    [SerializeField] GameObject areaTrigger;
    [SerializeField] GameObject projectilePrefab;
    [SerializeField] GameObject healthBar;
    [SerializeField] Transform projectileSpawn;
	[SerializeField] AudioClip meleeAudio;
	[SerializeField] AudioClip rangeAudio;
	[SerializeField] AudioClip deathAudio;

    [Header("Parameters")]
    [SerializeField] float stopDistance;
    [SerializeField] float speed;
    [SerializeField] float strength;
    [SerializeField] float health;

    Vector3 target;
    bool foundPlayer = false;
    bool attacking = false;
    int dir = 1;
    [SerializeField] bool ranged = false;
    float currentHealth;
	AudioSource audioSource;

	// Use this for initialization
	void Start () {
        FindPlayer();
        if(ranged) { StartCoroutine("RangedAttack"); }
        gameTimer = GameObject.FindGameObjectWithTag("Timer").GetComponent<GameTimer>();
        currentHealth = health;
		audioSource = this.GetComponent<AudioSource>();
    }
	
	// Update is called once per frame
	void Update () {
        FindPlayer();
        UpdateStats();
        if (!ranged) { MoveToPlayer(); }
        Vector3 oldRot = transform.rotation.eulerAngles;
        transform.rotation = Quaternion.Euler(0, oldRot.y, 0);
    }

    void UpdateStats() {
        switch (currentType) {
            case Type.FAST:
                speed = gameTimer.GetCurrentEnemySpeed();
                break;
            case Type.HEALTHY:
                float healthPerc = currentHealth / health;
                health = gameTimer.GetCurrentEnemyHealth();
                currentHealth = health * healthPerc;
                break;
            case Type.STRONG:
                strength = gameTimer.GetCurrentEnemyAttack();
                break;
        }
    }

    void OnCollisionEnter(Collision other) {
        if (other.gameObject.name.Contains("Wall")) {
            dir *= -1;
        }
    }

    void FindPlayer() {
        if (GameObject.FindGameObjectWithTag("Player") != null) {
            foundPlayer = true;
            target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>().transform.localPosition;
            this.transform.LookAt(target);
        }
    }

    void MoveToPlayer() {
        // Check to make sure you are within range of the player 
        if (Vector3.Distance(this.transform.position, target) > stopDistance) {
            this.transform.position = Vector3.MoveTowards(this.transform.position, target, speed * Time.deltaTime);
        } else if (Vector3.Distance(this.transform.position, target) <= stopDistance && !attacking) {
            StartCoroutine("MeleeAttack");
        }
    }

    public void Flee() {
        StopCoroutine("RangedAttack");
        target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>().transform.localPosition;
        Vector3 newPos = this.transform.position - target;
        newPos = new Vector3(newPos.x, 0.4f, newPos.z);
        transform.Translate(new Vector3(newPos.x, 0, newPos.z ) * speed * dir * Time.deltaTime);

        // If the player is close - melee attack
        if (Vector3.Distance(this.transform.position, target) <= stopDistance && attacking == false) {
            StartCoroutine("MeleeAttack");
        }
    }

    public void Fire() {
        StartCoroutine("RangedAttack");
    }

    IEnumerator RangedAttack() {
        yield return new WaitForSeconds(1);
        GameObject newBullet = GameObject.Instantiate(projectilePrefab, projectileSpawn.position, Quaternion.identity) as GameObject;
        newBullet.GetComponent<Rigidbody>().AddForce(this.transform.forward * 10, ForceMode.Impulse);
        newBullet.GetComponent<BasicProjectile>().SetDamage(strength);
		audioSource.clip = rangeAudio;
		audioSource.Play();
        StartCoroutine("RangedAttack");
    }

    IEnumerator MeleeAttack() {
        attacking = true;
        GameObject.FindGameObjectWithTag("Player").GetComponent<Player>().ReduceHealth(strength);
		audioSource.clip = meleeAudio;
		audioSource.Play();
        yield return new WaitForSeconds(1.5f);

        attacking = false;
    }

    void KillEnemy() {
		Camera.main.GetComponent<CameraEffects>().ShakeCamera();
		GameObject audioObject = new GameObject();
		audioObject.AddComponent<AudioSource>();
		audioObject.AddComponent<AudioSource>().PlayOneShot(deathAudio);
        Destroy(this.gameObject);
    }

    void UpdateHealth() {
        currentHealth = Mathf.Clamp(currentHealth, 0, health);

        // Update bar
        float healthPercentage = currentHealth / health;
        healthBar.transform.localScale = new Vector3(healthPercentage, 1, 1);
    }

    public void SetRanged(bool state) {
        ranged = state;
        if (ranged) { speed = 0.5f; }
        else { speed = 1.5f; }
    }

    public bool IsRanged() {
        return ranged;
    }

    public void SetDir(int newDir) {
        dir = newDir;
    }

    public int GetDir() {
        return dir;
    }

    public void ReduceHealth(float damage) {
        currentHealth -= damage;
        UpdateHealth();
        if (currentHealth <= 0) {
			GameObject.FindGameObjectWithTag("Player").GetComponent<Player>().ShowStatPanel();
            KillEnemy();
        }
    }
}
