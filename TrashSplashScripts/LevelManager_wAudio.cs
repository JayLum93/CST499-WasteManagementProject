using UnityEngine;
using System.Collections;
using UnityEngine.UI;
public class LevelManager_wAudio : MonoBehaviour {
	public Transform mainMenu, InstrcutionMenu, optionsMenu, storyMenu;

	public Slider slider;

	void Awake()
	{
		GetComponent<AudioSource>().volume = PlayerPrefs.GetFloat("CurVol");
		if (slider) {
			slider.value = GetComponent<AudioSource> ().volume;
		}
	}
	public void LoadGame(string name){
		Application.LoadLevel (name);
	}
	public void quitgame(){
		Application.Quit();
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
	public void instrcutionMenu(bool clicked){
		if (clicked == true) {
			InstrcutionMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (false);
		} else {
			InstrcutionMenu.gameObject.SetActive(clicked);
			mainMenu.gameObject.SetActive (true);
		}

	}
	public void VolumeControl(float volumeControl)
	{
		GetComponent<AudioSource>().volume = volumeControl;
		PlayerPrefs.SetFloat("CurVol", GetComponent<AudioSource>().volume);

	}
}