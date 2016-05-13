using UnityEngine;
using System.Collections;

public class RecycleBagGO : MonoBehaviour {

	public float speed;

	// Use this for initialization
	void Start () {
		speed = 5f;
	}

	// Update is called once per frame
	void Update () {
		Vector3 pos = transform.position;
		Vector3 max = Camera.main.ViewportToWorldPoint (new Vector3 (1, 1));
		transform.position += Vector3.up * speed * Time.deltaTime * 1;

		if (transform.position.y > max.y) {
			Destroy (gameObject);
		}
	}

	void OnTriggerEnter2D(Collider2D waste)
	{
		if ((waste.gameObject.tag == "RecycleTag")||
			(waste.gameObject.tag == "WasteTag") || 
			(waste.gameObject.tag == "TrashTag")) {
			Destroy (gameObject);
		}
	}
}

