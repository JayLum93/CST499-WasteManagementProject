using UnityEngine;
using System.Collections;

public class catchRecycle : MonoBehaviour {

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

	void OnTriggerEnter2D(Collider2D recycle)
	{
		if (recycle.gameObject.tag == "RecycleTag") {
			PlayFX ();
			ScoreUIText.GetComponent<Scoring> ().Score++;
			WasteCount.GetComponent<WasteCounter> ().Waste--;
			Destroy (recycle.gameObject);
		} else if ((recycle.gameObject.tag == "WasteTag")||(recycle.gameObject.tag == "TrashTag")) {
			WRGFX ();
			Destroy (recycle.gameObject);
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
