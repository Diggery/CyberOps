using UnityEngine;
using System.Collections;

public class RagdollConfigCombot : RagdollConfig {
	
    public override RagdollControl Init() {
					
		RagdollControl ragDollControl = gameObject.AddComponent<RagdollControl>();

		setUpData.layerName = "Ragdoll";
		
        setUpData.rootTransform = transform.Find("Combot:Combot_Skeleton/Combot:RootMotion_Skel/Combot:Hips_Skel");
		if (!setUpData.rootTransform) Debug.Log ("Can't find root on " + transform.name);
        setUpData.rootForward = Vector3.up;

        RagdollControl.JointData root = new RagdollControl.JointData(setUpData.rootTransform);
        root.collision.type = RagdollControl.ColliderType.Box;
        root.collision.center = new Vector3(0.0f, 0.06f, 0.0f);
        root.collision.size = new Vector3(0.35f, 0.5f, 0.3f);
        root.joint.axis = new Vector3(-1.0f, 0.0f, .0f);
        root.joint.swingAxis = new Vector3(.0f, 1.0f, 0.0f);
        setUpData.joints.Add(root);

        RagdollControl.JointData torso = new RagdollControl.JointData("Combot:Spine_Skel/Combot:Torso_Skel", root.transform);
        torso.collision.type = RagdollControl.ColliderType.Box;
        torso.collision.center = new Vector3(0.0f, 0.05f, 0.0f);
        torso.collision.size = new Vector3(0.5f, 0.4f, 0.35f);
        torso.joint.axis = new Vector3(-1.0f, 0.0f, .0f);
        torso.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f); 
        setUpData.joints.Add(torso);

