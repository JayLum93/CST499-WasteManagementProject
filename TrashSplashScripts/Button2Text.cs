using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using System.Collections;

public class Button2Text : MonoBehaviour {

	public InputField Field;
	public Text TextBox;
	Text scoredTextUI;
	GameObject Scored;

	int Points;
	string name="";

	dreamloLeaderBoard dl;

	public void CopyText() {
		/*if (Field.text == "Specific Player Name") {
			Field.text = "Custom Name";
			name = Field.text;
			TextBox.text = "Custom Greeting " + Field.text + "!";
		} else {*/
			name = Field.text;
			TextBox.text = "Thank you for playing " + Field.text + "!";
		//}
	}
		
	// Use this for initialization
	void Start () {
		this.dl = dreamloLeaderBoard.GetSceneDreamloLeaderboard();
		scoredTextUI = GetComponent<Text> ();
		Scored = GameObject.FindGameObjectWithTag ("ScoreTag");
		GetPoint ();
	}

	void GetPoint(){
		Points = Scored.GetComponent<Scoring> ().Score;
		scoredTextUI.text = Points.ToString();
	}

	// Update is called once per frame....use to send get request to leaderboard
	void Update() {
		dl.AddScore(name, Points);
	}
}
