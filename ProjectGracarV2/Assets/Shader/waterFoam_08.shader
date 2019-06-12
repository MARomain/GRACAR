// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32632,y:29645,varname:node_2865,prsc:2|diff-5922-OUT,spec-2265-OUT,gloss-1813-OUT,normal-4724-OUT,emission-7488-OUT,alpha-1167-OUT,refract-9550-OUT;n:type:ShaderForge.SFN_Slider,id:1813,x:31759,y:29844,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.85,max:1;n:type:ShaderForge.SFN_Vector1,id:2265,x:32286,y:29650,varname:node_2265,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:3940,x:28688,y:30926,varname:node_3940,prsc:2;n:type:ShaderForge.SFN_Append,id:8619,x:28982,y:30947,varname:node_8619,prsc:2|A-3940-X,B-3940-Z;n:type:ShaderForge.SFN_Divide,id:1579,x:29171,y:30958,varname:node_1579,prsc:2|A-8619-OUT,B-7752-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7752,x:28784,y:31138,ptovrint:False,ptlb:UV Scale,ptin:_UVScale,varname:node_7752,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:12;n:type:ShaderForge.SFN_Set,id:5653,x:29343,y:30958,varname:_worldUV,prsc:2|IN-1579-OUT;n:type:ShaderForge.SFN_Color,id:7615,x:31389,y:29311,ptovrint:False,ptlb:Color Deep,ptin:_ColorDeep,varname:node_7615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3,c3:0.2,c4:1;n:type:ShaderForge.SFN_Color,id:1458,x:31389,y:29509,ptovrint:False,ptlb:Color Shallow,ptin:_ColorShallow,varname:node_1458,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4,c2:0.8,c3:1,c4:1;n:type:ShaderForge.SFN_Fresnel,id:2195,x:31389,y:29658,varname:node_2195,prsc:2|NRM-8593-OUT,EXP-7889-OUT;n:type:ShaderForge.SFN_NormalVector,id:8593,x:31186,y:29658,prsc:2,pt:True;n:type:ShaderForge.SFN_Lerp,id:8490,x:31657,y:29425,varname:node_8490,prsc:2|A-7615-RGB,B-1458-RGB,T-2195-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:7889,x:31186,y:29803,varname:node_7889,prsc:2,min:0,max:4|IN-5780-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5780,x:31011,y:29803,ptovrint:False,ptlb:Color Fresnel,ptin:_ColorFresnel,varname:node_5780,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.336;n:type:ShaderForge.SFN_Tex2d,id:5354,x:28036,y:32541,varname:node_5354,prsc:2,ntxv:0,isnm:False|UVIN-7012-OUT,TEX-8936-TEX;n:type:ShaderForge.SFN_Tex2d,id:3298,x:28036,y:32705,varname:node_3298,prsc:2,ntxv:0,isnm:False|UVIN-83-OUT,TEX-8936-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:8936,x:27750,y:32603,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_8936,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Lerp,id:847,x:29022,y:32687,varname:node_847,prsc:2|A-825-OUT,B-1555-OUT,T-7245-OUT;n:type:ShaderForge.SFN_Slider,id:7245,x:28511,y:32898,ptovrint:False,ptlb:Normal Blend Strength,ptin:_NormalBlendStrength,varname:node_7245,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Get,id:173,x:27924,y:31659,varname:node_173,prsc:2|IN-5653-OUT;n:type:ShaderForge.SFN_Set,id:6841,x:29187,y:32000,varname:_UV2,prsc:2|IN-4725-OUT;n:type:ShaderForge.SFN_Set,id:9404,x:29156,y:31453,varname:_UV1,prsc:2|IN-498-OUT;n:type:ShaderForge.SFN_Vector4Property,id:3489,x:28165,y:31391,ptovrint:False,ptlb:UV 1 Animator,ptin:_UV1Animator,varname:node_3489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Vector4Property,id:7101,x:28162,y:31899,ptovrint:False,ptlb:UV 2 Animator,ptin:_UV2Animator,varname:node_7101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ComponentMask,id:7777,x:28540,y:31633,varname:node_7777,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2345-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8356,x:28540,y:31799,varname:node_8356,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9757-OUT;n:type:ShaderForge.SFN_Time,id:4780,x:27924,y:31433,varname:node_4780,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9381,x:28540,y:31378,varname:node_9381,prsc:2|A-3489-X,B-4780-TSL;n:type:ShaderForge.SFN_Multiply,id:4163,x:28540,y:31499,varname:node_4163,prsc:2|A-3489-Y,B-4780-TSL;n:type:ShaderForge.SFN_Add,id:5566,x:28746,y:31379,varname:node_5566,prsc:2|A-9381-OUT,B-7777-R;n:type:ShaderForge.SFN_Add,id:8977,x:28746,y:31499,varname:node_8977,prsc:2|A-4163-OUT,B-7777-G;n:type:ShaderForge.SFN_Append,id:498,x:28956,y:31440,varname:node_498,prsc:2|A-5566-OUT,B-8977-OUT;n:type:ShaderForge.SFN_Multiply,id:4385,x:28539,y:31981,varname:node_4385,prsc:2|A-7101-X,B-4780-TSL;n:type:ShaderForge.SFN_Multiply,id:8606,x:28539,y:32102,varname:node_8606,prsc:2|A-7101-Y,B-4780-TSL;n:type:ShaderForge.SFN_Add,id:2005,x:28736,y:31981,varname:node_2005,prsc:2|A-4385-OUT,B-8356-R;n:type:ShaderForge.SFN_Add,id:4078,x:28736,y:32102,varname:node_4078,prsc:2|A-8606-OUT,B-8356-G;n:type:ShaderForge.SFN_Append,id:4725,x:28946,y:32000,varname:node_4725,prsc:2|A-2005-OUT,B-4078-OUT;n:type:ShaderForge.SFN_Multiply,id:2345,x:28165,y:31571,varname:node_2345,prsc:2|A-173-OUT,B-8100-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8100,x:27945,y:31605,ptovrint:False,ptlb:UV 1 Tiling,ptin:_UV1Tiling,varname:node_8100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5473,x:27945,y:31733,ptovrint:False,ptlb:UV 2 Tiling,ptin:_UV2Tiling,varname:node_5473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Get,id:7012,x:27718,y:32453,varname:node_7012,prsc:2|IN-9404-OUT;n:type:ShaderForge.SFN_Get,id:83,x:27729,y:32775,varname:node_83,prsc:2|IN-6841-OUT;n:type:ShaderForge.SFN_Multiply,id:9757,x:28151,y:31720,varname:node_9757,prsc:2|A-173-OUT,B-5473-OUT;n:type:ShaderForge.SFN_ComponentMask,id:50,x:28270,y:32541,varname:node_50,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5354-RGB;n:type:ShaderForge.SFN_Multiply,id:1451,x:28457,y:32541,varname:node_1451,prsc:2|A-50-OUT,B-8305-OUT;n:type:ShaderForge.SFN_Append,id:825,x:28668,y:32541,varname:node_825,prsc:2|A-1451-OUT,B-3983-OUT;n:type:ShaderForge.SFN_Vector1,id:3983,x:28036,y:32836,varname:node_3983,prsc:2,v1:1;n:type:ShaderForge.SFN_ComponentMask,id:8678,x:28270,y:32711,varname:node_8678,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3298-RGB;n:type:ShaderForge.SFN_Multiply,id:7213,x:28457,y:32711,varname:node_7213,prsc:2|A-8678-OUT,B-8584-OUT;n:type:ShaderForge.SFN_Append,id:1555,x:28668,y:32711,varname:node_1555,prsc:2|A-7213-OUT,B-3983-OUT;n:type:ShaderForge.SFN_Slider,id:8305,x:27773,y:32940,ptovrint:False,ptlb:Normal Map 1 Strength,ptin:_NormalMap1Strength,varname:node_8305,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8584,x:27773,y:33040,ptovrint:False,ptlb:Normal Map 2 Strength,ptin:_NormalMap2Strength,varname:node_8584,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:7980,x:29177,y:32687,varname:_normals,prsc:2|IN-847-OUT;n:type:ShaderForge.SFN_Get,id:4724,x:31895,y:29928,varname:node_4724,prsc:2|IN-7980-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6362,x:28445,y:33696,varname:node_6362,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2077-OUT;n:type:ShaderForge.SFN_Multiply,id:2737,x:28604,y:33696,varname:node_2737,prsc:2|A-6362-OUT,B-475-OUT;n:type:ShaderForge.SFN_Slider,id:475,x:28142,y:33936,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_475,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:2698,x:28771,y:33696,varname:Refraction,prsc:2|IN-2737-OUT;n:type:ShaderForge.SFN_Get,id:9550,x:31895,y:29988,varname:node_9550,prsc:2|IN-2698-OUT;n:type:ShaderForge.SFN_Get,id:2077,x:28256,y:33620,varname:node_2077,prsc:2|IN-7980-OUT;n:type:ShaderForge.SFN_TexCoord,id:2456,x:28111,y:29770,varname:node_2456,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:884,x:28761,y:29759,varname:node_884,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-7004-OUT;n:type:ShaderForge.SFN_Add,id:9779,x:28960,y:29759,varname:node_9779,prsc:2|A-884-OUT,B-8800-OUT;n:type:ShaderForge.SFN_Multiply,id:8800,x:28660,y:29994,varname:node_8800,prsc:2|A-2456-UVOUT,B-4746-OUT;n:type:ShaderForge.SFN_Vector1,id:4746,x:28310,y:30055,varname:node_4746,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2dAsset,id:4630,x:28835,y:29521,ptovrint:False,ptlb:_Caustic Noise,ptin:__CausticNoise,varname:node_4630,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7601,x:29148,y:29782,varname:node_7601,prsc:2,ntxv:0,isnm:False|UVIN-9779-OUT,TEX-4630-TEX;n:type:ShaderForge.SFN_Subtract,id:7526,x:29378,y:29782,varname:node_7526,prsc:2|A-7601-RGB,B-2298-OUT;n:type:ShaderForge.SFN_OneMinus,id:2298,x:29155,y:29960,varname:node_2298,prsc:2|IN-9924-OUT;n:type:ShaderForge.SFN_Slider,id:9924,x:28677,y:30166,ptovrint:False,ptlb:_Caustics Thickness,ptin:__CausticsThickness,varname:node_9924,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.75,max:1;n:type:ShaderForge.SFN_Slider,id:7284,x:28677,y:30272,ptovrint:False,ptlb:_Caustics Opacity,ptin:__CausticsOpacity,varname:node_7284,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4017099,max:1;n:type:ShaderForge.SFN_Multiply,id:424,x:29565,y:29889,varname:node_424,prsc:2|A-7526-OUT,B-7284-OUT;n:type:ShaderForge.SFN_VertexColor,id:1568,x:29358,y:30147,varname:node_1568,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8736,x:29771,y:30009,varname:node_8736,prsc:2|A-424-OUT,B-1568-A;n:type:ShaderForge.SFN_Set,id:6476,x:29935,y:30009,varname:Caustics,prsc:2|IN-8736-OUT;n:type:ShaderForge.SFN_Get,id:7488,x:32178,y:29749,varname:node_7488,prsc:2|IN-6476-OUT;n:type:ShaderForge.SFN_Get,id:7004,x:28392,y:29675,varname:node_7004,prsc:2|IN-7980-OUT;n:type:ShaderForge.SFN_ViewVector,id:5820,x:28432,y:28561,varname:node_5820,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:5746,x:28432,y:28707,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:1557,x:28678,y:28626,varname:node_1557,prsc:2,dt:4|A-5820-OUT,B-5746-OUT;n:type:ShaderForge.SFN_Divide,id:7434,x:28972,y:28540,varname:node_7434,prsc:2|A-8294-OUT,B-1557-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8294,x:28678,y:28407,varname:node_8294,prsc:2|DIST-1580-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1580,x:28416,y:28406,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_1580,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:1661,x:29180,y:28540,varname:node_1661,prsc:2|IN-7434-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:5349,x:29533,y:28504,varname:node_5349,prsc:2|IN-1661-OUT,IMIN-5025-OUT,IMAX-2890-OUT,OMIN-3908-OUT,OMAX-9087-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7419,x:29533,y:28717,varname:node_7419,prsc:2|IN-1661-OUT,IMIN-3350-OUT,IMAX-3575-OUT,OMIN-3908-OUT,OMAX-9087-OUT;n:type:ShaderForge.SFN_Vector1,id:3908,x:29154,y:28306,varname:node_3908,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9087,x:29154,y:28372,varname:node_9087,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:5025,x:28853,y:28012,ptovrint:False,ptlb:FoamMin,ptin:_FoamMin,varname:node_5025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2890,x:28853,y:28129,ptovrint:False,ptlb:FoamMax,ptin:_FoamMax,varname:node_2890,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Slider,id:3350,x:28820,y:28828,ptovrint:False,ptlb:DepthMin,ptin:_DepthMin,varname:node_3350,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:3575,x:28825,y:28954,ptovrint:False,ptlb:DepthMax,ptin:_DepthMax,varname:node_3575,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ComponentMask,id:1688,x:31014,y:28512,varname:node_1688,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4197-OUT;n:type:ShaderForge.SFN_Multiply,id:6180,x:31260,y:28512,varname:node_6180,prsc:2|A-1688-OUT,B-771-OUT;n:type:ShaderForge.SFN_Vector1,id:771,x:31014,y:28664,varname:node_771,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Clamp01,id:933,x:31709,y:28595,varname:node_933,prsc:2|IN-1786-OUT;n:type:ShaderForge.SFN_Clamp01,id:4197,x:30734,y:28529,varname:node_4197,prsc:2|IN-4378-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8084,x:30056,y:28044,ptovrint:False,ptlb:FoamPower,ptin:_FoamPower,varname:node_8084,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:8;n:type:ShaderForge.SFN_Clamp01,id:606,x:29727,y:28511,varname:node_606,prsc:2|IN-5349-OUT;n:type:ShaderForge.SFN_Add,id:6323,x:32052,y:29260,varname:node_6323,prsc:2|A-8490-OUT,B-4197-OUT;n:type:ShaderForge.SFN_Clamp01,id:5922,x:32310,y:29452,varname:node_5922,prsc:2|IN-6323-OUT;n:type:ShaderForge.SFN_Add,id:1786,x:31499,y:28595,varname:node_1786,prsc:2|A-6180-OUT,B-7419-OUT;n:type:ShaderForge.SFN_OneMinus,id:2959,x:29887,y:28511,varname:node_2959,prsc:2|IN-606-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3106,x:29282,y:27801,ptovrint:False,ptlb:FoamTexture,ptin:_FoamTexture,varname:node_3106,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5065d02175227bf4dad3ad44ff77d584,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8063,x:29517,y:27801,varname:node_8063,prsc:2,tex:5065d02175227bf4dad3ad44ff77d584,ntxv:0,isnm:False|TEX-3106-TEX;n:type:ShaderForge.SFN_Multiply,id:7313,x:29771,y:27890,varname:node_7313,prsc:2|A-8490-OUT,B-8063-RGB;n:type:ShaderForge.SFN_Multiply,id:1025,x:30015,y:28138,varname:node_1025,prsc:2|A-7313-OUT,B-2959-OUT;n:type:ShaderForge.SFN_Multiply,id:4815,x:30292,y:28147,varname:node_4815,prsc:2|A-1025-OUT,B-8084-OUT;n:type:ShaderForge.SFN_Power,id:6989,x:30082,y:28581,varname:node_6989,prsc:2|VAL-2959-OUT,EXP-8664-OUT;n:type:ShaderForge.SFN_Vector1,id:8664,x:29922,y:28659,varname:node_8664,prsc:2,v1:5;n:type:ShaderForge.SFN_Add,id:4378,x:30525,y:28495,varname:node_4378,prsc:2|A-4815-OUT,B-6989-OUT;n:type:ShaderForge.SFN_Multiply,id:1167,x:31960,y:28959,varname:node_1167,prsc:2|A-933-OUT,B-8324-OUT;n:type:ShaderForge.SFN_Slider,id:8324,x:31593,y:28985,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_8324,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:8936-475-7615-1458-1813-5780-7752-3489-7101-7245-8100-5473-8305-8584-4630-9924-7284-1580-5025-2890-8084-3350-3575-3106-8324;pass:END;sub:END;*/

