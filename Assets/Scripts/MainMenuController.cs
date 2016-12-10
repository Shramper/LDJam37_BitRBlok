using UnityEngine;
using UnityEngine.SceneManagement;

[DisallowMultipleComponent]
public class MainMenuController : MonoBehaviour {


	void Update () {
	
		if(Input.GetKeyDown(KeyCode.Return)) {

			SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
		}
	}
}
