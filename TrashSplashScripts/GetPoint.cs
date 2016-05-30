using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GetPoint : MonoBehaviour {

	Text scoredTextUI;
	GameObject Scored;

	int Points;
	// Use this for initialization
	void Start () {
		scoredTextUI = GetComponent<Text> ();
		Scored = GameObject.FindGameObjectWithTag ("ScoreTag");
	}
	
	// Update is called once per frame
	void Update () {
		Points = Scored.GetComponent<Scoring> ().Score;
		scoredTextUI.text = Points.ToString();
	}
}
