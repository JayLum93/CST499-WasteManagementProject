using UnityEngine;
using System.Collections;

public class Hit : MonoBehaviour {
	
	void OnTriggerEnter2D(Collider2D Racoon)
	{
		if (Racoon.gameObject.tag == "Player") {
			Destroy (gameObject);
		}
	}
}
