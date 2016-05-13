using UnityEngine;
using System.Collections;

public class RacountMove : MonoBehaviour {
	public float speed;

	// Use this for initialization
	void Start () {
		speed = 2.5f;
	}

	// Update is called once per frame
	void Update () {
		Vector3 pos = transform.position;
		Vector3 max = Camera.main.ViewportToWorldPoint (new Vector3 (1, 1));
		transform.position += Vector3.right * speed * Time.deltaTime * 1;

		if (transform.position.x > max.x) {
			Destroy (gameObject);
		}
	}
}
