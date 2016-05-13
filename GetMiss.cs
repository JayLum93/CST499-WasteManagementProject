using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GetMiss : MonoBehaviour {

	Text MissTextUI;
	GameObject Missed;

	int Points;
	// Use this for initialization
	void Start () {
		MissTextUI = GetComponent<Text> ();
		Missed = GameObject.FindGameObjectWithTag ("MissSortTag");
	}

	// Update is called once per frame
	void Update () {
		Points = Missed.GetComponent<MissedItems> ().Miss;
		MissTextUI.text = Points.ToString();
	}
}
