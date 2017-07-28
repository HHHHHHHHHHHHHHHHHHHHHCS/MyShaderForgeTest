// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33258,y:32704,varname:node_3138,prsc:2|emission-5660-OUT,custl-7164-OUT,voffset-228-OUT;n:type:ShaderForge.SFN_LightVector,id:7616,x:31261,y:32764,varname:node_7616,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1954,x:31261,y:32950,prsc:2,pt:False;n:type:ShaderForge.SFN_ViewReflectionVector,id:3843,x:31261,y:33149,varname:node_3843,prsc:2;n:type:ShaderForge.SFN_Dot,id:4820,x:31512,y:32842,varname:node_4820,prsc:2,dt:1|A-7616-OUT,B-1954-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8708,x:31512,y:32701,varname:node_8708,prsc:2;n:type:ShaderForge.SFN_LightColor,id:9480,x:31752,y:32641,varname:node_9480,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6084,x:31863,y:32816,varname:node_6084,prsc:2|A-8708-OUT,B-7489-OUT,C-562-OUT;n:type:ShaderForge.SFN_Multiply,id:7164,x:32018,y:32769,varname:node_7164,prsc:2|A-9480-RGB,B-6084-OUT;n:type:ShaderForge.SFN_Dot,id:2099,x:31512,y:33080,varname:node_2099,prsc:2,dt:1|A-7616-OUT,B-3843-OUT;n:type:ShaderForge.SFN_Add,id:7489,x:31662,y:32974,varname:node_7489,prsc:2|A-4820-OUT,B-2099-OUT;n:type:ShaderForge.SFN_Vector1,id:562,x:31662,y:33124,varname:node_562,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:2550,x:32079,y:32550,ptovrint:False,ptlb:node_2550,ptin:_node_2550,varname:node_2550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:19555d7d9d114c7f1100f5ab44295342,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:2227,x:31273,y:32260,varname:node_2227,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:9056,x:31939,y:32298,varname:node_9056,prsc:2|A-2227-V,B-6561-OUT;n:type:ShaderForge.SFN_Slider,id:1631,x:31053,y:32438,ptovrint:False,ptlb:node_1631,ptin:_node_1631,varname:node_1631,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1732,x:31382,y:32438,varname:node_1732,prsc:2|A-1631-OUT,B-323-OUT;n:type:ShaderForge.SFN_Vector1,id:323,x:31210,y:32529,varname:node_323,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:5660,x:32522,y:32418,varname:node_5660,prsc:2|A-228-OUT,B-2550-RGB;n:type:ShaderForge.SFN_Vector1,id:5285,x:31557,y:32521,varname:node_5285,prsc:2,v1:-1;n:type:ShaderForge.SFN_Add,id:6561,x:31734,y:32374,varname:node_6561,prsc:2|A-1732-OUT,B-5285-OUT;n:type:ShaderForge.SFN_Clamp01,id:228,x:32313,y:32319,varname:node_228,prsc:2|IN-3831-OUT;n:type:ShaderForge.SFN_Multiply,id:3831,x:32140,y:32298,varname:node_3831,prsc:2|A-5975-OUT,B-9056-OUT;n:type:ShaderForge.SFN_Frac,id:5975,x:31925,y:31996,varname:node_5975,prsc:2|IN-8865-TSL;n:type:ShaderForge.SFN_Time,id:8865,x:31648,y:32049,varname:node_8865,prsc:2;proporder:2550-1631;pass:END;sub:END;*/

Shader "Shader Forge/19" {
    Properties {
        _node_2550 ("node_2550", 2D) = "white" {}
        _node_1631 ("node_1631", Range(0, 1)) = 0
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
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_2550; uniform float4 _node_2550_ST;
            uniform float _node_1631;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8865 = _Time + _TimeEditor;
                float node_9056 = (o.uv0.g-((_node_1631*2.0)+(-1.0)));
                float node_228 = saturate((frac(node_8865.r)*node_9056));
                v.vertex.xyz += float3(node_228,node_228,node_228);
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
////// Emissive:
                float4 node_8865 = _Time + _TimeEditor;
                float node_9056 = (i.uv0.g-((_node_1631*2.0)+(-1.0)));
                float node_228 = saturate((frac(node_8865.r)*node_9056));
                float4 _node_2550_var = tex2D(_node_2550,TRANSFORM_TEX(i.uv0, _node_2550));
                float3 emissive = (node_228*_node_2550_var.rgb);
                float node_4820 = max(0,dot(lightDirection,i.normalDir));
                float node_2099 = max(0,dot(lightDirection,viewReflectDirection));
                float3 node_7164 = (_LightColor0.rgb*(attenuation*(node_4820+node_2099)*0.5));
                float3 finalColor = emissive + node_7164;
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
            #pragma only_renderers d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _node_2550; uniform float4 _node_2550_ST;
            uniform float _node_1631;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8865 = _Time + _TimeEditor;
                float node_9056 = (o.uv0.g-((_node_1631*2.0)+(-1.0)));
                float node_228 = saturate((frac(node_8865.r)*node_9056));
                v.vertex.xyz += float3(node_228,node_228,node_228);
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
                float node_4820 = max(0,dot(lightDirection,i.normalDir));
                float node_2099 = max(0,dot(lightDirection,viewReflectDirection));
                float3 node_7164 = (_LightColor0.rgb*(attenuation*(node_4820+node_2099)*0.5));
                float3 finalColor = node_7164;
                return fixed4(finalColor * 1,0);
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
            uniform float4 _TimeEditor;
            uniform float _node_1631;
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
                float4 node_8865 = _Time + _TimeEditor;
                float node_9056 = (o.uv0.g-((_node_1631*2.0)+(-1.0)));
                float node_228 = saturate((frac(node_8865.r)*node_9056));
                v.vertex.xyz += float3(node_228,node_228,node_228);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
