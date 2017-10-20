// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|normal-5427-RGB,emission-7235-RGB,alpha-7235-A,clip-4895-OUT;n:type:ShaderForge.SFN_Tex2d,id:7235,x:32450,y:32817,ptovrint:False,ptlb:Emission,ptin:_Emission,varname:node_7235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:f36d9819b6d9d0a41af3edc639801d7c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:4895,x:32732,y:33167,varname:node_4895,prsc:2|A-9835-OUT,B-292-OUT;n:type:ShaderForge.SFN_Slider,id:1705,x:31758,y:33018,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_1705,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_FragmentPosition,id:5746,x:31921,y:33400,varname:node_5746,prsc:2;n:type:ShaderForge.SFN_Add,id:9835,x:32327,y:33122,varname:node_9835,prsc:2|A-9198-OUT,B-9347-OUT;n:type:ShaderForge.SFN_Vector1,id:9347,x:31929,y:33200,varname:node_9347,prsc:2,v1:0.45;n:type:ShaderForge.SFN_Multiply,id:9198,x:32118,y:33025,varname:node_9198,prsc:2|A-1705-OUT,B-1241-OUT;n:type:ShaderForge.SFN_Vector1,id:1241,x:31889,y:33107,varname:node_1241,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Multiply,id:292,x:32205,y:33423,varname:node_292,prsc:2|A-7571-OUT,B-5746-Z;n:type:ShaderForge.SFN_Vector1,id:7571,x:31921,y:33307,varname:node_7571,prsc:2,v1:-1;n:type:ShaderForge.SFN_Tex2d,id:5427,x:32488,y:32623,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_5427,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;proporder:7235-1705-5427;pass:END;sub:END;*/

Shader "Shader Forge/Pos23" {
    Properties {
        _Emission ("Emission", 2D) = "white" {}
        _Opacity ("Opacity", Range(0, 1)) = 1
        _Normal ("Normal", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _Emission; uniform float4 _Emission_ST;
            uniform float _Opacity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                clip((((_Opacity*0.1)+0.45)+((-1.0)*i.posWorld.b)) - 0.5);
////// Lighting:
////// Emissive:
                float4 _Emission_var = tex2D(_Emission,TRANSFORM_TEX(i.uv0, _Emission));
                float3 emissive = _Emission_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,_Emission_var.a);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                clip((((_Opacity*0.1)+0.45)+((-1.0)*i.posWorld.b)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
