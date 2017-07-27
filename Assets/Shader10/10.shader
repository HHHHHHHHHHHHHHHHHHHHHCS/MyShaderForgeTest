// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:4795,x:33951,y:32750,varname:node_4795,prsc:2|emission-2754-OUT,voffset-7781-OUT;n:type:ShaderForge.SFN_Color,id:3633,x:31871,y:32681,ptovrint:False,ptlb:color1,ptin:_color1,varname:node_3633,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:8286,x:31870,y:32897,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_8286,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6455,x:32132,y:32703,varname:node_6455,prsc:2|A-3633-RGB,B-3789-OUT;n:type:ShaderForge.SFN_Fresnel,id:3789,x:31554,y:32909,varname:node_3789,prsc:2|EXP-8389-OUT;n:type:ShaderForge.SFN_ValueProperty,id:102,x:31289,y:33350,ptovrint:False,ptlb:val1,ptin:_val1,varname:node_102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:2772,x:32134,y:32967,varname:node_2772,prsc:2|A-8286-RGB,B-3789-OUT;n:type:ShaderForge.SFN_Lerp,id:2754,x:32377,y:32817,varname:node_2754,prsc:2|A-6455-OUT,B-2772-OUT,T-8894-OUT;n:type:ShaderForge.SFN_Slider,id:5125,x:31587,y:33487,ptovrint:False,ptlb:slider1,ptin:_slider1,varname:node_5125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:8747,x:31289,y:33160,varname:node_8747,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:2603,x:31487,y:33196,varname:node_2603,prsc:2|A-8747-V,B-102-OUT;n:type:ShaderForge.SFN_Multiply,id:3266,x:31708,y:33196,varname:node_3266,prsc:2|A-2603-OUT,B-3403-OUT;n:type:ShaderForge.SFN_Add,id:6674,x:31941,y:33208,varname:node_6674,prsc:2|A-3266-OUT,B-5125-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8389,x:31272,y:32981,ptovrint:False,ptlb:Fresnel1,ptin:_Fresnel1,varname:node_8389,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:8894,x:32157,y:33208,varname:node_8894,prsc:2|IN-6674-OUT;n:type:ShaderForge.SFN_OneMinus,id:7010,x:32385,y:33315,varname:node_7010,prsc:2|IN-8894-OUT;n:type:ShaderForge.SFN_Add,id:2547,x:32651,y:33386,varname:node_2547,prsc:2|A-7010-OUT,B-8074-OUT;n:type:ShaderForge.SFN_Multiply,id:8519,x:32921,y:33327,varname:node_8519,prsc:2|A-8894-OUT,B-2547-OUT;n:type:ShaderForge.SFN_Vector1,id:8074,x:32371,y:33517,varname:node_8074,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:823,x:33203,y:33305,varname:node_823,prsc:2|IN-8519-OUT;n:type:ShaderForge.SFN_Multiply,id:1029,x:33393,y:33318,varname:node_1029,prsc:2|A-823-OUT,B-5692-OUT;n:type:ShaderForge.SFN_Vector3,id:5692,x:33191,y:33584,varname:node_5692,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_NormalVector,id:6382,x:33470,y:33649,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:2240,x:33663,y:33382,varname:node_2240,prsc:2|A-1029-OUT,B-6382-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7781,x:33871,y:33372,varname:node_7781,prsc:2,min:0,max:1|IN-2240-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3403,x:31391,y:33493,ptovrint:False,ptlb:val2,ptin:_val2,varname:node_3403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:3633-8286-102-5125-8389-3403;pass:END;sub:END;*/

Shader "Shader Forge/10" {
    Properties {
        _color1 ("color1", Color) = (0,0,1,1)
        _color2 ("color2", Color) = (0,1,1,1)
        _val1 ("val1", Float ) = 1
        _slider1 ("slider1", Range(0, 1)) = 0
        _Fresnel1 ("Fresnel1", Float ) = 1
        _val2 ("val2", Float ) = 0
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
            uniform float4 _color1;
            uniform float4 _color2;
            uniform float _val1;
            uniform float _slider1;
            uniform float _Fresnel1;
            uniform float _val2;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float node_8894 = saturate((((o.uv0.g-_val1)*_val2)+_slider1));
                v.vertex.xyz += clamp(((saturate((node_8894*((1.0 - node_8894)+0.5)))*float3(0,1,0))*v.normal),0,1);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float node_3789 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel1);
                float node_8894 = saturate((((i.uv0.g-_val1)*_val2)+_slider1));
                float3 emissive = lerp((_color1.rgb*node_3789),(_color2.rgb*node_3789),node_8894);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0,0,0,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
