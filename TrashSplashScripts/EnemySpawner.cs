using UnityEngine;
using System.Collections;

public class EnemySpawner : MonoBehaviour {
	
	public Camera cam;
	public GameObject Enemy;
	int myInt;

	private float maxWidth;
	// Use this for initialization

	void Start () {

		if (cam == null) {
			cam = Camera.main;
		}
		Vector3 upperCorner = new Vector3 (Screen.width, Screen.height, 0.0f);
		Vector3 targetWidth = cam.ScreenToWorldPoint (upperCorner);

		float itemWidth1 = Enemy.GetComponent<Renderer>().bounds.extents.x;
		maxWidth = targetWidth.x - itemWidth1;

		StartCoroutine (Spawn ());
	}
	
	IEnumerator Spawn(){
		yield return new WaitForSeconds (2.0f);
		//spawn Randomly

		while (true) {
			Vector3 spawnPosition = new Vector3 (Random.Range (-maxWidth, maxWidth)
				, transform.position.y, 0.0f);
			//no rotation
			Quaternion spawnRotation = Quaternion.identity;


			Instantiate (Enemy, spawnPosition, spawnRotation);

			yield return new WaitForSeconds (Random.Range (2.0f, 3.0f));
		}
	}

	// Update is called once per frame
	void Update () {
		myInt = Random.Range (0, 9);
	}
}
