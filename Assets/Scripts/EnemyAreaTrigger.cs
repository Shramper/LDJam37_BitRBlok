using UnityEngine;
using System.Collections;

public class EnemyAreaTrigger : MonoBehaviour {

    Enemy enemy;

	// Use this for initialization
	void Start () {
        enemy = this.transform.GetComponentInParent<Enemy>();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnTriggerStay(Collider other) {
        // Debug.Log("Other" + other);
        if (other.gameObject.CompareTag("Player") && enemy != null && enemy.IsRanged()) {
            enemy.Flee();
        }
    }

    void OnTriggerExit(Collider other) {
        // Debug.Log("Other" + other);
        if (other.gameObject.CompareTag("Player") && enemy != null && enemy.IsRanged()) {
            enemy.Fire();
        }
        if (other.gameObject.name.Contains("Wall") && other.gameObject.name.Contains("Player") && enemy != null && enemy.IsRanged()) {
            enemy.SetDir(-1);
        } else {
            enemy.SetDir(1);
        }
    }
}
