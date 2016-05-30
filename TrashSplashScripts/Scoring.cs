using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Scoring : MonoBehaviour {

	Text scoreTextUI;

	GameObject LifeUIText;
	GameObject WasteCount;

	int score;

	public int Score{
		get{ 
			return this.score;
		}
		set{ 
			this.score = value;
			UpdateScoreTextUI ();
		}
	}
	// Use this for initialization
	void Start () {
		scoreTextUI = GetComponent<Text> ();
		LifeUIText = GameObject.FindGameObjectWithTag ("LifeTag");
		WasteCount = GameObject.FindGameObjectWithTag("WasteCountTag");
	}

	void UpdateScoreTextUI(){
		scoreTextUI.text = score.ToString();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
