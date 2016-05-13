using UnityEngine;
using System.Collections;

public class WasteCounter : MonoBehaviour {

	int waste = 50;

	public GameObject GO;
	public GameObject cam;
	public GameObject Player;
	public GameObject lbButton;

	public int Waste{
		get{ 
			return this.waste;
		}
		set{ 
			this.waste = value;
		}
	}
	// Use this for initialization
	void Start () {
		cam.SetActive (true);
		Player.SetActive (true);
		GO.SetActive (false);
		lbButton.SetActive (false);
		Cursor.visible = false;
	}

	// Update is called once per frame
	void Update () {
		if (waste <= 0) {
			GO.SetActive (true);
			lbButton.SetActive (true);
			Player.SetActive (false);
			cam.SetActive (false);
			Cursor.visible = true;
		}
	}
}
