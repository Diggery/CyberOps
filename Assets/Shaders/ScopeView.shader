

Shader "Custom/ScopeView" {
	  Properties {
            _Color1  ("Color1", Color) = ( 1, 1, 1, 1 )
            _Color2  ("Color2", Color) = ( 1, 1, 1, 1 )
            _Color3  ("Color3", Color) = ( 1, 1, 1, 1 )
		    _MainTex ("Texture", 2D) = "white" {}
		    _MaskTex ("Mask", 2D) = "white" {}
	  }

  SubShader {
	    Tags { "Queue"="Overlay" "IgnoreProjector"="True" "RenderType"="Transparent" }
	    Pass {
			Blend SrcAlpha OneMinusSrcAlpha
			AlphaTest Off
			Cull Back
			Lighting Off
			ZWrite Off
			ZTest Always

			Fog { Mode Off }
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

            uniform float4 _Color1;
            uniform float4 _Color2;
            uniform float4 _Color3;
			sampler2D _MainTex;
			sampler2D _MaskTex;
			float4 _MainTex_ST;

			struct vertexInput {
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct fragmentInput{
				float4 position : SV_POSITION;
				float2 uv : TEXCOORD0;
			};

			fragmentInput vert(vertexInput i) {
			    fragmentInput o;
			    o.uv = TRANSFORM_TEX(i.uv, _MainTex);
			    o.position = UnityObjectToClipPos (i.vertex);
			    return o;
			}

			fixed4 frag(fragmentInput i) : SV_Target {
				fixed4 tex = tex2D(_MainTex, i.uv);
				fixed4 mask = tex2D(_MaskTex, i.uv);
                tex = lerp(tex, _Color1, mask.r);
                tex = lerp(tex, _Color2, mask.g);
                tex = lerp(tex, _Color3, mask.b);
			    tex.a = mask.a + mask.r + mask.g + mask.b;
			    return tex;
			}
			ENDCG
		}
  	}
}
