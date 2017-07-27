// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33030,y:32701,varname:node_4013,prsc:2|emission-6905-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32443,y:32712,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2636,x:32443,y:32895,ptovrint:False,ptlb:MainTexure,ptin:_MainTexure,varname:node_2636,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False|UVIN-4884-OUT;n:type:ShaderForge.SFN_Multiply,id:6905,x:32659,y:32840,varname:node_6905,prsc:2|A-1304-RGB,B-2636-RGB;n:type:ShaderForge.SFN_Panner,id:3742,x:31685,y:33071,varname:node_3742,prsc:2,spu:1,spv:1|UVIN-5679-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:5679,x:31491,y:33071,varname:node_5679,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5856,x:31881,y:33071,ptovrint:False,ptlb:node_5856,ptin:_node_5856,varname:node_5856,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3742-UVOUT;n:type:ShaderForge.SFN_Add,id:4884,x:32127,y:32824,varname:node_4884,prsc:2|A-5868-UVOUT,B-8618-OUT;n:type:ShaderForge.SFN_TexCoord,id:5868,x:31632,y:32802,varname:node_5868,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:8618,x:32104,y:33102,varname:node_8618,prsc:2|A-5856-R,B-2573-OUT;n:type:ShaderForge.SFN_Slider,id:2573,x:31783,y:33294,ptovrint:False,ptlb:node_2573,ptin:_node_2573,varname:node_2573,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;proporder:1304-2636-5856-2573;pass:END;sub:END;*/

Shader "Shader Forge/shader03" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTexure ("MainTexure", 2D) = "white" {}
        _node_5856 ("node_5856", 2D) = "white" {}
        _node_2573 ("node_2573", Range(0, 5)) = 0
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
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _MainTexure; uniform float4 _MainTexure_ST;
            uniform sampler2D _node_5856; uniform float4 _node_5856_ST;
            uniform float _node_2573;
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
////// Lighting:
////// Emissive:
                float4 node_3616 = _Time + _TimeEditor;
                float2 node_3742 = (i.uv0+node_3616.g*float2(1,1));
                float4 _node_5856_var = tex2D(_node_5856,TRANSFORM_TEX(node_3742, _node_5856));
                float2 node_4884 = (i.uv0+(_node_5856_var.r*_node_2573));
                float4 _MainTexure_var = tex2D(_MainTexure,TRANSFORM_TEX(node_4884, _MainTexure));
                float3 emissive = (_Color.rgb*_MainTexure_var.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
