// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|normal-5041-RGB,custl-5227-OUT;n:type:ShaderForge.SFN_NormalVector,id:1153,x:31536,y:32697,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:8606,x:31523,y:32849,varname:node_8606,prsc:2;n:type:ShaderForge.SFN_Dot,id:6861,x:31762,y:32789,varname:node_6861,prsc:2,dt:1|A-1153-OUT,B-8606-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:3710,x:31762,y:32941,varname:node_3710,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6735,x:31975,y:32870,varname:node_6735,prsc:2|A-6861-OUT,B-3710-OUT;n:type:ShaderForge.SFN_LightColor,id:7978,x:32093,y:32650,varname:node_7978,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5227,x:32448,y:32712,varname:node_5227,prsc:2|A-2010-OUT,B-7978-RGB;n:type:ShaderForge.SFN_ViewReflectionVector,id:155,x:31581,y:33166,varname:node_155,prsc:2;n:type:ShaderForge.SFN_Dot,id:1000,x:31790,y:33115,varname:node_1000,prsc:2,dt:1|A-8606-OUT,B-155-OUT;n:type:ShaderForge.SFN_Add,id:3403,x:32124,y:32966,varname:node_3403,prsc:2|A-6735-OUT,B-6652-OUT;n:type:ShaderForge.SFN_Power,id:9510,x:32020,y:33144,varname:node_9510,prsc:2|VAL-1000-OUT,EXP-8374-OUT;n:type:ShaderForge.SFN_Exp,id:8374,x:31790,y:33284,varname:node_8374,prsc:2,et:1|IN-6375-OUT;n:type:ShaderForge.SFN_Slider,id:6375,x:31380,y:33357,ptovrint:False,ptlb:Gloss_Ctrl,ptin:_Gloss_Ctrl,varname:node_6375,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:3407,x:31924,y:33397,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_3407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:6652,x:32225,y:33192,varname:node_6652,prsc:2|A-9510-OUT,B-3407-OUT;n:type:ShaderForge.SFN_Multiply,id:6036,x:32169,y:32522,varname:node_6036,prsc:2|A-3403-OUT,B-5403-RGB;n:type:ShaderForge.SFN_Tex2d,id:5403,x:31854,y:32590,ptovrint:False,ptlb:node_5403,ptin:_node_5403,varname:node_5403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:1547,x:31961,y:32341,varname:node_1547,prsc:2|NRM-1153-OUT,EXP-8224-OUT;n:type:ShaderForge.SFN_Add,id:2010,x:32329,y:32351,varname:node_2010,prsc:2|A-1547-OUT,B-6036-OUT;n:type:ShaderForge.SFN_Slider,id:8224,x:31487,y:32433,ptovrint:False,ptlb:node_8224,ptin:_node_8224,varname:node_8224,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:5041,x:32583,y:32472,ptovrint:False,ptlb:node_5041,ptin:_node_5041,varname:node_5041,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;proporder:6375-3407-5403-8224-5041;pass:END;sub:END;*/

Shader "Shader Forge/shader02" {
    Properties {
        _Gloss_Ctrl ("Gloss_Ctrl", Range(0, 10)) = 0
        _Intensity ("Intensity", Range(0, 1)) = 0
        _node_5403 ("node_5403", 2D) = "black" {}
        _node_8224 ("node_8224", Range(0, 1)) = 0
        _node_5041 ("node_5041", 2D) = "bump" {}
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Gloss_Ctrl;
            uniform float _Intensity;
            uniform sampler2D _node_5403; uniform float4 _node_5403_ST;
            uniform float _node_8224;
            uniform sampler2D _node_5041; uniform float4 _node_5041_ST;
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
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _node_5041_var = UnpackNormal(tex2D(_node_5041,TRANSFORM_TEX(i.uv0, _node_5041)));
                float3 normalLocal = _node_5041_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _node_5403_var = tex2D(_node_5403,TRANSFORM_TEX(i.uv0, _node_5403));
                float3 finalColor = ((pow(1.0-max(0,dot(i.normalDir, viewDirection)),_node_8224)+(((max(0,dot(i.normalDir,lightDirection))*attenuation)+(pow(max(0,dot(lightDirection,viewReflectDirection)),exp2(_Gloss_Ctrl))*_Intensity))*_node_5403_var.rgb))*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Gloss_Ctrl;
            uniform float _Intensity;
            uniform sampler2D _node_5403; uniform float4 _node_5403_ST;
            uniform float _node_8224;
            uniform sampler2D _node_5041; uniform float4 _node_5041_ST;
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
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _node_5041_var = UnpackNormal(tex2D(_node_5041,TRANSFORM_TEX(i.uv0, _node_5041)));
                float3 normalLocal = _node_5041_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _node_5403_var = tex2D(_node_5403,TRANSFORM_TEX(i.uv0, _node_5403));
                float3 finalColor = ((pow(1.0-max(0,dot(i.normalDir, viewDirection)),_node_8224)+(((max(0,dot(i.normalDir,lightDirection))*attenuation)+(pow(max(0,dot(lightDirection,viewReflectDirection)),exp2(_Gloss_Ctrl))*_Intensity))*_node_5403_var.rgb))*_LightColor0.rgb);
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
