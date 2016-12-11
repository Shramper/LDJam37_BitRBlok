using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {

    [SerializeField] GameObject areaTrigger;
    [SerializeField] GameObject projectilePrefab;
    [SerializeField] Transform projectileSpawn;
    [SerializeField] float stopDistance;
    [SerializeField] float speed;
    [SerializeField] float strength;
    [SerializeField] float health;

    Vector3 target;
    bool foundPlayer = false;
    public int dir = 1;
    public bool ranged = false;

	// Use this for initialization
	void Start () {
        FindPlayer();
        if(ranged) { StartCoroutine("RangedAttack"); }
    }
	
	// Update is called once per frame
	void Update () {
        FindPlayer();
        if (!ranged) { MoveToPlayer(); }
        Vector3 oldRot = transform.rotation.eulerAngles;
        transform.rotation = Quaternion.Euler(0, oldRot.y, 0);
    }

    void OnCollisionEnter(Collision other) {
        if (other.gameObject.name.Contains("Wall")) {
            Debug.Log("Hit Wall");
            dir *= -1;
        }
    }

    void FindPlayer() {
        if (GameObject.FindGameObjectWithTag("Player") != null) {
            foundPlayer = true;
            target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>().transform.localPosition;
            this.transform.LookAt(target);
            // Debug.Log("Found Player At: " + target);
        }
    }

    void MoveToPlayer() {
        // Check to make sure you are within range of the player 
        if (Vector3.Distance(this.transform.position, target) > stopDistance) {
            this.transform.position = Vector3.MoveTowards(this.transform.position, target, speed * Time.deltaTime);
        }
    }

    public void Flee() {
        StopCoroutine("RangedAttack");
        target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>().transform.localPosition;
        Vector3 newPos = this.transform.position - target;
        newPos = new Vector3(newPos.x, 0.4f, newPos.z);
        transform.Translate(new Vector3(newPos.x, 0, newPos.z ) * speed * dir * Time.deltaTime);
    }

    public void Fire() {
        StartCoroutine("RangedAttack");
    }

    IEnumerator RangedAttack() {
        yield return new WaitForSeconds(1);
        GameObject newBullet = GameObject.Instantiate(projectilePrefab, projectileSpawn.position, Quaternion.identity) as GameObject;
        newBullet.GetComponent<Rigidbody>().AddForce(this.transform.forward * 10, ForceMode.Impulse);
        Debug.Log("Adding Force.");
        

        StartCoroutine("RangedAttack");
    }

    void MeleeAttack() {

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
}
