using UnityEngine;
using System.Collections;

public class catchTrash : MonoBehaviour {

	GameObject ScoreUIText;
	GameObject MissUIText;
	GameObject WasteCount;

	public GameObject TrashBinFX;
	public GameObject WrongFX;

	void Start(){
		ScoreUIText = GameObject.FindGameObjectWithTag ("ScoreTag"); // refer to score
		MissUIText = GameObject.FindGameObjectWithTag ("MissSortTag");
		WasteCount = GameObject.FindGameObjectWithTag("WasteCountTag");
	}

	void OnTriggerEnter2D(Collider2D trash)
	{
		if (trash.gameObject.tag == "TrashTag") {
			PlayFX ();
			ScoreUIText.GetComponent<Scoring> ().Score++;
			WasteCount.GetComponent<WasteCounter> ().Waste--;
			Destroy (trash.gameObject);
		} else if ((trash.gameObject.tag == "RecycleTag")||(trash.gameObject.tag == "WasteTag")) {
			WRGFX ();
			Destroy (trash.gameObject);
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
