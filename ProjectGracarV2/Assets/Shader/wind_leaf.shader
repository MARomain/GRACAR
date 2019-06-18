// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7886,x:33435,y:32707,varname:node_7886,prsc:2|diff-5501-RGB,spec-8082-OUT,gloss-5139-OUT,normal-8430-OUT,clip-7096-OUT,voffset-9118-OUT;n:type:ShaderForge.SFN_Tex2d,id:9485,x:31880,y:32204,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9485,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ComponentMask,id:7195,x:32089,y:32204,varname:node_7195,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9485-RGB;n:type:ShaderForge.SFN_Slider,id:5648,x:31808,y:32481,ptovrint:False,ptlb:Normal Strength,ptin:_NormalStrength,varname:node_5648,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1468,x:32317,y:32298,varname:node_1468,prsc:2|A-7195-OUT,B-5648-OUT;n:type:ShaderForge.SFN_Append,id:8430,x:32536,y:32298,varname:node_8430,prsc:2|A-1468-OUT,B-941-OUT;n:type:ShaderForge.SFN_Vector1,id:941,x:32299,y:32445,varname:node_941,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:5139,x:32379,y:32187,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:node_5139,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:8082,x:32508,y:32036,varname:node_8082,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:357,x:31878,y:31924,varname:node_357,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5501,x:32293,y:31772,ptovrint:False,ptlb:Base Color,ptin:_BaseColor,varname:node_5501,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-357-UVOUT;n:type:ShaderForge.SFN_Slider,id:2929,x:32182,y:31983,ptovrint:False,ptlb:Alpha Strength,ptin:_AlphaStrength,varname:node_2929,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7096,x:32548,y:31873,varname:node_7096,prsc:2|A-5501-A,B-2929-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5743,x:30699,y:32864,varname:node_5743,prsc:2;n:type:ShaderForge.SFN_Abs,id:155,x:30972,y:32699,varname:node_155,prsc:2|IN-5743-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8678,x:31168,y:32699,varname:node_8678,prsc:2,cc1:0,cc2:2,cc3:-1,cc4:-1|IN-155-OUT;n:type:ShaderForge.SFN_Normalize,id:4624,x:31168,y:32869,varname:node_4624,prsc:2|IN-5743-X;n:type:ShaderForge.SFN_Normalize,id:376,x:31166,y:33004,varname:node_376,prsc:2|IN-5743-Z;n:type:ShaderForge.SFN_Dot,id:8713,x:31465,y:32717,varname:node_8713,prsc:2,dt:4|A-4624-OUT,B-8678-R;n:type:ShaderForge.SFN_Dot,id:9253,x:31465,y:32903,varname:node_9253,prsc:2,dt:4|A-376-OUT,B-8678-G;n:type:ShaderForge.SFN_Time,id:672,x:31465,y:33075,varname:node_672,prsc:2;n:type:ShaderForge.SFN_Slider,id:6500,x:31308,y:33232,ptovrint:False,ptlb:Wind Speed,ptin:_WindSpeed,varname:node_6500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:250,x:31693,y:33092,varname:node_250,prsc:2|A-672-TTR,B-6500-OUT;n:type:ShaderForge.SFN_Append,id:2427,x:31715,y:32797,varname:node_2427,prsc:2|A-8713-OUT,B-9253-OUT;n:type:ShaderForge.SFN_Panner,id:844,x:31945,y:32839,varname:node_844,prsc:2,spu:-1,spv:0|UVIN-2427-OUT,DIST-250-OUT;n:type:ShaderForge.SFN_Multiply,id:2426,x:32148,y:32839,varname:node_2426,prsc:2|A-844-UVOUT,B-9998-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9998,x:31945,y:33036,ptovrint:False,ptlb:UV Scale,ptin:_UVScale,varname:node_9998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7379,x:32358,y:32839,ptovrint:False,ptlb:Wind Texture,ptin:_WindTexture,varname:node_7379,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2426-OUT;n:type:ShaderForge.SFN_Slider,id:4362,x:32201,y:33035,ptovrint:False,ptlb:Wind Strength,ptin:_WindStrength,varname:node_4362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Abs,id:8103,x:32252,y:33145,varname:node_8103,prsc:2|IN-8713-OUT;n:type:ShaderForge.SFN_VertexColor,id:4816,x:32569,y:32939,varname:node_4816,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8818,x:32274,y:33299,varname:node_8818,prsc:2,v1:0;n:type:ShaderForge.SFN_Append,id:1228,x:32627,y:33145,varname:node_1228,prsc:2|A-8103-OUT,B-8818-OUT,C-8818-OUT;n:type:ShaderForge.SFN_Transform,id:4826,x:32824,y:33128,varname:node_4826,prsc:2,tffrom:0,tfto:1|IN-1228-OUT;n:type:ShaderForge.SFN_Multiply,id:9118,x:33068,y:33028,varname:node_9118,prsc:2|A-7379-RGB,B-4816-RGB,C-4362-OUT,D-4826-XYZ;proporder:5501-9485-7379-5139-2929-5648-4362-6500-9998;pass:END;sub:END;*/

