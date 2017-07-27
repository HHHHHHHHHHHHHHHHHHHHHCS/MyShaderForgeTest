// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33125,y:32725,varname:node_3138,prsc:2|emission-859-RGB,voffset-23-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32501,y:32368,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_NormalVector,id:2920,x:31910,y:33132,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:6372,x:32344,y:33359,ptovrint:False,ptlb:node_6372,ptin:_node_6372,varname:node_6372,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2529975,max:1;n:type:ShaderForge.SFN_Multiply,id:23,x:32849,y:33114,varname:node_23,prsc:2|A-2920-OUT,B-6372-OUT,C-7820-OUT;n:type:ShaderForge.SFN_TexCoord,id:3524,x:32440,y:32777,varname:node_3524,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Step,id:7820,x:32680,y:32871,varname:node_7820,prsc:2|A-3524-V,B-9304-OUT;n:type:ShaderForge.SFN_Slider,id:9304,x:32336,y:33023,ptovrint:False,ptlb:node_9304,ptin:_node_9304,varname:node_9304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Transform,id:3874,x:32017,y:32601,varname:node_3874,prsc:2,tffrom:0,tfto:3|IN-2920-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1032,x:32184,y:32601,varname:node_1032,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3874-XYZ;n:type:ShaderForge.SFN_Tex2d,id:859,x:32680,y:32624,ptovrint:False,ptlb:node_859,ptin:_node_859,varname:node_859,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e6e7abfd01541984db62a8d677d6b2d7,ntxv:0,isnm:False|UVIN-2333-OUT;n:type:ShaderForge.SFN_Clamp01,id:2333,x:32518,y:32611,varname:node_2333,prsc:2|IN-4438-OUT;n:type:ShaderForge.SFN_RemapRange,id:4438,x:32355,y:32593,varname:node_4438,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-1032-OUT;proporder:7241-6372-9304-859;pass:END;sub:END;*/

Shader "Shader Forge/shader07" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_6372 ("node_6372", Range(0, 1)) = 0.2529975
        _node_9304 ("node_9304", Range(0, 1)) = 1
        _node_859 ("node_859", 2D) = "white" {}
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
            uniform float _node_6372;
            uniform float _node_9304;
            uniform sampler2D _node_859; uniform float4 _node_859_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_node_6372*step(o.uv0.g,_node_9304));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float2 node_1032 = mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg;
                float2 node_2333 = saturate((node_1032*2.0+-1.0));
                float4 _node_859_var = tex2D(_node_859,TRANSFORM_TEX(node_2333, _node_859));
                float3 emissive = _node_859_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _node_6372;
            uniform float _node_9304;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_node_6372*step(o.uv0.g,_node_9304));
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