Shader "Shader Forge/water_02" {
    Properties {
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _Refraction ("Refraction", Range(0, 1)) = 0
        _ColorDeep ("Color Deep", Color) = (0,0.3,0.2,1)
        _ColorShallow ("Color Shallow", Color) = (0.4,0.8,1,1)
        _Glossiness ("Glossiness", Range(0, 1)) = 0.85
        _ColorFresnel ("Color Fresnel", Float ) = 1.336
        _UVScale ("UV Scale", Float ) = 12
        _UV1Animator ("UV 1 Animator", Vector) = (0,0,0,0)
        _UV2Animator ("UV 2 Animator", Vector) = (0,0,0,0)
        _NormalBlendStrength ("Normal Blend Strength", Range(0, 1)) = 0
        _UV1Tiling ("UV 1 Tiling", Float ) = 0
        _UV2Tiling ("UV 2 Tiling", Float ) = 0
        _NormalMap1Strength ("Normal Map 1 Strength", Range(0, 1)) = 0
        _NormalMap2Strength ("Normal Map 2 Strength", Range(0, 1)) = 0
        __CausticNoise ("_Caustic Noise", 2D) = "white" {}
        __CausticsThickness ("_Caustics Thickness", Range(0, 1)) = 0.75
        __CausticsOpacity ("_Caustics Opacity", Range(0, 1)) = 0.4017099
        _Depth ("Depth", Float ) = 0
        _FoamMin ("FoamMin", Range(0, 1)) = 0
        _FoamMax ("FoamMax", Range(0, 1)) = 1
        _FoamPower ("FoamPower", Float ) = 8
        _DepthMin ("DepthMin", Range(0, 1)) = 0
        _DepthMax ("DepthMax", Range(0, 1)) = 1
        _FoamTexture ("FoamTexture", 2D) = "white" {}
        _Opacity ("Opacity", Range(0, 1)) = 0
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
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
            uniform float _NormalMap1Strength;
            uniform float _NormalMap2Strength;
            uniform float _Refraction;
            uniform sampler2D __CausticNoise; uniform float4 __CausticNoise_ST;
            uniform float __CausticsThickness;
            uniform float __CausticsOpacity;
            uniform float _Depth;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _DepthMin;
            uniform float _DepthMax;
            uniform float _FoamPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD7;
                UNITY_FOG_COORDS(8)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD9;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
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
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
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
                float node_3983 = 1.0;
                float2 node_8356 = (node_173*_UV2Tiling).rg;
                float2 _UV2 = float2(((_UV2Animator.r*node_4780.r)+node_8356.r),((_UV2Animator.g*node_4780.r)+node_8356.g));
                float2 node_83 = _UV2;
                float3 node_3298 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_83, _NormalMap)));
                float3 _normals = lerp(float3((node_5354.rgb.rg*_NormalMap1Strength),node_3983),float3((node_3298.rgb.rg*_NormalMap2Strength),node_3983),_NormalBlendStrength);
                float3 normalLocal = _normals;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 Refraction = (_normals.rg*_Refraction);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + Refraction;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
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
                float3 node_8490 = lerp(_ColorDeep.rgb,_ColorShallow.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFresnel,0,4)));
                float4 node_8063 = tex2D(_FoamTexture,TRANSFORM_TEX(i.uv0, _FoamTexture));
                float node_1661 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float node_3908 = 0.0;
                float node_9087 = 1.0;
                float node_2959 = (1.0 - saturate((node_3908 + ( (node_1661 - _FoamMin) * (node_9087 - node_3908) ) / (_FoamMax - _FoamMin))));
                float3 node_4197 = saturate(((((node_8490*node_8063.rgb)*node_2959)*_FoamPower)+pow(node_2959,5.0)));
                float3 diffuseColor = saturate((node_8490+node_4197)); // Need this for specular when using metallic
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
////// Emissive:
                float3 node_9779 = ((_normals*0.1+0.0)+float3((i.uv0*0.5),0.0));
                float4 node_7601 = tex2D(__CausticNoise,TRANSFORM_TEX(node_9779, __CausticNoise));
                float3 Caustics = (((node_7601.rgb-(1.0 - __CausticsThickness))*__CausticsOpacity)*i.vertexColor.a);
                float3 emissive = Caustics;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(saturate(((node_4197.r*0.5)+(node_3908 + ( (node_1661 - _DepthMin) * (node_9087 - node_3908) ) / (_DepthMax - _DepthMin))))*_Opacity)),1);
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
            ZWrite Off
            
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
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
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
            uniform float _NormalMap1Strength;
            uniform float _NormalMap2Strength;
            uniform float _Refraction;
            uniform sampler2D __CausticNoise; uniform float4 __CausticNoise_ST;
            uniform float __CausticsThickness;
            uniform float __CausticsOpacity;
            uniform float _Depth;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _DepthMin;
            uniform float _DepthMax;
            uniform float _FoamPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
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
                float node_3983 = 1.0;
                float2 node_8356 = (node_173*_UV2Tiling).rg;
                float2 _UV2 = float2(((_UV2Animator.r*node_4780.r)+node_8356.r),((_UV2Animator.g*node_4780.r)+node_8356.g));
                float2 node_83 = _UV2;
                float3 node_3298 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_83, _NormalMap)));
                float3 _normals = lerp(float3((node_5354.rgb.rg*_NormalMap1Strength),node_3983),float3((node_3298.rgb.rg*_NormalMap2Strength),node_3983),_NormalBlendStrength);
                float3 normalLocal = _normals;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 Refraction = (_normals.rg*_Refraction);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + Refraction;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
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
                float3 node_8490 = lerp(_ColorDeep.rgb,_ColorShallow.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFresnel,0,4)));
                float4 node_8063 = tex2D(_FoamTexture,TRANSFORM_TEX(i.uv0, _FoamTexture));
                float node_1661 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float node_3908 = 0.0;
                float node_9087 = 1.0;
                float node_2959 = (1.0 - saturate((node_3908 + ( (node_1661 - _FoamMin) * (node_9087 - node_3908) ) / (_FoamMax - _FoamMin))));
                float3 node_4197 = saturate(((((node_8490*node_8063.rgb)*node_2959)*_FoamPower)+pow(node_2959,5.0)));
                float3 diffuseColor = saturate((node_8490+node_4197)); // Need this for specular when using metallic
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
                fixed4 finalRGBA = fixed4(finalColor * (saturate(((node_4197.r*0.5)+(node_3908 + ( (node_1661 - _DepthMin) * (node_9087 - node_3908) ) / (_DepthMax - _DepthMin))))*_Opacity),0);
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
            uniform sampler2D _CameraDepthTexture;
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
            uniform float _NormalMap1Strength;
            uniform float _NormalMap2Strength;
            uniform sampler2D __CausticNoise; uniform float4 __CausticNoise_ST;
            uniform float __CausticsThickness;
            uniform float __CausticsOpacity;
            uniform float _Depth;
            uniform float _FoamMin;
            uniform float _FoamMax;
            uniform float _FoamPower;
            uniform sampler2D _FoamTexture; uniform float4 _FoamTexture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_4780 = _Time;
                float2 _worldUV = (float2(i.posWorld.r,i.posWorld.b)/_UVScale);
                float2 node_173 = _worldUV;
                float2 node_7777 = (node_173*_UV1Tiling).rg;
                float2 _UV1 = float2(((_UV1Animator.r*node_4780.r)+node_7777.r),((_UV1Animator.g*node_4780.r)+node_7777.g));
                float2 node_7012 = _UV1;
                float3 node_5354 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_7012, _NormalMap)));
                float node_3983 = 1.0;
                float2 node_8356 = (node_173*_UV2Tiling).rg;
                float2 _UV2 = float2(((_UV2Animator.r*node_4780.r)+node_8356.r),((_UV2Animator.g*node_4780.r)+node_8356.g));
                float2 node_83 = _UV2;
                float3 node_3298 = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_83, _NormalMap)));
                float3 _normals = lerp(float3((node_5354.rgb.rg*_NormalMap1Strength),node_3983),float3((node_3298.rgb.rg*_NormalMap2Strength),node_3983),_NormalBlendStrength);
                float3 node_9779 = ((_normals*0.1+0.0)+float3((i.uv0*0.5),0.0));
                float4 node_7601 = tex2D(__CausticNoise,TRANSFORM_TEX(node_9779, __CausticNoise));
                float3 Caustics = (((node_7601.rgb-(1.0 - __CausticsThickness))*__CausticsOpacity)*i.vertexColor.a);
                o.Emission = Caustics;
                
                float3 node_8490 = lerp(_ColorDeep.rgb,_ColorShallow.rgb,pow(1.0-max(0,dot(normalDirection, viewDirection)),clamp(_ColorFresnel,0,4)));
                float4 node_8063 = tex2D(_FoamTexture,TRANSFORM_TEX(i.uv0, _FoamTexture));
                float node_1661 = saturate((saturate((sceneZ-partZ)/_Depth)/0.5*dot(viewDirection,i.normalDir)+0.5));
                float node_3908 = 0.0;
                float node_9087 = 1.0;
                float node_2959 = (1.0 - saturate((node_3908 + ( (node_1661 - _FoamMin) * (node_9087 - node_3908) ) / (_FoamMax - _FoamMin))));
                float3 node_4197 = saturate(((((node_8490*node_8063.rgb)*node_2959)*_FoamPower)+pow(node_2959,5.0)));
                float3 diffColor = saturate((node_8490+node_4197));
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
