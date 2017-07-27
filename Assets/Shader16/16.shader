// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|normal-8115-RGB,custl-7131-OUT,alpha-2644-OUT,refract-9729-OUT;n:type:ShaderForge.SFN_Slider,id:2644,x:32862,y:33209,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_2644,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_LightVector,id:7070,x:31404,y:32787,varname:node_7070,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5768,x:31404,y:32963,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:5058,x:31681,y:32853,varname:node_5058,prsc:2,dt:1|A-7070-OUT,B-5768-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8270,x:31592,y:32640,varname:node_8270,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5338,x:31871,y:32853,varname:node_5338,prsc:2|A-8270-OUT,B-5058-OUT;n:type:ShaderForge.SFN_Color,id:2036,x:32096,y:32380,ptovrint:False,ptlb:LightColor,ptin:_LightColor,varname:node_2036,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_LightColor,id:3302,x:32111,y:32640,varname:node_3302,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5359,x:32976,y:32862,varname:node_5359,prsc:2|A-3302-RGB,B-947-OUT,C-6156-OUT;n:type:ShaderForge.SFN_Multiply,id:7131,x:33046,y:32715,varname:node_7131,prsc:2|A-2036-RGB,B-5359-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:7759,x:31404,y:33218,varname:node_7759,prsc:2;n:type:ShaderForge.SFN_Dot,id:3745,x:31629,y:33127,varname:node_3745,prsc:2,dt:1|A-7070-OUT,B-7759-OUT;n:type:ShaderForge.SFN_Power,id:4481,x:32099,y:33181,varname:node_4481,prsc:2|VAL-3745-OUT,EXP-1494-OUT;n:type:ShaderForge.SFN_Slider,id:1494,x:31811,y:33382,ptovrint:False,ptlb:SpecPower,ptin:_SpecPower,varname:node_1494,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:5,max:20;n:type:ShaderForge.SFN_Multiply,id:6156,x:32643,y:33240,varname:node_6156,prsc:2|A-4481-OUT,B-4818-OUT;n:type:ShaderForge.SFN_Slider,id:4818,x:32341,y:33400,ptovrint:False,ptlb:SpecIntesnity,ptin:_SpecIntesnity,varname:node_4818,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:10,max:10;n:type:ShaderForge.SFN_Add,id:947,x:32712,y:32948,varname:node_947,prsc:2|A-9533-OUT,B-5970-OUT;n:type:ShaderForge.SFN_Add,id:8624,x:32058,y:32853,varname:node_8624,prsc:2|A-5338-OUT,B-4791-OUT;n:type:ShaderForge.SFN_Vector1,id:4791,x:31882,y:33012,varname:node_4791,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:7918,x:32228,y:32853,varname:node_7918,prsc:2|A-8624-OUT,B-4791-OUT;n:type:ShaderForge.SFN_Multiply,id:9533,x:32569,y:32867,varname:node_9533,prsc:2|A-7918-OUT,B-7918-OUT;n:type:ShaderForge.SFN_Tex2d,id:8115,x:33027,y:32498,ptovrint:False,ptlb:node_8115,ptin:_node_8115,varname:node_8115,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4b8d081e9d114c7f1100f5ab44295342,ntxv:3,isnm:True;n:type:ShaderForge.SFN_NormalVector,id:9689,x:32172,y:33675,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:8283,x:32489,y:33690,varname:node_8283,prsc:2,tffrom:0,tfto:1|IN-9689-OUT;n:type:ShaderForge.SFN_ComponentMask,id:364,x:32749,y:33698,varname:node_364,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8283-XYZ;n:type:ShaderForge.SFN_OneMinus,id:984,x:32939,y:33497,varname:node_984,prsc:2|IN-364-OUT;n:type:ShaderForge.SFN_Negate,id:338,x:33168,y:33648,varname:node_338,prsc:2|IN-364-OUT;n:type:ShaderForge.SFN_Slider,id:1619,x:32987,y:33422,ptovrint:False,ptlb:node_1619,ptin:_node_1619,varname:node_1619,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9729,x:33446,y:33517,varname:node_9729,prsc:2|A-1619-OUT,B-338-OUT;n:type:ShaderForge.SFN_Fresnel,id:9701,x:32291,y:33033,varname:node_9701,prsc:2|NRM-5768-OUT,EXP-4857-OUT;n:type:ShaderForge.SFN_Slider,id:4857,x:31778,y:33114,ptovrint:False,ptlb:node_4857,ptin:_node_4857,varname:node_4857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5223013,max:5;n:type:ShaderForge.SFN_Multiply,id:5970,x:32531,y:33047,varname:node_5970,prsc:2|A-9701-OUT,B-4006-RGB;n:type:ShaderForge.SFN_Color,id:4006,x:32383,y:33129,ptovrint:False,ptlb:node_4006,ptin:_node_4006,varname:node_4006,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;proporder:2644-2036-1494-4818-8115-1619-4857-4006;pass:END;sub:END;*/

