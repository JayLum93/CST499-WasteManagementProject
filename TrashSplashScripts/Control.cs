using UnityEngine;
using System.Collections;

public class Control : MonoBehaviour {

	GameObject LifeUIText;

	public GameObject Trashbullet;
	public GameObject Recyclebullet;
	public GameObject Wastebullet;
	public GameObject BulletPosition;
	public GameObject HurtFX;
	public AudioSource shootingbags;
	public AudioSource RacoonPunch;

	public float speed = 2f;
	public float otterSize = 0.5f;
	private float minX, maxX, minY, maxY;
	float timeLeft = 0.5f;

	void Start(){
		LifeUIText = GameObject.FindGameObjectWithTag ("LifeTag"); 
		// If you want the min max values to update if the resolution changes 
		// set them in update else set them in Start
		float camDistance = Vector3.Distance(transform.position, Camera.main.transform.position);
		Vector3 bottomCorner = Camera.main.ViewportToWorldPoint(new Vector3(0,0, camDistance));
		Vector3 topCorner = Camera.main.ViewportToWorldPoint(new Vector3(1,1, camDistance));

		minX = bottomCorner.x;
		maxX = topCorner.x;
		minY = bottomCorner.y;
		maxY = topCorner.y;
	}

	private void Update () 
	{
		Vector3 pos = transform.position;
		timeLeft -= Time.deltaTime;

		if (Input.GetKey (KeyCode.LeftArrow)||Input.GetKey (KeyCode.A)) {
			transform.position += Vector3.left * speed * Time.deltaTime * 2;
			transform.localEulerAngles = new Vector3 (0, 0, 0);
			if (pos.x < minX+0.2f) {
				pos.x = minX+0.2f;
				transform.position = pos;
			}
		}
		if (Input.GetKey (KeyCode.RightArrow)||Input.GetKey (KeyCode.D)) {
			transform.position += Vector3.right * speed * Time.deltaTime * 2;
			transform.localEulerAngles = new Vector3 (0, 180, 0);
				if (pos.x > maxX-0.2f) {
					pos.x = maxX-0.2f;
					transform.position = pos;
				}
		}
		if (Input.GetKey (KeyCode.UpArrow)||Input.GetKey (KeyCode.W)) {
			transform.position += Vector3.up * speed * Time.deltaTime * 1;
				if (pos.y > maxY-2.5f) {
					pos.y = maxY-2.5f;
					transform.position = pos;
				}
		}
		if (Input.GetKey (KeyCode.DownArrow)||Input.GetKey (KeyCode.S)) {
			transform.position += Vector3.down * speed * Time.deltaTime * 1;
			if (pos.y < minY+0.4f){
				pos.y = minY+0.4f;
				transform.position = pos;
			}

		}
			
		if (Input.GetKey (KeyCode.Z)||Input.GetKey (KeyCode.Alpha8)) {
			if (timeLeft < 0) {
				shootingbags.Play();
				GameObject bullet01 = (GameObject)Instantiate (Trashbullet);
				bullet01.transform.position = BulletPosition.transform.position;
				timeLeft = 0.5f;
			}
		}

		if (Input.GetKey (KeyCode.X)||Input.GetKey (KeyCode.Alpha9)) {
			if (timeLeft < 0) {
				shootingbags.Play();
				GameObject bullet02 = (GameObject)Instantiate (Recyclebullet);
				bullet02.transform.position = BulletPosition.transform.position;
				timeLeft = 0.5f;
			}
		}	

		if (Input.GetKey (KeyCode.C)||Input.GetKey (KeyCode.Alpha0)) {
			if (timeLeft < 0) {
				shootingbags.Play();
				GameObject bullet03 = (GameObject)Instantiate (Wastebullet);
				bullet03.transform.position = BulletPosition.transform.position;
				timeLeft = 0.5f;
			}
		}//transform.position = pos;

	}

	void OnTriggerEnter2D(Collider2D enemy)
	{
		if (enemy.gameObject.tag == "Enemy") {
			LifeUIText.GetComponent<LifeCounter> ().Life--;
			RacoonPunch.Play ();
			PlayFX ();
		}
	}

	void PlayFX(){
		Vector3 pos = transform.position;
		GameObject effects = (GameObject)Instantiate(HurtFX);

		effects.transform.position = pos;
	}
}