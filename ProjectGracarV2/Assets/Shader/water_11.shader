// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-8490-OUT,spec-2265-OUT,gloss-1813-OUT,normal-847-OUT;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.85,max:1;n:type:ShaderForge.SFN_Vector1,id:2265,x:32465,y:32756,varname:node_2265,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:3940,x:28688,y:30926,varname:node_3940,prsc:2;n:type:ShaderForge.SFN_Append,id:8619,x:28982,y:30947,varname:node_8619,prsc:2|A-3940-X,B-3940-Z;n:type:ShaderForge.SFN_Divide,id:1579,x:29171,y:30958,varname:node_1579,prsc:2|A-8619-OUT,B-7752-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7752,x:28784,y:31138,ptovrint:False,ptlb:UV Scale,ptin:_UVScale,varname:node_7752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:12;n:type:ShaderForge.SFN_Set,id:5653,x:29343,y:30958,varname:_worldUV,prsc:2|IN-1579-OUT;n:type:ShaderForge.SFN_Color,id:7615,x:31880,y:32349,ptovrint:False,ptlb:Color Deep,ptin:_ColorDeep,varname:node_7615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3,c3:0.2,c4:1;n:type:ShaderForge.SFN_Color,id:1458,x:31880,y:32547,ptovrint:False,ptlb:Color Shallow,ptin:_ColorShallow,varname:node_1458,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4,c2:0.8,c3:1,c4:1;n:type:ShaderForge.SFN_Fresnel,id:2195,x:31863,y:32732,varname:node_2195,prsc:2|NRM-8593-OUT,EXP-7889-OUT;n:type:ShaderForge.SFN_NormalVector,id:8593,x:31552,y:32735,prsc:2,pt:True;n:type:ShaderForge.SFN_Lerp,id:8490,x:32148,y:32463,varname:node_8490,prsc:2|A-7615-RGB,B-1458-RGB,T-2195-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7889,x:31701,y:32901,varname:node_7889,prsc:2,min:0,max:4|IN-5780-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5780,x:31552,y:32959,ptovrint:False,ptlb:Color Fresnel,ptin:_ColorFresnel,varname:node_5780,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.336;n:type:ShaderForge.SFN_Tex2d,id:5354,x:31004,y:33241,varname:node_5354,prsc:2,ntxv:0,isnm:False|UVIN-7012-OUT,TEX-8936-TEX;n:type:ShaderForge.SFN_Tex2d,id:3298,x:31004,y:33405,varname:node_3298,prsc:2,ntxv:0,isnm:False|UVIN-83-OUT,TEX-8936-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8936,x:30718,y:33303,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_8936,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:847,x:31251,y:33393,varname:node_847,prsc:2|A-5354-RGB,B-3298-RGB,T-7245-OUT;n:type:ShaderForge.SFN_Slider,id:7245,x:30882,y:33594,ptovrint:False,ptlb:Normal Blend Strength,ptin:_NormalBlendStrength,varname:node_7245,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Get,id:173,x:27924,y:31659,varname:node_173,prsc:2|IN-5653-OUT;n:type:ShaderForge.SFN_Set,id:6841,x:29187,y:32000,varname:_UV2,prsc:2|IN-4725-OUT;n:type:ShaderForge.SFN_Set,id:9404,x:29156,y:31453,varname:_UV1,prsc:2|IN-498-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3489,x:28165,y:31391,ptovrint:False,ptlb:UV 1 Animator,ptin:_UV1Animator,varname:node_3489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:7101,x:28162,y:31899,ptovrint:False,ptlb:UV 2 Animator,ptin:_UV2Animator,varname:node_7101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:7777,x:28540,y:31633,varname:node_7777,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2345-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8356,x:28540,y:31799,varname:node_8356,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1927-OUT;n:type:ShaderForge.SFN_Time,id:4780,x:27924,y:31433,varname:node_4780,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9381,x:28540,y:31378,varname:node_9381,prsc:2|A-3489-X,B-4780-TSL;n:type:ShaderForge.SFN_Multiply,id:4163,x:28540,y:31499,varname:node_4163,prsc:2|A-3489-Y,B-4780-TSL;n:type:ShaderForge.SFN_Add,id:5566,x:28746,y:31379,varname:node_5566,prsc:2|A-9381-OUT,B-7777-R;n:type:ShaderForge.SFN_Add,id:8977,x:28746,y:31499,varname:node_8977,prsc:2|A-4163-OUT,B-7777-G;n:type:ShaderForge.SFN_Append,id:498,x:28956,y:31440,varname:node_498,prsc:2|A-5566-OUT,B-8977-OUT;n:type:ShaderForge.SFN_Multiply,id:4385,x:28539,y:31981,varname:node_4385,prsc:2|A-7101-X,B-4780-TSL;n:type:ShaderForge.SFN_Multiply,id:8606,x:28539,y:32102,varname:node_8606,prsc:2|A-7101-Y,B-4780-TSL;n:type:ShaderForge.SFN_Add,id:2005,x:28736,y:31981,varname:node_2005,prsc:2|A-4385-OUT,B-8356-R;n:type:ShaderForge.SFN_Add,id:4078,x:28736,y:32102,varname:node_4078,prsc:2|A-8606-OUT,B-8356-G;n:type:ShaderForge.SFN_Append,id:4725,x:28946,y:32000,varname:node_4725,prsc:2|A-2005-OUT,B-4078-OUT;n:type:ShaderForge.SFN_Multiply,id:2345,x:28165,y:31571,varname:node_2345,prsc:2|A-173-OUT,B-8100-OUT;n:type:ShaderForge.SFN_Multiply,id:1927,x:28162,y:31733,varname:node_1927,prsc:2|A-173-OUT,B-5473-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8100,x:27945,y:31605,ptovrint:False,ptlb:UV 1 Tiling,ptin:_UV1Tiling,varname:node_8100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5473,x:27945,y:31733,ptovrint:False,ptlb:UV 2 Tiling,ptin:_UV2Tiling,varname:node_5473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Get,id:7012,x:30686,y:33153,varname:node_7012,prsc:2|IN-9404-OUT;n:type:ShaderForge.SFN_Get,id:83,x:30697,y:33475,varname:node_83,prsc:2|IN-6841-OUT;proporder:7615-1458-1813-5780-8936-7752-3489-7101-7245-8100-5473;pass:END;sub:END;*/

