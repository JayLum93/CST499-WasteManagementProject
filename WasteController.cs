using UnityEngine;
using System.Collections;

public class WasteController : MonoBehaviour {

	int myInt;
	public Camera cam;
	public GameObject[] WasteItem;

	private float maxWidth;
	// Use this for initialization

	void Start () {

		if (cam == null) {
			cam = Camera.main;
		}

		Vector3 upperCorner = new Vector3 (Screen.width, Screen.height, 0.0f);
		Vector3 targetWidth = cam.ScreenToWorldPoint (upperCorner);

		float itemWidth = WasteItem [myInt].GetComponent<Renderer> ().bounds.extents.x;
		maxWidth = targetWidth.x - itemWidth;

		StartCoroutine (Spawn ());
	}

	IEnumerator Spawn(){
		yield return new WaitForSeconds (5.0f);
		//spawn Randomly

		while (true) {
			Vector3 spawnPosition = new Vector3 (Random.Range (-maxWidth, maxWidth)
				, transform.position.y, 0.0f);
			//no rotation
			Quaternion spawnRotation = Quaternion.identity;


			Instantiate (WasteItem[myInt], spawnPosition, spawnRotation);

			yield return new WaitForSeconds (Random.Range (2.0f, 3.0f));
		}
	}

	// Update is called once per frame
	void Update () {
		myInt = Random.Range (0, WasteItem.Length);
	}
}
