

Shader "Custom/CombotGrid" {
    Properties {
        _MainTex ("Texture", 2D) = "white" {}
        _Scroll  ("ScrollAmount", Float) = 0
        _Color1  ("Color1", Color) = ( 1, 1, 1, 1 )
        _Color2  ("Color2", Color) = ( 1, 1, 1, 1 )
    }       

    SubShader {
        Tags { "Queue"="Overlay" "IgnoreProjector"="True" "RenderType"="Transparent" }
        Pass {
            Blend One One
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
            float _Scroll;
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
                float4 tex = tex2D(_MainTex, i.uv);
                float scroll1 = _Scroll * _Time * 5;
                fixed2 grad1UV = fixed2(0.5, tex.b + scroll1);
                fixed3 band1 = tex2D(_MainTex, grad1UV).rgb;
                float scroll2 = _Scroll * _Time * 2;
                fixed2 grad2UV = fixed2(0.5, tex.b + scroll2);
                fixed3 band2 = tex2D(_MainTex, grad2UV).rgb;
                fixed4 color = (_Color1 * band1.r) + (_Color2 * band2.g);
                color *= tex.a * i.color.a;
                color.a = tex.a * i.color.a;
                return color;
            }
            ENDCG
        }
    }
}
