using UnityEngine;

/// <summary>
/// This script creates a seamless transition between the intro of a music
/// score and the looping body of it. Once this transition occurs, this
/// script removes itself from the gameobject
/// </summary>

[DisallowMultipleComponent]
[RequireComponent(typeof(AudioSource))]
public class AudioTransitioner : MonoBehaviour {

	[SerializeField] AudioClip introAudio;
	[SerializeField] AudioClip loopingAudio;

	AudioSource audioSource;
	float timer = 0;

	void Awake () {

		audioSource = this.GetComponent<AudioSource>();
		audioSource.clip = introAudio;
		audioSource.Play();
	}

	void Update () {
		
		if(timer >= audioSource.clip.length && audioSource.clip == introAudio) {

			audioSource.clip = loopingAudio;
			audioSource.loop = true;
			audioSource.Play();
			Destroy(this);
		}
		else {

			timer += Time.deltaTime;
		}
	}
}
