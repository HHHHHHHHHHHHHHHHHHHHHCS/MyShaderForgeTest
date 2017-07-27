// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33030,y:32701,varname:node_4013,prsc:2|emission-6905-OUT,clip-9745-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32443,y:32712,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2636,x:32443,y:32895,ptovrint:False,ptlb:MainTexure,ptin:_MainTexure,varname:node_2636,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False|UVIN-4884-OUT;n:type:ShaderForge.SFN_Multiply,id:6905,x:32659,y:32840,varname:node_6905,prsc:2|A-1304-RGB,B-2636-RGB;n:type:ShaderForge.SFN_Panner,id:3742,x:31570,y:33021,varname:node_3742,prsc:2,spu:1,spv:0|UVIN-8259-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5856,x:31934,y:33061,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_5856,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3742-UVOUT;n:type:ShaderForge.SFN_Add,id:4884,x:32127,y:32824,varname:node_4884,prsc:2|A-5868-UVOUT,B-8618-OUT;n:type:ShaderForge.SFN_TexCoord,id:5868,x:31632,y:32802,varname:node_5868,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:8618,x:32104,y:33102,varname:node_8618,prsc:2|A-5856-R,B-2573-OUT;n:type:ShaderForge.SFN_Slider,id:2573,x:31764,y:33273,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_2573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.01,max:5;n:type:ShaderForge.SFN_TexCoord,id:8259,x:31299,y:33028,varname:node_8259,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Noise,id:1469,x:32163,y:33330,varname:node_1469,prsc:2;n:type:ShaderForge.SFN_Slider,id:5905,x:32100,y:33537,ptovrint:False,ptlb:RongJie,ptin:_RongJie,varname:node_5905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.01,max:1;n:type:ShaderForge.SFN_Multiply,id:9745,x:32457,y:33315,varname:node_9745,prsc:2|A-1469-OUT,B-5905-OUT;proporder:1304-2636-5856-2573-5905;pass:END;sub:END;*/

Shader "Shader Forge/shader04" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTexure ("MainTexure", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 5)) = 0.01
        _RongJie ("RongJie", Range(0.01, 1)) = 0.01
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTexure; uniform float4 _MainTexure_ST;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Intensity;
            uniform float _RongJie;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_1469_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_1469_rnd = 4.789*sin(489.123*(node_1469_skew));
                float node_1469 = frac(node_1469_rnd.x*node_1469_rnd.y*(1+node_1469_skew.x));
                clip((node_1469*_RongJie) - 0.5);
////// Lighting:
////// Emissive:
                float4 node_2106 = _Time + _TimeEditor;
                float2 node_3742 = (i.uv0+node_2106.g*float2(1,0));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_3742, _Noise));
                float2 node_4884 = (i.uv0+(_Noise_var.r*_Intensity));
                float4 _MainTexure_var = tex2D(_MainTexure,TRANSFORM_TEX(node_4884, _MainTexure));
                float3 emissive = (_Color.rgb*_MainTexure_var.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _RongJie;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_1469_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_1469_rnd = 4.789*sin(489.123*(node_1469_skew));
                float node_1469 = frac(node_1469_rnd.x*node_1469_rnd.y*(1+node_1469_skew.x));
                clip((node_1469*_RongJie) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