Shader "Shader Forge/water_02" {
    Properties {
        _ColorDeep ("Color Deep", Color) = (0,0.3,0.2,1)
        _ColorShallow ("Color Shallow", Color) = (0.4,0.8,1,1)
        _Glossiness ("Glossiness", Range(0, 1)) = 0.85
        _ColorFresnel ("Color Fresnel", Float ) = 1.336
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _UVScale ("UV Scale", Float ) = 12
        _UV1Animator ("UV 1 Animator", Vector) = (0,0,0,0)
        _UV2Animator ("UV 2 Animator", Vector) = (0,0,0,0)
        _NormalBlendStrength ("Normal Blend Strength", Range(0, 1)) = 0
        _UV1Tiling ("UV 1 Tiling", Float ) = 0
        _UV2Tiling ("UV 2 Tiling", Float ) = 0
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Glossiness;
            uniform float _UVScale;
            uniform float4 _ColorDeep;
            uniform float4 _ColorShallow;
            uniform float _ColorFresnel;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalBlendStrength;
            uniform float4 _UV1Animator;
            uniform float4 _UV2Animator;
            uniform float _UV1Tiling;
            uniform float _UV2Tiling;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float4 node_4780 = _Time;
                float2 _worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale);
                float2 node_173 = _worldUV;
                float2 node_7777 = (node_173*_UV1Tiling).rg;
                float2 _UV1 = float2(((_UV1Animator.r*node_4780.r)+node_7777.r),((_UV1Animator.g*node_4780.r)+node_7777.g));
                float2 node_7012 = _UV1;
                float3 node_5354 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7012, _NormalMap)));
                float2 node_8356 = (node_173*_UV2Tiling).rg;
                float2 _UV2 = float2(((_UV2Animator.r*node_4780.r)+node_8356.r),((_UV2Animator.g*node_4780.r)+node_8356.g));
                float2 node_83 = _UV2;
                float3 node_3298 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_83, _NormalMap)));
                float3 normalLocal = lerp(node_5354.rgb,node_3298.rgb,_NormalBlendStrength);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Glossiness;
                float perceptualRoughness = 1.0 - _Glossiness;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float3 diffuseColor = lerp(_ColorDeep.rgb,_ColorShallow.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFresnel,0,4))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Glossiness;
            uniform float _UVScale;
            uniform float4 _ColorDeep;
            uniform float4 _ColorShallow;
            uniform float _ColorFresnel;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalBlendStrength;
            uniform float4 _UV1Animator;
            uniform float4 _UV2Animator;
            uniform float _UV1Tiling;
            uniform float _UV2Tiling;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float4 node_4780 = _Time;
                float2 _worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale);
                float2 node_173 = _worldUV;
                float2 node_7777 = (node_173*_UV1Tiling).rg;
                float2 _UV1 = float2(((_UV1Animator.r*node_4780.r)+node_7777.r),((_UV1Animator.g*node_4780.r)+node_7777.g));
                float2 node_7012 = _UV1;
                float3 node_5354 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7012, _NormalMap)));
                float2 node_8356 = (node_173*_UV2Tiling).rg;
                float2 _UV2 = float2(((_UV2Animator.r*node_4780.r)+node_8356.r),((_UV2Animator.g*node_4780.r)+node_8356.g));
                float2 node_83 = _UV2;
                float3 node_3298 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_83, _NormalMap)));
                float3 normalLocal = lerp(node_5354.rgb,node_3298.rgb,_NormalBlendStrength);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Glossiness;
                float perceptualRoughness = 1.0 - _Glossiness;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float3 diffuseColor = lerp(_ColorDeep.rgb,_ColorShallow.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFresnel,0,4))); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
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
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Glossiness;
            uniform float4 _ColorDeep;
            uniform float4 _ColorShallow;
            uniform float _ColorFresnel;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv1 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float3 diffColor = lerp(_ColorDeep.rgb,_ColorShallow.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFresnel,0,4)));
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 1.0 - _Glossiness;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
