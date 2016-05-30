using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class MissedItems : MonoBehaviour {

	Text MissTextUI;

	int miss;

	public int Miss{
		get{ 
			return this.miss;
		}
		set{ 
			this.miss = value;
			UpdateMissTextUI ();
		}
	}

	// Use this for initialization
	void Start () {
		MissTextUI = GetComponent<Text> ();
	}
		
	void UpdateMissTextUI(){
		MissTextUI.text = miss.ToString();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
