// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|custl-9850-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:7204,x:31688,y:33230,varname:node_7204,prsc:2;n:type:ShaderForge.SFN_LightColor,id:6728,x:32186,y:33307,varname:node_6728,prsc:2;n:type:ShaderForge.SFN_LightVector,id:4566,x:31556,y:33012,varname:node_4566,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:4575,x:31556,y:32825,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:456,x:31785,y:32963,varname:node_456,prsc:2,dt:1|A-4575-OUT,B-4566-OUT;n:type:ShaderForge.SFN_Multiply,id:4117,x:32019,y:33142,varname:node_4117,prsc:2|A-456-OUT,B-7204-OUT;n:type:ShaderForge.SFN_Multiply,id:9850,x:32488,y:32922,varname:node_9850,prsc:2|A-4382-OUT,B-6728-RGB;n:type:ShaderForge.SFN_ViewReflectionVector,id:9976,x:31556,y:32662,varname:node_9976,prsc:2;n:type:ShaderForge.SFN_Dot,id:2845,x:31791,y:32691,varname:node_2845,prsc:2,dt:1|A-9976-OUT,B-4566-OUT;n:type:ShaderForge.SFN_Add,id:4382,x:32339,y:32878,varname:node_4382,prsc:2|A-6244-OUT,B-4117-OUT;n:type:ShaderForge.SFN_Power,id:399,x:32075,y:32634,varname:node_399,prsc:2|VAL-2845-OUT,EXP-2531-OUT;n:type:ShaderForge.SFN_Exp,id:2531,x:31805,y:32514,varname:node_2531,prsc:2,et:1|IN-3399-OUT;n:type:ShaderForge.SFN_Slider,id:3399,x:31447,y:32534,ptovrint:False,ptlb:SpecPower,ptin:_SpecPower,varname:node_3399,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:11;n:type:ShaderForge.SFN_Multiply,id:6244,x:32310,y:32696,varname:node_6244,prsc:2|A-8283-OUT,B-399-OUT;n:type:ShaderForge.SFN_Slider,id:8283,x:31984,y:32460,ptovrint:False,ptlb:SpecInstensity,ptin:_SpecInstensity,varname:node_8283,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;proporder:3399-8283;pass:END;sub:END;*/

Shader "Shader Forge/15" {
    Properties {
        _SpecPower ("SpecPower", Range(1, 11)) = 1
        _SpecInstensity ("SpecInstensity", Range(0, 1)) = 1
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
            uniform float _SpecPower;
            uniform float _SpecInstensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (((_SpecInstensity*pow(max(0,dot(viewReflectDirection,lightDirection)),exp2(_SpecPower)))+(max(0,dot(i.normalDir,lightDirection))*attenuation))*_LightColor0.rgb);
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
            uniform float _SpecPower;
            uniform float _SpecInstensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
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
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = (((_SpecInstensity*pow(max(0,dot(viewReflectDirection,lightDirection)),exp2(_SpecPower)))+(max(0,dot(i.normalDir,lightDirection))*attenuation))*_LightColor0.rgb);
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
