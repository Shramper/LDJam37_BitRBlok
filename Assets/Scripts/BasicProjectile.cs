using UnityEngine;
using System.Collections;

public class BasicProjectile : MonoBehaviour {

    [SerializeField] float speed;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 newPos = this.transform.position + this.transform.forward;
        this.transform.Translate(newPos * speed * Time.deltaTime);
	}

    void OnTriggerEnter(Collider other) {
        if(other.name != "Area Trigger") { 
            Destroy(this.gameObject);
        }
    }
}
