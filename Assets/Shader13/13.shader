// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|emission-7480-OUT;n:type:ShaderForge.SFN_VertexColor,id:8007,x:31891,y:32555,varname:node_8007,prsc:2;n:type:ShaderForge.SFN_ChannelBlend,id:3194,x:32460,y:32768,varname:node_3194,prsc:2,chbt:0|M-6942-RGB,R-9973-RGB,G-8754-RGB,B-4471-RGB;n:type:ShaderForge.SFN_Tex2d,id:9973,x:32148,y:32913,ptovrint:False,ptlb:node_9973,ptin:_node_9973,varname:node_9973,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:37f2601622a180946af899626dd1df67,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8754,x:32148,y:33098,ptovrint:False,ptlb:node_8754,ptin:_node_8754,varname:node_8754,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8132d6b257d4a9b49b062ad21bdc3688,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4471,x:32148,y:33298,ptovrint:False,ptlb:node_4471,ptin:_node_4471,varname:node_4471,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e079001c5493e4784807dda76fe30aeb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:7491,x:32148,y:32579,varname:node_7491,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:6942,x:31989,y:32734,ptovrint:False,ptlb:node_6942,ptin:_node_6942,varname:node_6942,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7480,x:32652,y:32653,varname:node_7480,prsc:2|A-7491-UVOUT,B-3194-OUT;proporder:9973-8754-4471-6942;pass:END;sub:END;*/

Shader "Shader Forge/13" {
    Properties {
        _node_9973 ("node_9973", 2D) = "white" {}
        _node_8754 ("node_8754", 2D) = "white" {}
        _node_4471 ("node_4471", 2D) = "white" {}
        _node_6942 ("node_6942", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_9973; uniform float4 _node_9973_ST;
            uniform sampler2D _node_8754; uniform float4 _node_8754_ST;
            uniform sampler2D _node_4471; uniform float4 _node_4471_ST;
            uniform sampler2D _node_6942; uniform float4 _node_6942_ST;
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
////// Lighting:
////// Emissive:
                float4 _node_6942_var = tex2D(_node_6942,TRANSFORM_TEX(i.uv0, _node_6942));
                float4 _node_9973_var = tex2D(_node_9973,TRANSFORM_TEX(i.uv0, _node_9973));
                float4 _node_8754_var = tex2D(_node_8754,TRANSFORM_TEX(i.uv0, _node_8754));
                float4 _node_4471_var = tex2D(_node_4471,TRANSFORM_TEX(i.uv0, _node_4471));
                float3 emissive = (float3(i.uv0,0.0)*(_node_6942_var.rgb.r*_node_9973_var.rgb + _node_6942_var.rgb.g*_node_8754_var.rgb + _node_6942_var.rgb.b*_node_4471_var.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
