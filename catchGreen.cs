using UnityEngine;
using System.Collections;

public class catchGreen : MonoBehaviour {

	GameObject ScoreUIText;
	GameObject MissUIText;
	GameObject WasteCount;

	public GameObject TrashBinFX;
	public GameObject WrongFX;

	void Start(){
		ScoreUIText = GameObject.FindGameObjectWithTag ("ScoreTag"); // refer to score
		MissUIText = GameObject.FindGameObjectWithTag ("MissSortTag");
		WasteCount = GameObject.FindGameObjectWithTag("WasteCountTag"); //refer to Waste Counter
	}

	void OnTriggerEnter2D(Collider2D compost)
	{
		if (compost.gameObject.tag == "WasteTag") {
			PlayFX ();
			ScoreUIText.GetComponent<Scoring> ().Score++;
			WasteCount.GetComponent<WasteCounter> ().Waste--;
			Destroy (compost.gameObject);
		} else if ((compost.gameObject.tag == "RecycleTag")||(compost.gameObject.tag == "TrashTag")) {
			WRGFX ();
			Destroy (compost.gameObject);
			WasteCount.GetComponent<WasteCounter> ().Waste--;
			MissUIText.GetComponent<MissedItems> ().Miss++;
		}
	}

	void PlayFX(){
		Vector3 pos = transform.position;
		GameObject effects = (GameObject)Instantiate(TrashBinFX);
		effects.transform.position = pos;
	}

	void WRGFX(){
		Vector3 pos = transform.position;
		GameObject effects = (GameObject)Instantiate(WrongFX);
		effects.transform.position = pos;
	}
}
