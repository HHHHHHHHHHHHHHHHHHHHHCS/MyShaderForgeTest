// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|emission-7466-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:7204,x:31688,y:33230,varname:node_7204,prsc:2;n:type:ShaderForge.SFN_LightColor,id:6728,x:32186,y:33307,varname:node_6728,prsc:2;n:type:ShaderForge.SFN_LightVector,id:4566,x:31551,y:32874,varname:node_4566,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4575,x:31551,y:33060,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:456,x:31785,y:32963,varname:node_456,prsc:2,dt:0|A-4566-OUT,B-4575-OUT;n:type:ShaderForge.SFN_Multiply,id:4117,x:32019,y:33142,varname:node_4117,prsc:2|A-456-OUT,B-7204-OUT;n:type:ShaderForge.SFN_Multiply,id:9850,x:32392,y:33100,varname:node_9850,prsc:2|A-4117-OUT,B-6728-RGB;n:type:ShaderForge.SFN_Append,id:5611,x:32259,y:32876,varname:node_5611,prsc:2|A-4117-OUT,B-2036-OUT;n:type:ShaderForge.SFN_Tex2d,id:9098,x:32571,y:32910,ptovrint:False,ptlb:node_9098,ptin:_node_9098,varname:node_9098,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:877bc628b69844ba081a63095156a6f1,ntxv:0,isnm:False|UVIN-5611-OUT;n:type:ShaderForge.SFN_Multiply,id:7466,x:32790,y:33038,varname:node_7466,prsc:2|A-9098-RGB,B-9850-OUT,C-3368-RGB;n:type:ShaderForge.SFN_VertexColor,id:3368,x:32634,y:33275,varname:node_3368,prsc:2;n:type:ShaderForge.SFN_ViewVector,id:2676,x:31551,y:32710,varname:node_2676,prsc:2;n:type:ShaderForge.SFN_Dot,id:2036,x:31785,y:32755,varname:node_2036,prsc:2,dt:0|A-2676-OUT,B-4575-OUT;proporder:9098;pass:END;sub:END;*/

Shader "Shader Forge/14" {
    Properties {
        _node_9098 ("node_9098", 2D) = "white" {}
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
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_9098; uniform float4 _node_9098_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float node_4117 = (dot(lightDirection,i.normalDir)*attenuation);
                float2 node_5611 = float2(node_4117,dot(viewDirection,i.normalDir));
                float4 _node_9098_var = tex2D(_node_9098,TRANSFORM_TEX(node_5611, _node_9098));
                float3 emissive = (_node_9098_var.rgb*(node_4117*_LightColor0.rgb)*i.vertexColor.rgb);
                float3 finalColor = emissive;
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _node_9098; uniform float4 _node_9098_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
