using UnityEngine;
using System.Collections;

public class Enemy : MonoBehaviour {

    [SerializeField] float minWaitTime;
    [SerializeField] float maxWaitTime;
    [SerializeField] float stopDistance;
    [SerializeField] float speed;

    Vector3 target;
    bool foundPlayer = false;
    bool move = false;

	// Use this for initialization
	void Start () {
        FindPlayer();
	}
	
	// Update is called once per frame
	void Update () {
        FindPlayer();
        MoveToPlayer();
	}

    void FindPlayer() {
        if (GameObject.FindGameObjectWithTag("Player") != null) {
            foundPlayer = true;
            target = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>().transform.localPosition;
            move = true;
            Debug.Log("Found Player At: " + target);
        }
    }

    void MoveToPlayer() {
        // Check to make sure you are within range of the player 
        if (Vector3.Distance(this.transform.position, target) > stopDistance) {
            this.transform.position = Vector3.MoveTowards(this.transform.position, target, speed * Time.deltaTime);
        }
    }

    void MeleeAttack() {

    }
}
