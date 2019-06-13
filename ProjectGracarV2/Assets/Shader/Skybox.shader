// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9383,x:32719,y:32712,varname:node_9383,prsc:2;n:type:ShaderForge.SFN_Slider,id:8752,x:29259,y:32764,ptovrint:False,ptlb:Tiling,ptin:_Tiling,varname:node_8752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:745,x:29594,y:32727,varname:node_745,prsc:2|A-8752-OUT,B-250-OUT;n:type:ShaderForge.SFN_Multiply,id:7640,x:29807,y:32727,varname:node_7640,prsc:2|A-6740-UVOUT,B-745-OUT;n:type:ShaderForge.SFN_Vector1,id:250,x:29379,y:32890,varname:node_250,prsc:2,v1:5;n:type:ShaderForge.SFN_TexCoord,id:6740,x:29192,y:33433,varname:node_6740,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:1571,x:30026,y:32727,varname:node_1571,prsc:2|A-7640-OUT,B-8242-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8242,x:29662,y:32985,ptovrint:False,ptlb:Tiling multiply,ptin:_Tilingmultiply,varname:node_8242,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:1711,x:30200,y:32948,varname:node_1711,prsc:2|A-1571-OUT,B-8242-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:6388,x:29888,y:33173,ptovrint:False,ptlb:Clouds Texture,ptin:_CloudsTexture,varname:node_6388,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6831,x:30479,y:32424,varname:node_6831,prsc:2,ntxv:0,isnm:False|TEX-6388-TEX;n:type:ShaderForge.SFN_Tex2d,id:6583,x:30491,y:32726,varname:node_6583,prsc:2,ntxv:0,isnm:False|TEX-6388-TEX;n:type:ShaderForge.SFN_Tex2d,id:9320,x:30480,y:33035,varname:node_9320,prsc:2,ntxv:0,isnm:False|TEX-6388-TEX;n:type:ShaderForge.SFN_OneMinus,id:1045,x:30701,y:32424,varname:node_1045,prsc:2|IN-6831-R;n:type:ShaderForge.SFN_OneMinus,id:4322,x:30709,y:32712,varname:node_4322,prsc:2|IN-6583-G;n:type:ShaderForge.SFN_OneMinus,id:5078,x:30698,y:33035,varname:node_5078,prsc:2|IN-9320-B;n:type:ShaderForge.SFN_Slider,id:9076,x:30439,y:32621,ptovrint:False,ptlb:Layer 1 Density,ptin:_Layer1Density,varname:node_9076,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:4880,x:30394,y:32901,ptovrint:False,ptlb:Layer 2 Density,ptin:_Layer2Density,varname:node_4880,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:9722,x:30411,y:33243,ptovrint:False,ptlb:Layer 3 Density,ptin:_Layer3Density,varname:node_9722,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:9703,x:31098,y:32451,varname:node_9703,prsc:2|A-4290-OUT,B-1045-OUT,T-9076-OUT;n:type:ShaderForge.SFN_Vector1,id:4290,x:30830,y:32352,varname:node_4290,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:6704,x:31083,y:32779,varname:node_6704,prsc:2|A-4290-OUT,B-4322-OUT,T-4880-OUT;n:type:ShaderForge.SFN_Lerp,id:9696,x:31096,y:33058,varname:node_9696,prsc:2|A-4290-OUT,B-5078-OUT,T-9722-OUT;n:type:ShaderForge.SFN_Add,id:1349,x:31456,y:32620,varname:node_1349,prsc:2|A-9703-OUT,B-6704-OUT;n:type:ShaderForge.SFN_Add,id:7621,x:31642,y:32935,varname:node_7621,prsc:2|A-1349-OUT,B-9696-OUT;n:type:ShaderForge.SFN_Color,id:9236,x:31181,y:31706,ptovrint:False,ptlb:Sky Color,ptin:_SkyColor,varname:node_9236,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3160377,c2:0.8609226,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:8181,x:31181,y:31924,ptovrint:False,ptlb:Cloud Color,ptin:_CloudColor,varname:node_8181,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8726415,c2:0.9962592,c3:1,c4:1;n:type:ShaderForge.SFN_Clamp01,id:8760,x:31845,y:32935,varname:node_8760,prsc:2|IN-7621-OUT;n:type:ShaderForge.SFN_Lerp,id:4536,x:31564,y:31930,varname:node_4536,prsc:2|A-8181-RGB,B-9236-RGB,T-9703-OUT;n:type:ShaderForge.SFN_Lerp,id:6953,x:31791,y:32059,varname:node_6953,prsc:2;n:type:ShaderForge.SFN_Lerp,id:3417,x:31986,y:32205,varname:node_3417,prsc:2;pass:END;sub:END;*/

Shader "Custom/Skybox" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = 0;
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
