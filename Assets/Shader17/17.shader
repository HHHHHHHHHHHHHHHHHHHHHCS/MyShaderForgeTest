// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|alpha-7721-OUT,clip-7321-OUT;n:type:ShaderForge.SFN_Slider,id:5642,x:32295,y:33172,ptovrint:False,ptlb:node_5642,ptin:_node_5642,varname:node_5642,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Vector1,id:7721,x:32912,y:32928,varname:node_7721,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7321,x:32694,y:33026,varname:node_7321,prsc:2|A-3591-U,B-5642-OUT;n:type:ShaderForge.SFN_Tex2d,id:1248,x:32041,y:32755,ptovrint:False,ptlb:node_1248,ptin:_node_1248,varname:node_1248,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:31f5a8611c4ed1245b18456206e798dc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Noise,id:9227,x:32024,y:32945,varname:node_9227,prsc:2;n:type:ShaderForge.SFN_Subtract,id:5965,x:32290,y:32626,varname:node_5965,prsc:2|A-1248-RGB,B-9227-OUT;n:type:ShaderForge.SFN_ComponentMask,id:5186,x:32433,y:32892,varname:node_5186,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8896-OUT;n:type:ShaderForge.SFN_Add,id:8896,x:32250,y:32872,varname:node_8896,prsc:2|A-1248-RGB,B-9227-OUT;n:type:ShaderForge.SFN_OneMinus,id:2809,x:32588,y:32815,varname:node_2809,prsc:2|IN-5186-OUT;n:type:ShaderForge.SFN_TexCoord,id:3591,x:32039,y:33120,varname:node_3591,prsc:2,uv:0,uaff:False;proporder:5642-1248;pass:END;sub:END;*/

Shader "Shader Forge/17" {
    Properties {
        _node_5642 ("node_5642", Range(0, 1)) = 1
        _node_1248 ("node_1248", 2D) = "white" {}
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
            uniform float _node_5642;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                clip((i.uv0.r*_node_5642) - 0.5);
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor,1.0);
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
            uniform float _node_5642;
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
                clip((i.uv0.r*_node_5642) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
