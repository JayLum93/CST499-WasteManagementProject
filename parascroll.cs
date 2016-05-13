using UnityEngine;
using System.Collections;

public class parascroll : MonoBehaviour {

	public float speed = 0.5f;

	private Renderer rendered;

	void Start() {
		rendered = GetComponent<Renderer>();
	}

	// Update is called once per frame
	void Update () {
		Vector2 offset = new Vector2(Time.time * speed, 0);

		rendered.material.mainTextureOffset = offset;
	}
}
