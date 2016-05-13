using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class LevelManager : MonoBehaviour {
	public Transform mainMenu, optionsMenu, playMenu, How2playMenu;

	public Slider slider;

	public void LoadGame(string name){
		Application.LoadLevel (name);
	}
	void Awake()
	{
		GetComponent<AudioSource>().volume = PlayerPrefs.GetFloat("CurVol");
		if (slider) {
			slider.value = GetComponent<AudioSource> ().volume;
		}
	}
	public void VolumeControl(float volumeControl)
	{
		GetComponent<AudioSource>().volume = volumeControl;
		PlayerPrefs.SetFloat("CurVol", GetComponent<AudioSource>().volume);

	}
	public void PlayMenu(bool clicked){
		if (clicked == true) {
			playMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (true);
		} else {
			playMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (true);
		}

	}
	public void How2PlayMenu(bool clicked){
		if (clicked == true) {
			How2playMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (true);
		} else {
			How2playMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (true);
		}

	}
	public void OptionsMenu(bool clicked){
		if (clicked == true) {
			optionsMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (false);
		} else {
			optionsMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (true);
		}

	}
}
