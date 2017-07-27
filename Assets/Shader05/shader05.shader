// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33030,y:32701,varname:node_4013,prsc:2|normal-5304-RGB,emission-9463-OUT,custl-9463-OUT;n:type:ShaderForge.SFN_VertexColor,id:7907,x:31857,y:32798,varname:node_7907,prsc:2;n:type:ShaderForge.SFN_ChannelBlend,id:9463,x:32540,y:32895,varname:node_9463,prsc:2,chbt:0|M-7907-RGB,R-8048-R,G-1694-G,B-3563-OUT;n:type:ShaderForge.SFN_Tex2d,id:1694,x:32261,y:32999,ptovrint:False,ptlb:node_1694,ptin:_node_1694,varname:node_1694,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1366,x:32038,y:33175,ptovrint:False,ptlb:node_1366,ptin:_node_1366,varname:node_1366,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5304,x:32693,y:32576,ptovrint:False,ptlb:node_5304,ptin:_node_5304,varname:node_5304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cf20bfced7e912046a9ce991a4d775ec,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Multiply,id:3563,x:32344,y:33314,varname:node_3563,prsc:2|A-1366-RGB,B-8455-RGB;n:type:ShaderForge.SFN_Color,id:8455,x:31984,y:33392,ptovrint:False,ptlb:node_8455,ptin:_node_8455,varname:node_8455,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.2879001,c3:0.2879001,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2171,x:32376,y:32687,ptovrint:False,ptlb:node_2171,ptin:_node_2171,varname:node_2171,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aa762ee7680f35f4fb9a9210fa94ce61,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8048,x:32062,y:32637,ptovrint:False,ptlb:node_8048,ptin:_node_8048,varname:node_8048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;proporder:1694-1366-5304-8455-2171-8048;pass:END;sub:END;*/

Shader "Shader Forge/shader05" {
    Properties {
        _node_1694 ("node_1694", 2D) = "white" {}
        _node_1366 ("node_1366", 2D) = "white" {}
        _node_5304 ("node_5304", 2D) = "bump" {}
        _node_8455 ("node_8455", Color) = (0.5019608,0.2879001,0.2879001,1)
        _node_2171 ("node_2171", 2D) = "white" {}
        _node_8048 ("node_8048", Color) = (1,0,0,1)
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_1694; uniform float4 _node_1694_ST;
            uniform sampler2D _node_1366; uniform float4 _node_1366_ST;
            uniform sampler2D _node_5304; uniform float4 _node_5304_ST;
            uniform float4 _node_8455;
            uniform float4 _node_8048;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 _node_5304_var = UnpackNormal(tex2D(_node_5304,TRANSFORM_TEX(i.uv0, _node_5304)));
                float3 normalLocal = _node_5304_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float4 _node_1694_var = tex2D(_node_1694,TRANSFORM_TEX(i.uv0, _node_1694));
                float4 _node_1366_var = tex2D(_node_1366,TRANSFORM_TEX(i.uv0, _node_1366));
                float node_9463 = (i.vertexColor.rgb.r*_node_8048.r + i.vertexColor.rgb.g*_node_1694_var.g + i.vertexColor.rgb.b*(_node_1366_var.rgb*_node_8455.rgb));
                float3 emissive = node_9463;
                float3 finalColor = emissive + node_9463;
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
