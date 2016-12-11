using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class GameTimer : MonoBehaviour {

    Text timerText;
    
    float difficultyIncreseDuration = 150;
    float smoothness = 0.2f;
    float currentGameTime = 0;
    Color currentColor = Color.green;

    float currentEnemyAttack = 10;
    float currentEnemyHealth = 30;
    float currentEnemySpeed = 2;

    float baseEnemyAttack = 10;
    float baseEnemyHealth = 30;
    float baseEnemySpeed = 2;

    float maxEnemyAttack = 50;
    float maxEnemyHealth = 150;
    float maxEnemySpeed = 10;

    int gameMinutes = 0;
    int gameSeconds = 0;
    int milliseconds = 0;

    // Use this for initialization
    void Start () {
        timerText = this.GetComponent<Text>();
        StartCoroutine("GameTick");
        StartCoroutine("LerpColor");
	}
	
	// Update is called once per frame
	void Update () {
        GameTick();
	}

    void GameTick() {

        gameMinutes = (int)(Time.timeSinceLevelLoad / 60) % 60;
        gameSeconds = (int)(Time.timeSinceLevelLoad % 60);
        milliseconds = (int)(Time.timeSinceLevelLoad * 1000) % 1000;

        timerText.text = string.Format("{0:00}:{1:00}:{2:000}", gameMinutes, gameSeconds, milliseconds);
        
    }

    IEnumerator LerpColor() {
        float progress = 0;
        float increment = smoothness / difficultyIncreseDuration;
        while (progress < 1) {
            // Adjust Colour
            currentColor = Color.Lerp(Color.green, Color.red, progress);
            timerText.color = currentColor;

            // Update Enemy Stats
            currentEnemyAttack = Mathf.Lerp(baseEnemyAttack, maxEnemyAttack, progress);
            currentEnemyHealth = Mathf.Lerp(baseEnemyHealth, maxEnemyHealth, progress);
            currentEnemySpeed = Mathf.Lerp(baseEnemySpeed, maxEnemySpeed, progress);

            progress += increment;
            yield return new WaitForSeconds(smoothness);
        }
    }

    public float GetCurrentEnemyAttack() {
        return currentEnemyAttack;
    }

    public float GetCurrentEnemyHealth() {
        return currentEnemyHealth;
    }

    public float GetCurrentEnemySpeed() {
        return currentEnemySpeed;
    }
}
