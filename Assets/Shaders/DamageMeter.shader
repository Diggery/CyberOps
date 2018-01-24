

Shader "Custom/DamageMeter" {
    Properties {
        _MainTex ("Texture", 2D) = "white" {}
        _Outline  ("Outline Color", Color) = ( 1, 1, 1, 1 )
        _Fill  ("Fill Color", Color) = ( 1, 1, 1, 1 )
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

            uniform float4 _Outline;
            uniform float4 _Fill;
            sampler2D _MainTex;
            float4 _MainTex_ST;

            struct vertexInput {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
                float4 color : COLOR;

            };

            struct fragmentInput{
                float4 position : SV_POSITION;
                float2 uv : TEXCOORD0;
                float4 color : COLOR;

            };

            fragmentInput vert(vertexInput i) {
                fragmentInput o;
                o.uv = TRANSFORM_TEX(i.uv, _MainTex);
                o.position = UnityObjectToClipPos (i.vertex);
                o.color = i.color;
                return o;
            }

            fixed4 frag(fragmentInput i) : SV_Target {
                fixed4 tex = tex2D(_MainTex, i.uv);
                fixed4 outlineColor = _Outline;
                outlineColor.a *= tex.r * i.color.a;
                fixed4 fillColor = _Fill;
                fillColor.a *= tex.g * i.color.a;
                return lerp(fillColor, outlineColor , tex.r);
            }
        ENDCG
    }
}
}
