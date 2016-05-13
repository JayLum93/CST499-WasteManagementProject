using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class LifeCounter : MonoBehaviour {

	Text lifeTextUI;

	public GameObject GO;
	public GameObject cam;
	public GameObject Player;
	public GameObject lbButton;

	int life = 5;

	public int Life{
		get{ 
			return this.life;
		}
		set{ 
			this.life = value;
			UpdateLifeTextUI ();
		}
	}
	// Use this for initialization
	void Start () {
		lifeTextUI = GetComponent<Text> ();
		cam.SetActive (true);
		Player.SetActive (true);
		GO.SetActive (false);
		lbButton.SetActive (false);
	}

	void UpdateLifeTextUI(){
		lifeTextUI.text = life.ToString();
	}

	// Update is called once per frame
	void Update () {
		if (life <= 0) {
			GO.SetActive (true);
			lbButton.SetActive (true);
			Player.SetActive (false);
			cam.SetActive (false);
			Cursor.visible = true;
		}
	}
}