        RagdollControl.JointData head = new RagdollControl.JointData("Combot:Neck_Skel/Combot:Head_Skel", torso.transform);
        head.collision.type = RagdollControl.ColliderType.Box;
        head.collision.center = new Vector3(0.0f, 0.1f, 0.03f);
        head.collision.size = new Vector3(0.25f, 0.3f, 0.5f);
        head.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
        head.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f); 
        setUpData.joints.Add(head);

        RagdollControl.JointData leftUpperLeg = new RagdollControl.JointData("Combot:LeftUpperLeg_Skel", root.transform);
        leftUpperLeg.collision.type = RagdollControl.ColliderType.CapsuleY;
        leftUpperLeg.collision.center = new Vector3(0.0f, 0.18f, 0.0f);
        leftUpperLeg.collision.radius = 0.10f;
        leftUpperLeg.collision.height = 0.45f;
        leftUpperLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
        leftUpperLeg.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
        leftUpperLeg.joint.lowTwistLimit = -35.0f;
        leftUpperLeg.joint.highTwistLimit = 35.0f;
        leftUpperLeg.joint.swing1Limit = 35.0f;
        leftUpperLeg.joint.swing2Limit = 35.0f;
        setUpData.joints.Add(leftUpperLeg);

        RagdollControl.JointData leftLowerLeg = new RagdollControl.JointData("Combot:LeftLowerLeg_Skel", leftUpperLeg.transform);
        leftLowerLeg.collision.type = RagdollControl.ColliderType.CapsuleY;
        leftLowerLeg.collision.center =  new Vector3(0.0f, 0.33f, 0.0f);
        leftLowerLeg.collision.radius = 0.15f;
        leftLowerLeg.collision.height = 0.55f;
        leftLowerLeg.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
        leftLowerLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 0.0f);
        leftLowerLeg.joint.lowTwistLimit = 00.0f;
        leftLowerLeg.joint.highTwistLimit = 90.0f;
        leftLowerLeg.joint.swing1Limit = 5.0f;
        leftLowerLeg.joint.swing2Limit = 5.0f;
        setUpData.joints.Add(leftLowerLeg);

        RagdollControl.JointData rightUpperLeg = new RagdollControl.JointData("Combot:RightUpperLeg_Skel", root.transform);
        rightUpperLeg.collision.type = RagdollControl.ColliderType.CapsuleY;
        rightUpperLeg.collision.center = new Vector3(0.0f, -0.18f, 0.0f);
        rightUpperLeg.collision.radius = 0.10f;
        rightUpperLeg.collision.height = 0.45f;
        rightUpperLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
        rightUpperLeg.joint.swingAxis = new Vector3(0.0f, 1.0f, 1.0f);
        rightUpperLeg.joint.lowTwistLimit = -35.0f;
        rightUpperLeg.joint.highTwistLimit = 35.0f;
        rightUpperLeg.joint.swing1Limit = 35.0f;
        rightUpperLeg.joint.swing2Limit = 35.0f;
        setUpData.joints.Add(rightUpperLeg);

        RagdollControl.JointData rightLowerLeg = new RagdollControl.JointData("Combot:RightLowerLeg_Skel", rightUpperLeg.transform);
        rightLowerLeg.collision.type = RagdollControl.ColliderType.CapsuleY;
        rightLowerLeg.collision.center = new Vector3(0.0f, -0.33f, 0.0f);
        rightLowerLeg.collision.radius = 0.15f;
        rightLowerLeg.collision.height = 0.55f;
        rightLowerLeg.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
        rightLowerLeg.joint.swingAxis = new Vector3(0.0f, -1.0f, 0.0f);
        rightLowerLeg.joint.lowTwistLimit = -90.0f;
        rightLowerLeg.joint.highTwistLimit = 00.0f;
        rightLowerLeg.joint.swing1Limit = 5.0f;
        rightLowerLeg.joint.swing2Limit = 5.0f;
        setUpData.joints.Add(rightLowerLeg);

        RagdollControl.JointData leftUpperArm = new RagdollControl.JointData("Combot:LeftClav_Skel/Combot:LeftUpperArm_Skel", torso.transform);
        leftUpperArm.collision.type = RagdollControl.ColliderType.CapsuleY;
        leftUpperArm.collision.center = new Vector3(0.0f, 0.11f, 0.0f);
        leftUpperArm.collision.radius = 0.15f;
        leftUpperArm.collision.height = 0.50f;
        leftUpperArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
        leftUpperArm.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
        setUpData.joints.Add(leftUpperArm);

        RagdollControl.JointData leftLowerArm = new RagdollControl.JointData("Combot:LeftLowerArm_Skel", leftUpperArm.transform);
        leftLowerArm.collision.type = RagdollControl.ColliderType.CapsuleY;
        leftLowerArm.collision.center = new Vector3(0.0f, 0.2f, -0.03f);
        leftLowerArm.collision.radius = 0.1f;
        leftLowerArm.collision.height = 0.4f;
        leftLowerArm.joint.axis = new Vector3(1.0f, 0.0f, 0.0f);
        leftLowerArm.joint.swingAxis = new Vector3(0.0f, 0.0f, 1.0f);
        leftLowerArm.joint.lowTwistLimit = -90.0f;
        leftLowerArm.joint.highTwistLimit = 30.0f;
        leftLowerArm.joint.swing1Limit = 5.0f;
        leftLowerArm.joint.swing2Limit = 5.0f;
        setUpData.joints.Add(leftLowerArm);

        RagdollControl.JointData rightUpperArm = new RagdollControl.JointData("Combot:RightClav_Skel/Combot:RightUpperArm_Skel", torso.transform);
        rightUpperArm.collision.type = RagdollControl.ColliderType.CapsuleY;
        rightUpperArm.collision.center = new Vector3(0.0f, -0.11f, 0.0f);
        rightUpperArm.collision.radius = 0.15f;
        rightUpperArm.collision.height = 0.50f;
        rightUpperArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
        rightUpperArm.joint.swingAxis = new Vector3(0.0f, 0.0f, -1.0f);
        setUpData.joints.Add(rightUpperArm);

        RagdollControl.JointData rightLowerArm = new RagdollControl.JointData("Combot:RightLowerArm_Skel", rightUpperArm.transform);
        rightLowerArm.collision.type = RagdollControl.ColliderType.CapsuleY;
        rightLowerArm.collision.center = new Vector3(0.0f, -0.2f, 0.03f);
        rightLowerArm.collision.radius = 0.1f;
        rightLowerArm.collision.height = 0.4f;
        rightLowerArm.joint.axis = new Vector3(-1.0f, 0.0f, 0.0f);
        rightLowerArm.joint.swingAxis = new Vector3(0.0f, 0.0f, -1.0f);
        rightLowerArm.joint.lowTwistLimit = -90.0f;
        rightLowerArm.joint.highTwistLimit = 30.0f;
        rightLowerArm.joint.swing1Limit = 5.0f;
        rightLowerArm.joint.swing2Limit = 5.0f;
        setUpData.joints.Add(rightLowerArm);

        setUpData.rightHand = rightLowerArm.transform.Find("Combot:RightHand_Skel/Combot:RightHand_Attach");
        setUpData.leftHand = leftLowerArm.transform.Find("Combot:LeftHand_Skel/Combot:LeftHand_Attach");
            
		ragDollControl.SetUp(setUpData);

        Destroy (this);
        return ragDollControl;
    }
}
