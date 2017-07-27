// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|custl-2423-OUT;n:type:ShaderForge.SFN_ScreenPos,id:2345,x:32071,y:32801,varname:node_2345,prsc:2,sctp:0;n:type:ShaderForge.SFN_SceneColor,id:3523,x:32850,y:32804,varname:node_3523,prsc:2|UVIN-7433-UVOUT;n:type:ShaderForge.SFN_RemapRange,id:7212,x:32254,y:32801,varname:node_7212,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2345-UVOUT;n:type:ShaderForge.SFN_Parallax,id:7433,x:32536,y:32810,varname:node_7433,prsc:2|UVIN-7212-OUT,HEI-2949-OUT,DEP-3222-OUT,REF-6393-OUT;n:type:ShaderForge.SFN_Slider,id:2949,x:32146,y:32975,ptovrint:False,ptlb:Hei,ptin:_Hei,varname:node_2949,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3222,x:32146,y:33076,ptovrint:False,ptlb:Dep,ptin:_Dep,varname:node_3222,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:6393,x:32158,y:33196,ptovrint:False,ptlb:Ref,ptin:_Ref,varname:node_6393,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_LightVector,id:6841,x:31686,y:33315,varname:node_6841,prsc:2;n:type:ShaderForge.SFN_Dot,id:3913,x:31960,y:33392,varname:node_3913,prsc:2,dt:1|A-6841-OUT,B-6831-OUT;n:type:ShaderForge.SFN_Exp,id:7936,x:32063,y:33596,varname:node_7936,prsc:2,et:0|IN-5613-OUT;n:type:ShaderForge.SFN_Slider,id:5613,x:31595,y:33775,ptovrint:False,ptlb:SpecGloss,ptin:_SpecGloss,varname:node_5613,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1079,x:32301,y:33428,varname:node_1079,prsc:2|A-3913-OUT,B-7936-OUT;n:type:ShaderForge.SFN_Slider,id:5734,x:32273,y:33683,ptovrint:False,ptlb:SpecIntensity,ptin:_SpecIntensity,varname:node_5734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:2423,x:32922,y:33215,varname:node_2423,prsc:2|A-3523-RGB,B-9800-OUT;n:type:ShaderForge.SFN_Multiply,id:9800,x:32655,y:33452,varname:node_9800,prsc:2|A-1079-OUT,B-5734-OUT;n:type:ShaderForge.SFN_ViewVector,id:6831,x:31669,y:33582,varname:node_6831,prsc:2;proporder:2949-3222-6393-5613-5734;pass:END;sub:END;*/

Shader "Shader Forge/18" {
    Properties {
        _Hei ("Hei", Range(0, 1)) = 0
        _Dep ("Dep", Range(0, 1)) = 0
        _Ref ("Ref", Range(0, 1)) = 0
        _SpecGloss ("SpecGloss", Range(0, 1)) = 0
        _SpecIntensity ("SpecIntensity", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Hei;
            uniform float _Dep;
            uniform float _Ref;
            uniform float _SpecGloss;
            uniform float _SpecIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float3 finalColor = (tex2D( _GrabTexture, (_Dep*(_Hei - _Ref)*mul(tangentTransform, viewDirection).xy + (i.screenPos.rg*0.5+0.5)).rg).rgb+((max(0,dot(lightDirection,viewDirection))*exp(_SpecGloss))*_SpecIntensity));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Hei;
            uniform float _Dep;
            uniform float _Ref;
            uniform float _SpecGloss;
            uniform float _SpecIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = (tex2D( _GrabTexture, (_Dep*(_Hei - _Ref)*mul(tangentTransform, viewDirection).xy + (i.screenPos.rg*0.5+0.5)).rg).rgb+((max(0,dot(lightDirection,viewDirection))*exp(_SpecGloss))*_SpecIntensity));
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
