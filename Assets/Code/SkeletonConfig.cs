using UnityEngine;
using System.Collections;

public class SkeletonConfig : MonoBehaviour {
	
    protected SkeletonControl.SkeletonData setUpData = new SkeletonControl.SkeletonData();

    public virtual SkeletonControl Init() {

        SkeletonControl skeletonControl = gameObject.AddComponent<SkeletonControl>();

		skeletonControl.SetUp(setUpData);

        Destroy (this);
        return skeletonControl;
    }
}
