using UnityEngine;
using System.Collections;

public class WasteDestroy : MonoBehaviour {

	GameObject WasteCount;
	// Use this for initialization

	void Start(){
		WasteCount = GameObject.FindGameObjectWithTag("WasteCountTag");
	}

	void OnTriggerEnter2D(Collider2D junk)
	{
		if (junk.gameObject.tag == "TrashTag" || junk.gameObject.tag == "RecycleTag"
		   || junk.gameObject.tag == "WasteTag") {
			WasteCount.GetComponent<WasteCounter> ().Waste--;
			Destroy (junk.gameObject);
		}
	}
}
