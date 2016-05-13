using UnityEngine;
using System.Collections;

public class SetScreenSize : MonoBehaviour {
		
	// Update to window
	public void SetToWindow () {
		Screen.SetResolution (1024, 576, false);
	}
	// Update to Full
	public void SetToFull () {
		Screen.SetResolution (1280, 720, true);
	}

}
