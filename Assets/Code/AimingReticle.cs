using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AimingReticle : MonoBehaviour {

    public int reticleSegments = 20;

    Renderer aimingRenderer;
    Transform normalReticle;

    public AnimationCurve openCurve;
    public float reticleOpenDiameter = 1.0f;
    public float reticleThickness = 0.1f;

    float reticleInnerDiameter = 0.0f;
    float reticleOuterDiameter = 0.1f;

    Color clearColor = new Color(1.0f, 1.0f, 1.0f, 0.0f);
    Color openColor = new Color(1.0f, 1.0f, 1.0f, 0.25f);

    Material scopeMat;
    Renderer scopeRenderer;
    Transform scopeView;

    ScopeControl scope;
    public ScopeControl Scope { 
        set { 
            scope = value;
            scopeMat = transform.Find("ScopeView").GetComponent<Renderer>().material;
            scopeMat.mainTexture = scope.ScopeTexture; 
        } 
    }

    bool isVisible;
    public bool IsVisible {
        get {return isVisible; }
        set {
            isVisible = value;
            if (!aimingRenderer)
                aimingRenderer = GetComponent<Renderer>();
            aimingRenderer.enabled = isVisible;

            if (!scopeRenderer)
                scopeRenderer = scopeView.GetComponent<Renderer>();
            
            scopeRenderer.enabled = isVisible;
            
            if (scope)
                scope.InUse = isVisible;
        }
    }

    float sizeInMeters = 1.0f;

	void Start () {
        aimingRenderer = GetComponent<Renderer>();

        normalReticle = transform.parent.Find("Reticle");

        sizeInMeters = normalReticle.GetComponent<GvrControllerReticleVisual>().sizeMeters;
        CreateReticleVertices();
        scopeView = transform.Find("ScopeView");
        scopeRenderer = scopeView.GetComponent<Renderer>();
        scopeMat = scopeRenderer.material;
        IsVisible = false;
	}
	
	void Update () {
        UpdateDiameters();
        UpdatePosition();
	}

    void OnWillRenderObject() {
        UpdateScale(Camera.current);
    }

    public void SetRadius(float amount) {
        if (!aimingRenderer)
            return;
        
        reticleOuterDiameter = Mathf.Lerp (0.1f, reticleOpenDiameter, openCurve.Evaluate(amount * 2));
        float innerAmount = openCurve.Evaluate((amount * 2) - 1);
        reticleInnerDiameter = Mathf.Lerp (0.0f, reticleOpenDiameter - reticleThickness, innerAmount);
        aimingRenderer.material.color = Color.Lerp(Color.white, openColor, innerAmount);
        if (scope && scope.IsActive)
            scopeMat.color = Color.Lerp(clearColor, Color.white, innerAmount);
    }

    void UpdateDiameters() {
        aimingRenderer.material.SetFloat("_InnerDiameter", reticleInnerDiameter);
        aimingRenderer.material.SetFloat("_OuterDiameter", reticleOuterDiameter);
        if (scope && scope.IsActive)
            scopeView.localScale = new Vector3(reticleInnerDiameter, reticleInnerDiameter, reticleInnerDiameter);
    }

    void UpdatePosition() {
        transform.position = normalReticle.position;
    }

    void UpdateScale(Camera camera) {
        if (camera == null) {
            return;
        }

        float scale = sizeInMeters;

        float reticleDistanceFromCamera = (transform.position - camera.transform.position).magnitude;
        scale *= reticleDistanceFromCamera;

        transform.localScale = new Vector3(scale, scale, scale);
    }


    private void CreateReticleVertices() {
        Mesh mesh = new Mesh();
        gameObject.AddComponent<MeshFilter>();
        GetComponent<MeshFilter>().mesh = mesh;

        int segments_count = reticleSegments;
        int vertex_count = (segments_count+1)*2;

        Vector3[] vertices = new Vector3[vertex_count];

        const float kTwoPi = Mathf.PI * 2.0f;
        int vi = 0;
        for (int si = 0; si <= segments_count; ++si) {

            float angle = (float)si / (float)(segments_count) * kTwoPi;

            float x = Mathf.Sin(angle);
            float y = Mathf.Cos(angle);

            vertices[vi++] = new Vector3(x, y, 0.0f); // Outer vertex.
            vertices[vi++] = new Vector3(x, y, 1.0f); // Inner vertex.
        }

        int indices_count = (segments_count+1)*3*2;
        int[] indices = new int[indices_count];

        int vert = 0;
        int idx = 0;
        for (int si = 0; si < segments_count; ++si) {
            indices[idx++] = vert+1;
            indices[idx++] = vert;
            indices[idx++] = vert+2;

            indices[idx++] = vert+1;
            indices[idx++] = vert+2;
            indices[idx++] = vert+3;

            vert += 2;
        }

        mesh.vertices = vertices;
        mesh.triangles = indices;
        mesh.RecalculateBounds();

    }
}
