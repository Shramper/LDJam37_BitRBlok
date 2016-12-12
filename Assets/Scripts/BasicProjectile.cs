using UnityEngine;
using System.Collections;

public class BasicProjectile : MonoBehaviour {

    [SerializeField] float speed;
    float damage;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 newPos = this.transform.position + this.transform.forward;
        this.transform.Translate(newPos * speed * Time.deltaTime);
	}

    void OnTriggerEnter(Collider other) {
        // Debug.Log(other.name);

        if(other.name != "Area Trigger" && !other.name.Contains("Enemy")) {
            if (other.CompareTag("Player")) {
                other.GetComponent<Player>().ReduceHealth(damage);
            }
            Destroy(this.gameObject);
        }
    }

    public void SetDamage(float newDamage) {
        damage = newDamage;
    }
}