Shader "Shader Forge/16" {
    Properties {
        _Alpha ("Alpha", Range(0, 1)) = 0.5
        _LightColor ("LightColor", Color) = (0.5,0.5,0.5,1)
        _SpecPower ("SpecPower", Range(1, 20)) = 5
        _SpecIntesnity ("SpecIntesnity", Range(1, 10)) = 10
        _node_8115 ("node_8115", 2D) = "bump" {}
        _node_1619 ("node_1619", Range(0, 1)) = 0
        _node_4857 ("node_4857", Range(0, 5)) = 0.5223013
        _node_4006 ("node_4006", Color) = (1,0,0,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Alpha;
            uniform float4 _LightColor;
            uniform float _SpecPower;
            uniform float _SpecIntesnity;
            uniform sampler2D _node_8115; uniform float4 _node_8115_ST;
            uniform float _node_1619;
            uniform float _node_4857;
            uniform float4 _node_4006;
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
                float4 screenPos : TEXCOORD5;
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
                float3 _node_8115_var = UnpackNormal(tex2D(_node_8115,TRANSFORM_TEX(i.uv0, _node_8115)));
                float3 normalLocal = _node_8115_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 node_364 = mul( unity_WorldToObject, float4(i.normalDir,0) ).xyz.rgb.rg;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_node_1619*(-1*node_364));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float node_4791 = 0.5;
                float node_7918 = (((attenuation*max(0,dot(lightDirection,i.normalDir)))+node_4791)*node_4791);
                float3 finalColor = (_LightColor.rgb*(_LightColor0.rgb*((node_7918*node_7918)+(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_node_4857)*_node_4006.rgb))*(pow(max(0,dot(lightDirection,viewReflectDirection)),_SpecPower)*_SpecIntesnity)));
                return fixed4(lerp(sceneColor.rgb, finalColor,_Alpha),1);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float _Alpha;
            uniform float4 _LightColor;
            uniform float _SpecPower;
            uniform float _SpecIntesnity;
            uniform sampler2D _node_8115; uniform float4 _node_8115_ST;
            uniform float _node_1619;
            uniform float _node_4857;
            uniform float4 _node_4006;
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
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
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
                float3 _node_8115_var = UnpackNormal(tex2D(_node_8115,TRANSFORM_TEX(i.uv0, _node_8115)));
                float3 normalLocal = _node_8115_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 node_364 = mul( unity_WorldToObject, float4(i.normalDir,0) ).xyz.rgb.rg;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_node_1619*(-1*node_364));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float node_4791 = 0.5;
                float node_7918 = (((attenuation*max(0,dot(lightDirection,i.normalDir)))+node_4791)*node_4791);
                float3 finalColor = (_LightColor.rgb*(_LightColor0.rgb*((node_7918*node_7918)+(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_node_4857)*_node_4006.rgb))*(pow(max(0,dot(lightDirection,viewReflectDirection)),_SpecPower)*_SpecIntesnity)));
                return fixed4(finalColor * _Alpha,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