Shader "Custom/wind_leaf" {
    Properties {
        _BaseColor ("Base Color", 2D) = "white" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _WindTexture ("Wind Texture", 2D) = "white" {}
        _Glossiness ("Glossiness", Range(0, 1)) = 0
        _AlphaStrength ("Alpha Strength", Range(0, 1)) = 0
        _NormalStrength ("Normal Strength", Range(0, 1)) = 0
        _WindStrength ("Wind Strength", Range(0, 1)) = 0
        _WindSpeed ("Wind Speed", Range(0, 1)) = 0
        _UVScale ("UV Scale", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalStrength;
            uniform float _Glossiness;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform float _AlphaStrength;
            uniform float _WindSpeed;
            uniform float _UVScale;
            uniform sampler2D _WindTexture; uniform float4 _WindTexture_ST;
            uniform float _WindStrength;
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
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_672 = _Time;
                float2 node_8678 = abs(mul(unity_ObjectToWorld, v.vertex).rgb).rb;
                float node_8713 = 0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).r),node_8678.r)+0.5;
                float2 node_2426 = ((float2(node_8713,0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).b),node_8678.g)+0.5)+(node_672.a*_WindSpeed)*float2(-1,0))*_UVScale);
                float4 _WindTexture_var = tex2Dlod(_WindTexture,float4(TRANSFORM_TEX(node_2426, _WindTexture),0.0,0));
                float node_8818 = 0.0;
                v.vertex.xyz += (_WindTexture_var.rgb*o.vertexColor.rgb*_WindStrength*mul( unity_WorldToObject, float4(float3(abs(node_8713),node_8818,node_8818),0) ).xyz.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = float3((_NormalMap_var.rgb.rg*_NormalStrength),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                clip((_BaseColor_var.a*_AlphaStrength) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Glossiness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_8082 = 0.0;
                float3 specularColor = float3(node_8082,node_8082,node_8082);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _BaseColor_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalStrength;
            uniform float _Glossiness;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform float _AlphaStrength;
            uniform float _WindSpeed;
            uniform float _UVScale;
            uniform sampler2D _WindTexture; uniform float4 _WindTexture_ST;
            uniform float _WindStrength;
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
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_672 = _Time;
                float2 node_8678 = abs(mul(unity_ObjectToWorld, v.vertex).rgb).rb;
                float node_8713 = 0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).r),node_8678.r)+0.5;
                float2 node_2426 = ((float2(node_8713,0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).b),node_8678.g)+0.5)+(node_672.a*_WindSpeed)*float2(-1,0))*_UVScale);
                float4 _WindTexture_var = tex2Dlod(_WindTexture,float4(TRANSFORM_TEX(node_2426, _WindTexture),0.0,0));
                float node_8818 = 0.0;
                v.vertex.xyz += (_WindTexture_var.rgb*o.vertexColor.rgb*_WindStrength*mul( unity_WorldToObject, float4(float3(abs(node_8713),node_8818,node_8818),0) ).xyz.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = float3((_NormalMap_var.rgb.rg*_NormalStrength),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                clip((_BaseColor_var.a*_AlphaStrength) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Glossiness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_8082 = 0.0;
                float3 specularColor = float3(node_8082,node_8082,node_8082);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _BaseColor_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform float _AlphaStrength;
            uniform float _WindSpeed;
            uniform float _UVScale;
            uniform sampler2D _WindTexture; uniform float4 _WindTexture_ST;
            uniform float _WindStrength;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_672 = _Time;
                float2 node_8678 = abs(mul(unity_ObjectToWorld, v.vertex).rgb).rb;
                float node_8713 = 0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).r),node_8678.r)+0.5;
                float2 node_2426 = ((float2(node_8713,0.5*dot(normalize(mul(unity_ObjectToWorld, v.vertex).b),node_8678.g)+0.5)+(node_672.a*_WindSpeed)*float2(-1,0))*_UVScale);
                float4 _WindTexture_var = tex2Dlod(_WindTexture,float4(TRANSFORM_TEX(node_2426, _WindTexture),0.0,0));
                float node_8818 = 0.0;
                v.vertex.xyz += (_WindTexture_var.rgb*o.vertexColor.rgb*_WindStrength*mul( unity_WorldToObject, float4(float3(abs(node_8713),node_8818,node_8818),0) ).xyz.rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _BaseColor_var = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                clip((_BaseColor_var.a*_AlphaStrength) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
