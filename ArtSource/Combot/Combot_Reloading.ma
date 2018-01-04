//Maya ASCII 2018 scene
//Name: Combot_Reloading.ma
//Last modified: Wed, Jan 03, 2018 01:59:44 PM
//Codeset: UTF-8
file -rdi 1 -ns "Combot" -rfn "Combot_RigRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/CyberKnights/ArtSource/Combot/Combot_Rig.ma";
file -rdi 1 -ns "AssaultRifle" -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/CyberKnights/ArtSource/AssaultRifle/AssaultRifle.ma";
file -r -ns "Combot" -dr 1 -rfn "Combot_RigRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/CyberKnights/ArtSource/Combot/Combot_Rig.ma";
file -r -ns "AssaultRifle" -dr 1 -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/CyberKnights/ArtSource/AssaultRifle/AssaultRifle.ma";
requires maya "2018";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "2.0.1";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2018.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.6";
createNode transform -s -n "persp";
	rename -uid "DF2A0FC5-A346-DD20-2B69-7D812C0D538E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.9254541481363354 166.51203176910823 473.04120814623968 ;
	setAttr ".r" -type "double3" -9.3383527297380553 -724.9999999998505 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "23333C9B-864D-EBD3-EDA9-1D82C6A7841A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 441.69723188545947;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4B399067-0D48-7C1D-480D-64970B38A853";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8B216121-504C-F8E7-071C-17B913EF00FD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4259A1F6-C047-F74A-BA14-289AC525595F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EE13773F-254A-9234-723A-219F685DE307";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "9FB4692A-6D44-29FD-44E4-6C8FF1B2E202";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5C7D1696-454B-6230-0A35-BEAD6826BC56";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "13BBD749-6641-9200-D1CA-CB96ED7181C4";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "9FF7007F-6346-7DB7-E027-EE87651CF6E7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "directionalLight1";
	rename -uid "CFAB00E7-5A4F-D72F-9BAD-B398E5E4CC58";
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "8C55B27C-AA4F-67BF-5BC9-18A3FA588397";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.88341296 0.65499997 ;
	setAttr ".in" 3.3783783912658691;
createNode transform -n "directionalLight2";
	rename -uid "0BF54605-C34E-520E-340F-4C8736D22AE3";
	setAttr ".t" -type "double3" 301.62919100905111 242.89196688169559 229.75789686566026 ;
	setAttr ".r" -type "double3" -70.680936684303333 32.459412947667822 -71.731037401048482 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "1DD4153E-8C4B-010A-D234-48B7C4B16113";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.41399997 0.96362901 1 ;
createNode transform -n "ambientLight1";
	rename -uid "54F49AF4-FC41-ADD3-DD79-F8850E2A962C";
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "4C7EBA9E-834C-7C7C-F4DE-34B5442DF1F9";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.65499997 0.65499997 ;
	setAttr ".urs" no;
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "110CEE45-4A41-C8C9-FE85-8CB538A8F87D";
createNode parentConstraint -n "AssaultRifle_parentConstraint1" -p "AssaultRifleRNfosterParent1";
	rename -uid "57D86ACE-7644-F9CD-F9BD-F2BDA2A8E9C2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RightHand_AttachW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 37.007283934209823 13.637050650620127 -0.53449330658090033 ;
	setAttr ".rst" -type "double3" -33.608870594947625 71.622922347938911 24.117339121027371 ;
	setAttr ".rsrr" -type "double3" 55.924321599940413 1.9954790894762684e-07 3.3452049969285189e-06 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "59C59D6F-EA43-E6DF-D221-7B9C8C6354FA";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "0E2E9A61-154C-F55A-4A98-5BBA655340C7";
createNode displayLayer -n "defaultLayer";
	rename -uid "970A1C89-1148-75E5-B337-A89AE79275DE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "733F9F98-D646-4BAF-1DEE-FEB9285B64E0";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "071BBB8F-3248-8F2F-EDE7-899038699282";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1DB796AC-AB4B-0C65-686F-A2AD2B8192EF";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "59480A8E-184C-6FBC-409F-58BC36E2B4D1";
createNode reference -n "Combot_RigRN";
	rename -uid "8EC2F214-5A4E-C63C-7ECB-04847C78C554";
	setAttr -s 256 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Combot_RigRN"
		"Combot_RigRN" 0
		"Combot_RigRN" 303
		2 "|Combot:Combot_Geometry|Combot:Legs_Geo|Combot:Legs_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Legs_Geo|Combot:Legs_GeoShape" "uvPivot" 
		" -type \"double2\" 0.49986490607261658 0.49615651369094849"
		2 "|Combot:Combot_Geometry|Combot:Head_Geo|Combot:Head_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Head_Geo|Combot:Head_GeoShape" "uvPivot" 
		" -type \"double2\" 0.49899059534072876 0.48965680599212646"
		2 "|Combot:Combot_Geometry|Combot:LeftArm_Geo|Combot:LeftArm_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:LeftArm_Geo|Combot:LeftArm_GeoShape" "uvPivot" 
		" -type \"double2\" 0.74542668461799622 0.49578514695167542"
		2 "|Combot:Combot_Geometry|Combot:RightArm_Geo|Combot:RightArm_GeoShape" 
		"visibility" " -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:RightArm_Geo|Combot:RightArm_GeoShape" 
		"uvPivot" " -type \"double2\" 0.25189516227692366 0.49578514695167542"
		2 "|Combot:Combot_Geometry|Combot:Torso_Geo|Combot:Torso_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Torso_Geo|Combot:Torso_GeoShape" "uvPivot" 
		" -type \"double2\" 0.49372029304504395 0.49726947862654924"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translate" " -type \"double3\" -2.82710082468862822 46.15889423953964865 4.48810769056752434"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotate" " -type \"double3\" -18.91703841778142348 13.63704937733876399 -0.53449649633807628"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translate" " -type \"double3\" -33.49975205441741366 45.33298540712340241 57.26359335139466111"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotate" " -type \"double3\" -10.65721348320223072 -30.76901081254012027 -12.04923603947128363"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control" 
		"translate" " -type \"double3\" 92.81296566514420476 -28.32737086330948273 46.96713667132355852"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotate" " -type \"double3\" 12.66419212198916355 -28.17082437302412146 -9.93973551979672898"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotate" " -type \"double3\" 3.79613162583621655 -1.14180407643383175 12.25682120401369346"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotate" " -type \"double3\" 23.49166037689506581 17.52435873724612492 -6.0092243263763141"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotate" " -type \"double3\" 38.58583046586788612 23.93780832082686061 -7.85713564233083606"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateZ" " -av"
		2 "Combot:Geometry_Layer" "displayType" " 2"
		5 4 "Combot_RigRN" "|Combot:Combot_Geometry|Combot:Legs_Geo.visibility" 
		"Combot_RigRN.placeHolderList[1]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Geometry|Combot:Head_Geo.visibility" 
		"Combot_RigRN.placeHolderList[2]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Geometry|Combot:LeftArm_Geo.visibility" 
		"Combot_RigRN.placeHolderList[3]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Geometry|Combot:RightArm_Geo.visibility" 
		"Combot_RigRN.placeHolderList[4]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Geometry|Combot:Torso_Geo.visibility" 
		"Combot_RigRN.placeHolderList[5]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.translate" 
		"Combot_RigRN.placeHolderList[6]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotate" 
		"Combot_RigRN.placeHolderList[7]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotateOrder" 
		"Combot_RigRN.placeHolderList[8]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotatePivot" 
		"Combot_RigRN.placeHolderList[9]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotatePivotTranslate" 
		"Combot_RigRN.placeHolderList[10]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.scale" 
		"Combot_RigRN.placeHolderList[11]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.parentMatrix" 
		"Combot_RigRN.placeHolderList[12]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateX" 
		"Combot_RigRN.placeHolderList[13]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateY" 
		"Combot_RigRN.placeHolderList[14]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[15]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.visibility" 
		"Combot_RigRN.placeHolderList[16]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateX" 
		"Combot_RigRN.placeHolderList[17]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateY" 
		"Combot_RigRN.placeHolderList[18]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateZ" 
		"Combot_RigRN.placeHolderList[19]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleX" 
		"Combot_RigRN.placeHolderList[20]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleY" 
		"Combot_RigRN.placeHolderList[21]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[22]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateX" 
		"Combot_RigRN.placeHolderList[23]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateY" 
		"Combot_RigRN.placeHolderList[24]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[25]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.visibility" 
		"Combot_RigRN.placeHolderList[26]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateX" 
		"Combot_RigRN.placeHolderList[27]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateY" 
		"Combot_RigRN.placeHolderList[28]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateZ" 
		"Combot_RigRN.placeHolderList[29]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleX" 
		"Combot_RigRN.placeHolderList[30]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleY" 
		"Combot_RigRN.placeHolderList[31]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[32]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.rotateY" 
		"Combot_RigRN.placeHolderList[33]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.visibility" 
		"Combot_RigRN.placeHolderList[34]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateX" 
		"Combot_RigRN.placeHolderList[35]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateY" 
		"Combot_RigRN.placeHolderList[36]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateZ" 
		"Combot_RigRN.placeHolderList[37]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleX" 
		"Combot_RigRN.placeHolderList[38]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleY" 
		"Combot_RigRN.placeHolderList[39]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[40]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.rotateX" 
		"Combot_RigRN.placeHolderList[41]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[42]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleX" 
		"Combot_RigRN.placeHolderList[43]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleY" 
		"Combot_RigRN.placeHolderList[44]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[45]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.visibility" 
		"Combot_RigRN.placeHolderList[46]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateX" 
		"Combot_RigRN.placeHolderList[47]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateY" 
		"Combot_RigRN.placeHolderList[48]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[49]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateX" 
		"Combot_RigRN.placeHolderList[50]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateY" 
		"Combot_RigRN.placeHolderList[51]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateZ" 
		"Combot_RigRN.placeHolderList[52]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.visibility" 
		"Combot_RigRN.placeHolderList[53]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleX" 
		"Combot_RigRN.placeHolderList[54]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleY" 
		"Combot_RigRN.placeHolderList[55]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[56]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateX" 
		"Combot_RigRN.placeHolderList[57]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateY" 
		"Combot_RigRN.placeHolderList[58]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateZ" 
		"Combot_RigRN.placeHolderList[59]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateX" 
		"Combot_RigRN.placeHolderList[60]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateY" 
		"Combot_RigRN.placeHolderList[61]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[62]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleX" 
		"Combot_RigRN.placeHolderList[63]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleY" 
		"Combot_RigRN.placeHolderList[64]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[65]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.visibility" 
		"Combot_RigRN.placeHolderList[66]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.translateX" 
		"Combot_RigRN.placeHolderList[67]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.translateY" 
		"Combot_RigRN.placeHolderList[68]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.translateZ" 
		"Combot_RigRN.placeHolderList[69]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.rotateX" 
		"Combot_RigRN.placeHolderList[70]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.rotateY" 
		"Combot_RigRN.placeHolderList[71]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[72]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.visibility" 
		"Combot_RigRN.placeHolderList[73]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.scaleX" 
		"Combot_RigRN.placeHolderList[74]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.scaleY" 
		"Combot_RigRN.placeHolderList[75]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightElbow_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[76]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[77]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[78]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[79]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[80]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[81]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[82]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[83]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[84]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[85]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[86]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateX" 
		"Combot_RigRN.placeHolderList[87]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateY" 
		"Combot_RigRN.placeHolderList[88]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[89]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateX" 
		"Combot_RigRN.placeHolderList[90]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateY" 
		"Combot_RigRN.placeHolderList[91]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateZ" 
		"Combot_RigRN.placeHolderList[92]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.visibility" 
		"Combot_RigRN.placeHolderList[93]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleX" 
		"Combot_RigRN.placeHolderList[94]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleY" 
		"Combot_RigRN.placeHolderList[95]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[96]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateX" 
		"Combot_RigRN.placeHolderList[97]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateY" 
		"Combot_RigRN.placeHolderList[98]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateZ" 
		"Combot_RigRN.placeHolderList[99]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateX" 
		"Combot_RigRN.placeHolderList[100]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateY" 
		"Combot_RigRN.placeHolderList[101]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[102]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleX" 
		"Combot_RigRN.placeHolderList[103]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleY" 
		"Combot_RigRN.placeHolderList[104]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[105]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.visibility" 
		"Combot_RigRN.placeHolderList[106]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.translateX" 
		"Combot_RigRN.placeHolderList[107]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.translateY" 
		"Combot_RigRN.placeHolderList[108]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.translateZ" 
		"Combot_RigRN.placeHolderList[109]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.rotateX" 
		"Combot_RigRN.placeHolderList[110]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.rotateY" 
		"Combot_RigRN.placeHolderList[111]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[112]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.visibility" 
		"Combot_RigRN.placeHolderList[113]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.scaleX" 
		"Combot_RigRN.placeHolderList[114]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.scaleY" 
		"Combot_RigRN.placeHolderList[115]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftElbow_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[116]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[117]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[118]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[119]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[120]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[121]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[122]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[123]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[124]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[125]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[126]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateX" 
		"Combot_RigRN.placeHolderList[127]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateY" 
		"Combot_RigRN.placeHolderList[128]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateZ" 
		"Combot_RigRN.placeHolderList[129]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateX" 
		"Combot_RigRN.placeHolderList[130]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateY" 
		"Combot_RigRN.placeHolderList[131]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[132]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleX" 
		"Combot_RigRN.placeHolderList[133]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleY" 
		"Combot_RigRN.placeHolderList[134]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[135]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.visibility" 
		"Combot_RigRN.placeHolderList[136]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateX" 
		"Combot_RigRN.placeHolderList[137]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateY" 
		"Combot_RigRN.placeHolderList[138]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateZ" 
		"Combot_RigRN.placeHolderList[139]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateX" 
		"Combot_RigRN.placeHolderList[140]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateY" 
		"Combot_RigRN.placeHolderList[141]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[142]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleX" 
		"Combot_RigRN.placeHolderList[143]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleY" 
		"Combot_RigRN.placeHolderList[144]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[145]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.visibility" 
		"Combot_RigRN.placeHolderList[146]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateX" 
		"Combot_RigRN.placeHolderList[147]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateY" 
		"Combot_RigRN.placeHolderList[148]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateZ" 
		"Combot_RigRN.placeHolderList[149]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateX" 
		"Combot_RigRN.placeHolderList[150]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateY" 
		"Combot_RigRN.placeHolderList[151]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[152]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleX" 
		"Combot_RigRN.placeHolderList[153]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleY" 
		"Combot_RigRN.placeHolderList[154]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[155]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.visibility" 
		"Combot_RigRN.placeHolderList[156]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateX" 
		"Combot_RigRN.placeHolderList[157]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateY" 
		"Combot_RigRN.placeHolderList[158]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateZ" 
		"Combot_RigRN.placeHolderList[159]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateX" 
		"Combot_RigRN.placeHolderList[160]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateY" 
		"Combot_RigRN.placeHolderList[161]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[162]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleX" 
		"Combot_RigRN.placeHolderList[163]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleY" 
		"Combot_RigRN.placeHolderList[164]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[165]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.visibility" 
		"Combot_RigRN.placeHolderList[166]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateX" 
		"Combot_RigRN.placeHolderList[167]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateY" 
		"Combot_RigRN.placeHolderList[168]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[169]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.visibility" 
		"Combot_RigRN.placeHolderList[170]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateX" 
		"Combot_RigRN.placeHolderList[171]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateY" 
		"Combot_RigRN.placeHolderList[172]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateZ" 
		"Combot_RigRN.placeHolderList[173]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleX" 
		"Combot_RigRN.placeHolderList[174]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleY" 
		"Combot_RigRN.placeHolderList[175]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[176]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[177]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[178]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[179]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[180]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[181]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[182]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[183]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[184]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[185]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[186]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[187]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[188]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[189]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[190]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[191]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[192]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[193]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[194]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[195]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[196]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateX" 
		"Combot_RigRN.placeHolderList[197]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateY" 
		"Combot_RigRN.placeHolderList[198]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[199]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateX" 
		"Combot_RigRN.placeHolderList[200]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateY" 
		"Combot_RigRN.placeHolderList[201]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateZ" 
		"Combot_RigRN.placeHolderList[202]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.visibility" 
		"Combot_RigRN.placeHolderList[203]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleX" 
		"Combot_RigRN.placeHolderList[204]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleY" 
		"Combot_RigRN.placeHolderList[205]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[206]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateX" 
		"Combot_RigRN.placeHolderList[207]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateY" 
		"Combot_RigRN.placeHolderList[208]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[209]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.visibility" 
		"Combot_RigRN.placeHolderList[210]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateX" 
		"Combot_RigRN.placeHolderList[211]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateY" 
		"Combot_RigRN.placeHolderList[212]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateZ" 
		"Combot_RigRN.placeHolderList[213]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleX" 
		"Combot_RigRN.placeHolderList[214]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleY" 
		"Combot_RigRN.placeHolderList[215]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[216]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateX" 
		"Combot_RigRN.placeHolderList[217]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateY" 
		"Combot_RigRN.placeHolderList[218]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateZ" 
		"Combot_RigRN.placeHolderList[219]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateX" 
		"Combot_RigRN.placeHolderList[220]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateY" 
		"Combot_RigRN.placeHolderList[221]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[222]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.visibility" 
		"Combot_RigRN.placeHolderList[223]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleX" 
		"Combot_RigRN.placeHolderList[224]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleY" 
		"Combot_RigRN.placeHolderList[225]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[226]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateX" 
		"Combot_RigRN.placeHolderList[227]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateY" 
		"Combot_RigRN.placeHolderList[228]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[229]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateX" 
		"Combot_RigRN.placeHolderList[230]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateY" 
		"Combot_RigRN.placeHolderList[231]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateZ" 
		"Combot_RigRN.placeHolderList[232]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.visibility" 
		"Combot_RigRN.placeHolderList[233]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleX" 
		"Combot_RigRN.placeHolderList[234]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleY" 
		"Combot_RigRN.placeHolderList[235]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[236]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateX" 
		"Combot_RigRN.placeHolderList[237]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateY" 
		"Combot_RigRN.placeHolderList[238]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[239]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.visibility" 
		"Combot_RigRN.placeHolderList[240]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateX" 
		"Combot_RigRN.placeHolderList[241]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateY" 
		"Combot_RigRN.placeHolderList[242]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateZ" 
		"Combot_RigRN.placeHolderList[243]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleX" 
		"Combot_RigRN.placeHolderList[244]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleY" 
		"Combot_RigRN.placeHolderList[245]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[246]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateX" 
		"Combot_RigRN.placeHolderList[247]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateY" 
		"Combot_RigRN.placeHolderList[248]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateZ" 
		"Combot_RigRN.placeHolderList[249]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateX" 
		"Combot_RigRN.placeHolderList[250]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateY" 
		"Combot_RigRN.placeHolderList[251]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[252]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.visibility" 
		"Combot_RigRN.placeHolderList[253]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleX" 
		"Combot_RigRN.placeHolderList[254]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleY" 
		"Combot_RigRN.placeHolderList[255]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[256]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "F48A8EFD-B040-F3C6-2FE3-BABAF1B8ECD5";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "72BFF5EF-254B-B2B8-6459-C7B221ED2E3C";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "C9BEF5E4-3B4E-B07C-6BA6-399336BBB603";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "D4630374-D743-AB07-BF0D-2CBEC834B251";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "9CAD64F0-0841-146B-06CF-F897D1B673DC";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "2.0.1";
	setAttr ".ARV_options" -type "string" "AOVs=Beauty;Test Resolution=100%;Camera=perspShape;Debug Shading=Disabled;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "3C6E6C79-1F4E-F74D-661B-8EB15A812CE4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "B2E40F8A-C249-AA45-C1DC-39A4C7125D3D";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3BADB78A-8541-69BA-14BD-43AC390F9B5C";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "AssaultRifleRN";
	rename -uid "38FA3D83-9C4A-0C52-7CFE-079B5C6E6526";
	setAttr -s 36 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"AssaultRifleRN"
		"AssaultRifleRN" 0
		"AssaultRifleRN" 39
		0 "|AssaultRifleRNfosterParent1|AssaultRifle_parentConstraint1" "|AssaultRifle:AssaultRifle" 
		"-s -r "
		1 |AssaultRifle:AssaultRifle "blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		2 "|AssaultRifle:AssaultRifle" "blendParent1" " -k 1"
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleX" "AssaultRifleRN.placeHolderList[1]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleY" "AssaultRifleRN.placeHolderList[2]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleZ" "AssaultRifleRN.placeHolderList[3]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateX" "AssaultRifleRN.placeHolderList[4]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateY" "AssaultRifleRN.placeHolderList[5]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateZ" "AssaultRifleRN.placeHolderList[6]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateX" "AssaultRifleRN.placeHolderList[7]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateY" "AssaultRifleRN.placeHolderList[8]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateZ" "AssaultRifleRN.placeHolderList[9]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[10]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentInverseMatrix" 
		"AssaultRifleRN.placeHolderList[11]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[12]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[13]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.blendParent1" "AssaultRifleRN.placeHolderList[14]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.blendParent1" "AssaultRifleRN.placeHolderList[15]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.visibility" "AssaultRifleRN.placeHolderList[16]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateX" 
		"AssaultRifleRN.placeHolderList[17]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateY" 
		"AssaultRifleRN.placeHolderList[18]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateZ" 
		"AssaultRifleRN.placeHolderList[19]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.visibility" 
		"AssaultRifleRN.placeHolderList[20]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateX" 
		"AssaultRifleRN.placeHolderList[21]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateY" 
		"AssaultRifleRN.placeHolderList[22]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateZ" 
		"AssaultRifleRN.placeHolderList[23]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleX" 
		"AssaultRifleRN.placeHolderList[24]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleY" 
		"AssaultRifleRN.placeHolderList[25]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleZ" 
		"AssaultRifleRN.placeHolderList[26]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateX" 
		"AssaultRifleRN.placeHolderList[27]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateY" 
		"AssaultRifleRN.placeHolderList[28]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateZ" 
		"AssaultRifleRN.placeHolderList[29]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.visibility" 
		"AssaultRifleRN.placeHolderList[30]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateX" 
		"AssaultRifleRN.placeHolderList[31]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateY" 
		"AssaultRifleRN.placeHolderList[32]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateZ" 
		"AssaultRifleRN.placeHolderList[33]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleX" 
		"AssaultRifleRN.placeHolderList[34]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleY" 
		"AssaultRifleRN.placeHolderList[35]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleZ" 
		"AssaultRifleRN.placeHolderList[36]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "133F0529-3D43-DCC0-CA80-D6B7099AAC18";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1105\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 549\n            -height 288\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 549\n            -height 288\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1105\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"D:/project_angel/Zako1/images/test_Zako_1.png\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1105\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1105\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 120 -divisions 12 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "34D55E76-DF49-A1ED-74CD-3E8DDFB06EEA";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 35 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "947D37B1-4D40-79AE-F945-A198C8CBAB8B";
	setAttr ".w" 500;
	setAttr ".h" 500;
	setAttr ".cuv" 2;
createNode lambert -n "MatGround";
	rename -uid "8B99CAED-C945-32E0-2F4E-46BBE0D258D0";
createNode shadingEngine -n "lambert2SG";
	rename -uid "019C8E13-7C45-7A46-B8BD-269EB0856250";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "15406087-2149-6430-62A8-DE8769638036";
createNode checker -n "checker1";
	rename -uid "9C143696-744C-6481-52C5-88A8C138B8B3";
	setAttr ".c1" -type "float3" 0.112 0.086464003 0.086464003 ;
	setAttr ".c2" -type "float3" 0.077 0.028182 0.028182 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "C24AA7E2-CC45-29F0-627C-A7BC07772234";
	setAttr ".re" -type "float2" 5 5 ;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "4CCD6F0E-5C43-1528-8785-D09D44A51FC7";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/CyberOps/Assets/Characters/Combot";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "DE7E99A5-EE48-7751-DF3C-EE9899897842";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Combot_Rig:ExportSet";
	setAttr ".ac[0].acn" -type "string" "Reload_AssaultRifle";
	setAttr ".ac[0].ace" 35;
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/CyberOps/Assets/Characters/Combot";
	setAttr ".exf" -type "string" "Combot_Reloading";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "69DF158D-7B47-EB70-EA9E-9191C8ABAFBC";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode pairBlend -n "pairBlend1";
	rename -uid "DDD5C38E-E942-DB32-4A7D-D9BC61A01182";
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "BD3EA0A9-4546-C7E1-32BF-ADA4D23B8B76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.554600980779179 20 -3.554600980779179
		 35 -3.554600980779179;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "989B97CC-084A-EE61-CDE9-8CB485FE6A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.34404026890525 20 11.34404026890525
		 35 11.34404026890525;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "1D3CB209-DA4B-AD8B-E6A2-97A9C62694B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.2411436809625576 20 4.2411436809625576
		 35 4.2411436809625576;
createNode animCurveTA -n "Magazine_rotateX";
	rename -uid "2845D7C9-C441-DDDD-671E-169481085F74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Magazine_rotateY";
	rename -uid "0C624741-C841-8343-948E-608D2B5091A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Magazine_rotateZ";
	rename -uid "A1E289BC-0E43-CB31-9676-55A279D5A281";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Muzzle_rotateX";
	rename -uid "AF2D5AF4-D34F-02EE-3682-ED8B868E1B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Muzzle_rotateY";
	rename -uid "2D5B6B44-5D40-6E12-76F3-53B82BC2803F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Muzzle_rotateZ";
	rename -uid "4A660A1A-3A41-C51B-5C26-9389BC2E22EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "04F3E429-7E4D-9B8D-4856-128BE6FFF494";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "69E14A24-0543-419B-C996-4DA4246D32C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "BCEFF2BE-F745-E29B-DB41-5F81CA74587D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "8854579D-C04F-DD9E-B2CE-0EAC17A74D30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "C0DEC426-1643-B0B2-E2C0-EAB3B4DD297D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "E68BB336-704D-48F1-ACF3-5A9E62DF9026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "CD26925C-3D4C-D976-6A6E-EC8950F885CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "9B7B6000-CD4D-7431-DE79-85BA647DC301";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "36198219-B044-0355-CE09-CFA2C4A8434D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "54F0ACAF-5140-12B7-FC73-1B8E3101191C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "05413CD6-334E-69FF-F469-55B76D9BB2F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "4E87D8F5-0D44-BB8B-B636-FDB91A7118AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "D3AC2E79-A749-8296-C6F8-38B4A7D4DB6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "C1AF1AE2-974F-4FC8-A881-75BE8CB2B4C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "5F1A63CF-AE41-BAC7-4AFE-D0A4C8CBB7A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "092D156B-264F-09D4-CD2E-35A1D8CAE2EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "1FF20F70-604D-0472-816D-DE851A47DA9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "61658420-0D4F-51A6-46CE-1EBE4C72BC4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "8A59EAAB-FA4D-40E9-77D2-949E277D4E84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "98DC4188-3C45-4A14-E9D8-21B1F34B75AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "F589FDB3-6B45-2AA2-E14A-81B60CBB0CE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "7B8CFC5E-D746-2D4C-F565-DC9F2F903A78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "DCA78090-8349-5703-1B60-7EB02949A393";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "2EAE1EDA-EA4D-2F01-2C81-5792003C4F02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Heading_Control_rotateY";
	rename -uid "6D3D3DF5-1F45-B817-4102-189073CAB676";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "28D9A597-794C-0E82-1B5B-029698F770DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "5DF2EF13-5A43-F2A0-400B-999A1EE52F69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "38C96E04-9A42-9D96-ED2F-6E826ABF6868";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -103.48340195236986 3 45.335608660944608
		 7 77.985285274548005 9 77.985285274548005 13 -16.152584193822467 16 -0.74345665795838756
		 18 -24.082582268790279 22 -24.082582268790279 28 -10.657213483202231 29 -10.657213483202231
		 31 70.723034753357666 35 -103.48340195236986;
	setAttr -s 12 ".kit[3:11]"  1 18 1 18 1 1 18 18 
		1;
	setAttr -s 12 ".kot[3:11]"  1 18 1 18 1 1 18 18 
		1;
	setAttr -s 12 ".kix[3:11]"  1 1 0.99159670154825608 1 1 0.2307001383059889 
		1 1 1;
	setAttr -s 12 ".kiy[3:11]"  0 0 0.12936762144609001 0 0 0.97302489494647437 
		0 0 0;
	setAttr -s 12 ".kox[3:11]"  1 1 0.99159670154825608 1 1 0.23070013830598893 
		1 1 1;
	setAttr -s 12 ".koy[3:11]"  0 0 0.12936762144608999 0 0 0.97302489494647448 
		0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "EDCEE33B-6440-D944-1FF4-649915F8FF7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -26.31859700998023 3 -35.440109443426429
		 7 -74.948539196563374 9 -74.948539196563374 13 -18.86945507556743 16 4.741141471399704
		 18 -6.8485447918973774 22 -6.8485447918973774 28 -30.76901081254012 29 -30.76901081254012
		 31 -57.103139544815555 35 -26.31859700998023;
	setAttr -s 12 ".kit[3:11]"  1 18 1 18 1 1 18 18 
		1;
	setAttr -s 12 ".kot[3:11]"  1 18 1 18 1 1 18 18 
		1;
	setAttr -s 12 ".kix[3:11]"  1 0.20524004850033228 1 1 1 0.27411049917734803 
		1 1 1;
	setAttr -s 12 ".kiy[3:11]"  0 0.97871166463447301 0 0 0 -0.96169820330535349 
		0 0 0;
	setAttr -s 12 ".kox[3:11]"  1 0.20524004850033231 1 1 1 0.27411049917734803 
		1 1 1;
	setAttr -s 12 ".koy[3:11]"  0 0.97871166463447312 0 0 0 -0.96169820330535338 
		0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "E5A18388-0C4A-ED12-A115-3188EC37FDDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 43.796367659693068 3 -20.276565842974655
		 7 -88.174732160476594 9 -88.174732160476594 13 32.722861201338468 16 -70.666430051189934
		 18 -71.874679559277823 22 -71.874679559277823 28 -12.049236039471284 29 -12.049236039471284
		 31 -148.45711219593647 35 43.796367659693068;
	setAttr -s 12 ".kit[3:11]"  1 18 1 18 1 1 18 18 
		1;
	setAttr -s 12 ".kot[3:11]"  1 18 1 18 1 1 18 18 
		1;
	setAttr -s 12 ".kix[3:11]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[3:11]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[3:11]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[3:11]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "E4CF7092-374C-0E92-3068-ADAEACAC735D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22 0 35 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "09B5CD80-0642-63F5-2663-1D8A9BA1CA35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22 0 35 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "C234736E-4846-2841-7282-B19A874E13DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22 0 35 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "0F65F4E4-E946-964B-C365-F98306B60DC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "61032360-A742-5223-1F4D-A1BFE245066C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "9A6FFE52-5C4D-C69E-445C-9894C3CE3968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateX";
	rename -uid "A97034E3-7542-B216-DDEE-D3BDE1329B95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateY";
	rename -uid "EDD88674-7B4B-E111-26CE-E68A416DD5A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateZ";
	rename -uid "1B8FF194-6245-B459-C96D-D19F1CD27130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "205F2FEC-C642-5EA6-1CC0-EC840F82F237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.478922887061245 3 -93.519380829163069
		 9 -89.123609175644077 14 -52.70940088456323 18 -52.70940088456323 19 -52.70940088456323
		 22 -52.70940088456323 28 -18.917038417781423 30 -18.917038417781423 35 -59.478922887061245;
	setAttr -s 10 ".kit[0:9]"  18 18 1 1 18 1 1 1 
		18 18;
	setAttr -s 10 ".kot[0:9]"  18 18 1 1 18 1 1 1 
		18 18;
	setAttr -s 10 ".kix[2:9]"  1 1 1 0.94020729026118299 0.94020729026118299 
		1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0.34060277647095533 0.34060277647095533 
		0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 0.94020729026118299 0.94020729026118299 
		1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0.34060277647095538 0.34060277647095538 
		0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "59FE7E56-3649-6B57-2359-A0A31AEF77A0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.344037285862395 3 -3.4838015179698472
		 9 7.2038450091734356 14 65.478990512185803 18 65.478990512185803 19 65.478990512185803
		 22 65.478990512185803 28 13.637049377338764 30 13.637049377338764 35 11.344037285862395;
	setAttr -s 10 ".kit[0:9]"  18 18 1 1 18 1 1 1 
		18 18;
	setAttr -s 10 ".kot[0:9]"  18 18 1 1 18 1 1 1 
		18 18;
	setAttr -s 10 ".kix[2:9]"  1 1 1 1 1 0.86642036610229267 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0 0 -0.49931528036218659 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 1 1 0.86642036610229278 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0 0 -0.49931528036218659 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "4D742F5C-B048-E094-A363-59A3C659483C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 4.2411421235556332 3 2.2803419738150712
		 9 -3.5461801648479976 14 20.32501597899061 18 20.32501597899061 19 20.32501597899061
		 22 20.32501597899061 28 -0.53449649633807628 30 -0.53449649633807628 35 4.2411421235556332;
	setAttr -s 10 ".kit[0:9]"  18 18 1 1 18 1 1 1 
		18 18;
	setAttr -s 10 ".kot[0:9]"  18 18 1 1 18 1 1 1 
		18 18;
	setAttr -s 10 ".kix[2:9]"  1 1 1 0.6525834371761583 0.6525834371761583 
		1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0 0 0 0.75771687161059775 0.75771687161059775 
		0 0 0;
	setAttr -s 10 ".kox[2:9]"  1 1 1 0.65258343717615841 0.65258343717615841 
		1 1 1;
	setAttr -s 10 ".koy[2:9]"  0 0 0 0.75771687161059775 0.75771687161059775 
		0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "B31EF214-9541-CB8D-D1FB-45966378050E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "837FF105-9F46-EDCE-44FE-48BFE36E6BEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "B6C691D8-1749-8D0A-3EF7-AA89E92C61C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightFingers_Control_rotateX";
	rename -uid "4DFEABE8-AC4C-267A-D687-57961CF2FE04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightFingers_Control_rotateY";
	rename -uid "94EAA1AD-EF40-DE27-9AD3-DB9914D9D2D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightFingers_Control_rotateZ";
	rename -uid "FADC6E60-C44B-EBEA-891F-7580784E0EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateX";
	rename -uid "DD882C83-6543-7C5A-C4E8-72BF2C1DBF5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateY";
	rename -uid "BA71802E-2845-7910-EC53-81858DBFC08F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateZ";
	rename -uid "C653CB40-A549-C8AC-9419-A6879AA38C9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Spine_Control_rotateX";
	rename -uid "58208108-EB4F-B64D-6028-DC88204E7299";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Spine_Control_rotateY";
	rename -uid "8A0F4C7B-214F-3D16-32FE-EFB5CCCB43B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Spine_Control_rotateZ";
	rename -uid "6973F2AD-7342-668F-21AB-29AE0C947B7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "Torso_Control_rotateX";
	rename -uid "55F7634C-954D-FE1B-AC29-B0A80C862B5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -0.37168947722030798 7 -11.59920317043963
		 11 -8.348005461544096 13 -9.1396100525123121 16 13.485821448464787 20 0 25 9.6771534541791944
		 28 12.664192121989164 32 -5.441308014304683 35 0;
createNode animCurveTA -n "Torso_Control_rotateY";
	rename -uid "93CE59D9-8547-B758-37B1-E6BDB657335B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -22.208299380584933 3 -8.0695640976852054
		 7 7.0566960874297946 11 -0.008658628232144347 13 -6.0863910245965132 16 -26.715013084378242
		 20 -22.208299380584933 25 -29.803838573840373 28 -28.170824373024121 32 -9.5118981385679398
		 35 -22.208299380584933;
createNode animCurveTA -n "Torso_Control_rotateZ";
	rename -uid "4AC233C6-F340-6821-49A3-37806954D544";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -9.0220710711757608 7 -6.0385386823030229
		 11 6.7530609092728335 13 9.6033911170347306 16 -10.229923964717576 20 0 25 -7.1902438045928116
		 28 -9.939735519796729 32 7.3659198382339204 35 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "CC7FDD8D-164C-A595-93B6-8FBC6CF72704";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 19.414247578716505 3 24.657269860880906
		 7 37.158879768621787 11 42.945783098294932 16 16.754458512656786 20 18.15738000778493
		 25 25.719272954702284 30 43.684196301991882 32 19.613156413693449 35 19.414247578716505;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "971C2C56-9A4B-9BC5-B48E-C5BE71A5BD67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 29.247676797145502 3 13.653711320035905
		 7 -4.0867882714966548 11 48.905707065147126 16 64.013706869393928 20 37.545182127722349
		 25 49.520282135916759 30 10.041155878061994 32 14.697416731114588 35 29.247676797145502;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "9E85896E-134A-70E2-2FC5-0EAE65D3601E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.1747667114605125 3 12.260776174565011
		 7 7.5878990179384802 11 -4.0674324457785165 16 -29.653753308864747 20 -3.2413009551900061
		 25 -5.5280204073672152 30 -8.716745552854448 32 -2.1637368471272795 35 -1.1747667114605125;
createNode animCurveTA -n "LeftBackAttach_Control_rotateX";
	rename -uid "C5281BB8-3444-79F2-F4C0-799B1A15474B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateY";
	rename -uid "224C5FE4-E14A-4085-970D-13BCD289D9F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateZ";
	rename -uid "6448DFFC-1C4B-0E95-44A2-AE9FB6D904C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "B7455135-064E-4C28-DCED-6292FE9BBE6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 -9.4673112126589913 7 -11.028557991251969
		 11 -15.774098133624426 13 -17.36458995847898 16 -3.4636251978732093 20 0 35 5.4214666620467842;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "4115192A-994F-8801-EE07-98ABE669383A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 7.2366437196769828 7 -27.378210073449289
		 11 0.11782653255920052 13 31.857570025565259 16 -14.738362692951638 20 0 35 -2.076287046316907;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "E7930818-1E48-DD88-15CC-7C864C7DF74F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 4.8339894834821555 7 9.0937325368469004
		 11 28.191738900244289 13 41.782307481924832 16 10.313123934349266 20 0 35 22.288131230358943;
createNode animCurveTA -n "RightBackAttach_Control_rotateX";
	rename -uid "87760FDE-6146-7D14-420B-1BB0DB6DEA12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateY";
	rename -uid "C306555F-C042-01CC-AF4A-7DB07BB74EDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateZ";
	rename -uid "DADF6A52-B94B-6A4A-52B8-87967FDB5FE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "FF501470-7F42-30C0-2262-79AE0E362456";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 42.71786302371811;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "F1DB2D27-2B42-0EE6-1523-3499C538F4A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 31.86676225118838;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "515CA99F-F24C-ABE2-348D-9FA09897624D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 -10.927334106422439;
createNode animCurveTA -n "ambientLight1_rotateX";
	rename -uid "2E4952D4-FA41-BA23-3B75-DDB358198419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "ambientLight1_rotateY";
	rename -uid "DA52DDB9-C246-11F5-5E6F-5EB0BA59E3FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "ambientLight1_rotateZ";
	rename -uid "658C8C0D-9E41-57A9-03DF-7A96D1264AC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "directionalLight1_rotateX";
	rename -uid "E6777539-6F47-036E-6D82-80862F6875B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -66.214315945179123 20 -66.214315945179123
		 35 -66.214315945179123;
createNode animCurveTA -n "directionalLight1_rotateY";
	rename -uid "FD25BE9B-0040-F268-5EFC-C8BCB09D14C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.7009272977242968 20 -8.7009272977242968
		 35 -8.7009272977242968;
createNode animCurveTA -n "directionalLight1_rotateZ";
	rename -uid "07601E7A-7048-73F6-93B9-1EA3866B36F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.026075857294055 20 15.026075857294055
		 35 15.026075857294055;
createNode animCurveTA -n "pPlane1_rotateX";
	rename -uid "229430C9-9648-B5BD-5FA2-44A33C99E5F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "pPlane1_rotateY";
	rename -uid "EA3C6031-7E46-F38D-E68C-1CBBFC9E6650";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTA -n "pPlane1_rotateZ";
	rename -uid "BD59F08E-9E47-FDEF-4E03-B6A10042ABF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "ambientLight1_visibility";
	rename -uid "35DD89FE-5F4C-1D17-E119-7B916327073E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "ambientLight1_translateX";
	rename -uid "4C3CE891-4C47-DDB5-3482-9AB7B51C3B50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "ambientLight1_translateY";
	rename -uid "4D680FF3-AC41-C2BB-57D8-6C80D884B0BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "ambientLight1_translateZ";
	rename -uid "208698E0-A242-EDE6-73E5-488D565864C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "ambientLight1_scaleX";
	rename -uid "3747E0EE-DF4D-AB40-9D62-448547A14807";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "ambientLight1_scaleY";
	rename -uid "2B7A7BDB-C948-2AD5-0B35-63BBA54E8DF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "ambientLight1_scaleZ";
	rename -uid "723D04D6-A04C-A8B1-78F0-AAA0C698B161";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "directionalLight1_visibility";
	rename -uid "3318D25E-4349-0A2D-C7FA-2B97055E1659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "directionalLight1_translateX";
	rename -uid "971E999F-C04B-2B27-F6BD-4E9236FBC577";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2719079895671257 20 7.2719079895671257
		 35 7.2719079895671257;
createNode animCurveTL -n "directionalLight1_translateY";
	rename -uid "02287B68-E748-1B7D-AC42-FD836DF2FF99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 242.89196688169559 20 242.89196688169559
		 35 242.89196688169559;
createNode animCurveTL -n "directionalLight1_translateZ";
	rename -uid "FEA42F66-1D4C-76AD-26F9-6699487EAF3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 229.75789686566026 20 229.75789686566026
		 35 229.75789686566026;
createNode animCurveTU -n "directionalLight1_scaleX";
	rename -uid "C4BC0EE4-CA4F-2840-D5E7-2185A46354E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "directionalLight1_scaleY";
	rename -uid "D3B0788D-664A-C6BA-FE93-07806212159B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "directionalLight1_scaleZ";
	rename -uid "D8CDE14E-724B-EEA0-F31B-FB9B46340283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Muzzle_visibility";
	rename -uid "59139A94-5742-D6A4-0BC1-0F949457CD93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Muzzle_translateX";
	rename -uid "BFEDD70E-3A46-4775-5580-4A89FCB2C5E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Muzzle_translateY";
	rename -uid "FADC978F-6D43-DAD5-9DC4-209AE192AD31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.112238925630741 20 16.112238925630741
		 35 16.112238925630741;
createNode animCurveTL -n "Muzzle_translateZ";
	rename -uid "854C9296-0443-59BD-766B-58BE43088184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 73.68979861575238 20 73.68979861575238
		 35 73.68979861575238;
createNode animCurveTU -n "Muzzle_scaleX";
	rename -uid "75189B95-2949-7A17-F3AF-19A03B6D2962";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Muzzle_scaleY";
	rename -uid "86ED7F32-BE44-3E84-F4C1-4BA4FB9AE184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Muzzle_scaleZ";
	rename -uid "E9058633-2249-C745-9E88-AD8C8B9133B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightHandAttach_Control_visibility";
	rename -uid "66210E53-AF4A-81F8-54FF-2BBD0F5ED595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightHandAttach_Control_translateX";
	rename -uid "73E5BC5C-3F4D-5C56-FCAE-339FE7EB20DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightHandAttach_Control_translateY";
	rename -uid "E15007B5-254C-128C-30E4-CEAE3F90A1B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightHandAttach_Control_translateZ";
	rename -uid "782999FE-0940-98B9-4D54-79BFDB09A777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightHandAttach_Control_scaleX";
	rename -uid "1B6AC587-7047-67F7-7234-188821C74C23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleY";
	rename -uid "896C5EF4-D749-29A6-6351-B3B5A8B46B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleZ";
	rename -uid "5C7343D1-3E41-9C30-25DD-31A773478D4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "A814A423-D244-274C-DED9-6D98147A9879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "E43CF3AC-0E48-99BD-F82F-CB85BFE40C67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -46.49143605879145 20 -46.49143605879145
		 35 -46.49143605879145;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "538E09C1-FF4F-755C-7B85-9C808BEE9864";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.8205468568541914 20 9.8205468568541914
		 35 9.8205468568541914;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "C3AFF8DB-BC49-D0EF-14FA-8FA4A82884FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.7076434996327639 20 -1.7076434996327639
		 35 -1.7076434996327639;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "72A6497D-3F4B-8122-6220-7CA28B113D82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "667E10C5-8640-44E9-7761-C5BDC3C0C1E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "58D9607A-874E-66DB-C553-9F8A6722C012";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightFingers_Control_visibility";
	rename -uid "15965D1D-5548-EE55-8D45-DD8ED98C375C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightFingers_Control_translateX";
	rename -uid "970F127A-E446-FE66-BC61-5C98E295FEEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightFingers_Control_translateY";
	rename -uid "6E3D895D-6443-98DC-6B49-0BB8C3F74EE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightFingers_Control_translateZ";
	rename -uid "A2AE3851-1A4D-A9FF-9DE2-BB96FA2B7DAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightFingers_Control_scaleX";
	rename -uid "1EB9632D-334F-8F79-DDFA-518373B56E2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightFingers_Control_scaleY";
	rename -uid "B9F00C0D-9647-E54A-D842-8A835CEE67DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightFingers_Control_scaleZ";
	rename -uid "E48BE608-F346-B401-DBAA-54A2F1B572B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "F41AA6FC-7B44-F534-5981-B6BDDE9E5AF6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 19 1 22 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 9 1 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "EE357EA2-D349-450A-61E0-F9824BA2946E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.1598062967656091 3 10.900641622228939
		 9 9.4215047924522324 14 -2.7638096216258239 19 -3.3419847889620229 22 -3.3419847889620229
		 28 -2.8271008246886282 30 -2.6291246378501256 33 5.673601357531564 35 7.1598062967656091;
	setAttr -s 10 ".kit[2:9]"  1 18 18 1 1 18 18 18;
	setAttr -s 10 ".kot[2:9]"  1 18 18 1 1 18 18 18;
	setAttr -s 10 ".kix[2:9]"  1 0.11925258849644789 1 1 0.13366371184696985 
		0.13894764925966291 0.021277723666660156 1;
	setAttr -s 10 ".kiy[2:9]"  0 -0.99286394845260484 0 0 0.99102674642780975 
		0.99029972774166386 0.99977360361012002 0;
	setAttr -s 10 ".kox[2:9]"  1 0.11925258849644789 1 1 0.13366371184696985 
		0.13894764925966291 0.021277723666660156 1;
	setAttr -s 10 ".koy[2:9]"  0 -0.99286394845260484 0 0 0.99102674642780975 
		0.99029972774166397 0.99977360361012002 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "A1974F92-C14F-387A-E834-40978A799EC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 52.311382313462445 3 62.148806145351521
		 9 56.565878461973135 14 51.158472728388205 18 31.256100828852595 19 38.170716395434425
		 22 35.640031208839844 28 46.158894239539649 30 43.255255678339523 33 35.313427970712134
		 35 52.311382313462445;
	setAttr -s 11 ".kit[2:10]"  1 1 18 1 1 1 18 18 
		18;
	setAttr -s 11 ".kot[2:10]"  1 1 18 1 1 1 18 18 
		18;
	setAttr -s 11 ".kix[2:10]"  1 1 1 1 1 0.022487989431295815 0.01920571248604299 
		1 1;
	setAttr -s 11 ".kiy[2:10]"  0 0 0 0 0 0.99974711318979959 -0.99981555329365812 
		0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 1 1 0.022487989431295815 0.01920571248604299 
		1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0 0 0.99974711318979959 -0.99981555329365801 
		0 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "3400B015-A74E-98F4-0E2B-91A66A22E2B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.1482952480566411 3 21.10128641413943
		 9 22.670090761253483 14 16.128406878882203 18 14.949144259095618 19 14.949144259095618
		 22 14.949144259095618 28 4.4881076905675243 30 8.5603872024350451 33 26.862605295640122
		 35 7.1482952480566411;
	setAttr -s 11 ".kit[2:10]"  1 1 18 1 1 1 18 18 
		18;
	setAttr -s 11 ".kot[2:10]"  1 1 18 1 1 1 18 18 
		18;
	setAttr -s 11 ".kix[2:10]"  1 1 1 0.036973072008093438 0.036973072008093438 
		1 0.009310792426147043 1 1;
	setAttr -s 11 ".kiy[2:10]"  0 0 0 0.99931626222446945 0.99931626222446945 
		0 0.99995665363274489 0 0;
	setAttr -s 11 ".kox[2:10]"  1 1 1 0.036973072008093438 0.036973072008093438 
		1 0.0093107924261470448 1 1;
	setAttr -s 11 ".koy[2:10]"  0 0 0 0.99931626222446934 0.99931626222446934 
		0 0.99995665363274489 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "23AF5F17-EE42-20FD-F76A-62B903382284";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 19 1 22 1 35 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "2C458808-D541-E50E-8D67-EB855CBD2C44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 19 1 22 1 35 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "1E8C4D44-C948-E30D-F049-A3B4D72801B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 19 1 22 1 35 1;
	setAttr -s 4 ".kit[2:3]"  1 18;
	setAttr -s 4 ".kot[2:3]"  1 18;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "F037E61C-744C-F220-B112-EDBCA9775A20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "34C059F9-BA4D-3A4F-D31B-D3AE2F491003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "352E2A0E-DB45-7E24-5384-BE86CF6A5294";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "B12D44FC-9242-AE89-AE1F-0EBCF9397ACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Heading_Control_visibility";
	rename -uid "2CC9C3AA-694A-2213-7B43-4D932B404AED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Heading_Control_translateX";
	rename -uid "3931914F-B14B-EE63-E473-379ADCBE0DA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Heading_Control_translateY";
	rename -uid "80818FBE-A740-9C59-941E-7CB8E967CDDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Heading_Control_translateZ";
	rename -uid "1718FC15-3542-FB88-777E-FF83DDF32C8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "Heading_Control_scaleX";
	rename -uid "8FB4D8C3-8F41-4BEE-5426-2785DB8D27D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Heading_Control_scaleY";
	rename -uid "F56B716D-6D4B-9EDA-4408-16BFEE596427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Heading_Control_scaleZ";
	rename -uid "5ACC9106-3141-DB8C-5AAC-C8A9B03F0CF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "80B9CC1F-0C4D-AC75-5B30-58A4D4649797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "C112C5D2-FC46-9AA6-5108-60BF67BF4750";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "6BDCA9E8-8341-B935-ABE5-31919DADCFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "D1CB1A0A-B947-0E92-E06A-FE83245ADF0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "09DA2A8D-AF41-E1E2-01E0-229A8D8300C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "F8942CB3-FE43-5605-D93C-BCB48983C6C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "8E8B73AE-844A-B3D5-AD23-11A634D4BC9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "B4986775-F34C-B5E4-3D6B-24847379E374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Root_Control_translateX";
	rename -uid "E27AA07A-6E47-3068-9989-B3B9CE88FD1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "2FC7EB65-C346-6833-EE3F-5D9C3576D836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "60A4B2BE-FF4F-1232-6B5B-D994CAA3329E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "21F274A5-714E-24E5-82F7-4CB66E7A414B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "38E047EE-B144-9464-FC9C-B3AFD91CF0AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "DDFE493A-2847-F28B-19E1-A597FC42764F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "E56E2FCD-D049-DE0A-6569-3099E32E4166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "C0A818ED-E043-88F7-0EAB-84A862A98C9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "8264ACC7-EB4E-589A-2FF9-2EB0CB2622F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "84B257DB-7F41-ED0B-2A68-80BD8F88EF32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "12C62DF1-C94D-35C8-9853-9FB9DFA64DCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "D50595F6-7F4A-3F74-D45B-9D8AF651BDAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "862DBD55-714B-B114-7B38-D1B587C87DD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "39E47F9B-A442-B36F-6E04-FB9C974C9AAF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "D7C68AA6-3B43-EC4A-083D-66B825F6C11F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "42EFDF28-3048-90DD-BE0E-489AE0E4BA23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "D763A339-204C-67B5-BC2D-2E8A4FDE6644";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "F1607313-0D46-5DA8-F107-4BA300D4B591";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "F14D87EF-8B4D-6C5B-4C15-85BF710315C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "B7A96EE9-CB44-AD99-8BD3-9F84C16D2E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "EF691BF5-1D45-C244-D914-0E900D94704B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "E4903556-CC40-60CC-11F7-58818870000A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "9FFD1431-7840-101D-A7EA-87B890B19668";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "60D5BC20-4642-0865-2CC6-01A41E4B392C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "D007D46F-DF4D-FC7E-7D66-F2A9CDA44E29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "7C936B0E-2945-FCC9-43B7-AA8364B79797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "63900E03-904B-AF6B-6B30-2686DB7EA50D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "C4F1BC29-084D-0666-A9E0-209C313A70DE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "1479927E-EC45-2969-4778-A4B8A788A45D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "5CFB07D2-0042-9802-F002-689511942C3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "2B53AD5B-D045-23BA-7C39-C78E635E57FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "7E8671C2-DF47-59C0-FC09-0092BF4E044C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "0728CE0C-2843-E6E7-70B8-059DF65F25E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "F8100346-A44C-742C-1A10-7D8E03D02D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "28FB9C7B-1B4E-5F35-CB71-2DA2FF3F7275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "216B942B-E242-2224-1DA8-63BC159E0DE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "F28067DB-8E44-F34E-FA45-0088FD0AB888";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "E8BB454B-C44D-1C31-5657-57BE95CC961F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "4F5BD2B8-2643-3B55-307E-6D9432A69635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "9BE9A3FB-F344-B5EE-1857-E09735657317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "9AA67FE5-2947-908D-6752-FDBBFD232286";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "7A06C693-5A4B-510B-8D3B-848C5C1ED27E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "8AF7399E-FE4A-077A-E936-09815E22B36C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "1C273BCF-6C4D-70E7-F88D-0CBE94053501";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "07285F74-FD4E-9FC2-2227-24A1116C3BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "58EEF5CD-8B4D-E812-E13E-C5BCB020CAC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "7B9A43C7-684D-0499-BF20-409A968AEA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "9D5CF07D-AB4E-407D-3CB8-0A9F9718885F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightBackAttach_Control_visibility";
	rename -uid "8E272210-7B4E-DAB8-3D37-B094AD418637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightBackAttach_Control_translateX";
	rename -uid "8903C98B-654D-53B2-24F2-A5A4CF0D9713";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightBackAttach_Control_translateY";
	rename -uid "09BE803D-524E-91A1-EB62-72B1E1159FC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightBackAttach_Control_translateZ";
	rename -uid "33C0B44F-7C40-FF16-8DE3-099D00722C11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightBackAttach_Control_scaleX";
	rename -uid "4ED64233-3944-E841-F397-C7A0730A2C4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleY";
	rename -uid "E7EED93D-B540-4B25-BA12-C6A9BEC19D6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleZ";
	rename -uid "51FFAF61-7D4F-A933-EE93-A8AC686C1ED3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftBackAttach_Control_visibility";
	rename -uid "59B9A935-7247-4186-A6B8-9E98701B7C44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftBackAttach_Control_translateX";
	rename -uid "56A80760-D849-A804-CA8C-88891AEC1E0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateY";
	rename -uid "31E95E81-4A47-F8A0-C0B3-CA91BF66AF18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateZ";
	rename -uid "9589A2E1-9A45-5466-4D0C-66A834330A02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleX";
	rename -uid "BCE0C92E-A441-9345-A081-8CBD4DA846EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleY";
	rename -uid "B7177230-1748-5F44-C732-C2A3DF5E646E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleZ";
	rename -uid "43D6CC95-FA47-726B-462C-ABBFE53E4492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "E157BFE7-2840-96A4-BE84-8B8C33E45974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "4C64864F-C947-4D91-9ACA-849A223E8E42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "BD629239-1945-6F44-7601-BDAECBF6C6B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "D0F08CB4-7348-25A7-EEE1-86BBC5448E6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "1BA9CC55-2247-9EBC-3903-A99B7DB729E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "5C16D32B-3040-F5DB-16EA-9E9FE09DBE29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "979F3B52-9742-382A-D3CF-5A91108E9DF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "E72AABC6-7E4C-A29F-5CF1-7D92831B5CF7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "21D201B0-E646-BC96-30A5-3EA7B374E758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "F08C932C-E243-06D1-BCAA-41943C878917";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "29E886F5-494A-5168-6852-F799277E791B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "9AEFA847-3D44-01F8-5F75-CB85C2F5ED29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "55C03A30-8E4C-9D61-9C66-828418FAB237";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "996474CB-1945-941A-D8F5-06BC9081E163";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "76B048AF-C940-AB62-747F-27864EF5158D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "4327A58F-A741-C83E-529F-C3862195E6DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "C44E8505-684B-8671-C37D-839B96CD7D75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "89D2E70A-CC46-22F3-A43D-7580D2F8908E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "BA7B3C85-DE4B-B827-AB71-4896E2DD9A85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "2F9F6F92-5440-5601-2A30-F6AEF3106416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "D16357B2-E148-BA50-3C5D-0795633179D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Torso_Control_visibility";
	rename -uid "2F385B81-1A41-3E40-4AC5-D09096531E95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Torso_Control_translateX";
	rename -uid "DFAFE2FF-494B-C226-072D-538C98347C71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Torso_Control_translateY";
	rename -uid "815F146A-1D44-4A92-FE00-95B6615C757E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Torso_Control_translateZ";
	rename -uid "0507ECAD-D34D-E749-061D-7DA1416ED273";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "Torso_Control_scaleX";
	rename -uid "76A9CE63-1B49-ED46-ED4D-4EB9A3745E60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Torso_Control_scaleY";
	rename -uid "10C14560-9943-2E90-A2B5-8AAA0AAD0BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Torso_Control_scaleZ";
	rename -uid "7BBB737B-6A4E-5A01-A83C-78B52547FE77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Spine_Control_visibility";
	rename -uid "4F7C0BAD-B94F-6FF6-4327-7490AE9EA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Spine_Control_translateX";
	rename -uid "371F893F-0D43-A9D0-697F-798693E1125A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Spine_Control_translateY";
	rename -uid "F00E4DF3-F240-471D-2B92-87B14839BB5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Spine_Control_translateZ";
	rename -uid "F71B85E2-584F-CC77-0683-2D834430B35D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "Spine_Control_scaleX";
	rename -uid "5EAE7054-3146-BF82-8A43-418CE5570836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Spine_Control_scaleY";
	rename -uid "BD52EDA2-0845-4F89-FF1D-1694ABE4E80B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Spine_Control_scaleZ";
	rename -uid "262082D6-234D-7845-5A00-04B60504E28C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftHandAttach_Control_visibility";
	rename -uid "D6BF6CB5-B943-AF80-CC0B-8FA61CC1FCC8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftHandAttach_Control_translateX";
	rename -uid "D78E3361-8E40-9AB5-9A86-8A9BA561BAF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateY";
	rename -uid "762CB6C7-D24F-57D2-4191-A29F11B5952B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateZ";
	rename -uid "7B02CB1B-314B-DF19-209D-5992DA6F7391";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleX";
	rename -uid "82D49936-EE4E-ED30-18B4-5CB3C151068F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleY";
	rename -uid "F377C8B2-0645-78A6-BE83-86B9A078D9F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleZ";
	rename -uid "5F9287FB-A74C-2C2A-6E04-DEA01B58A289";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "0559443E-3540-DDB9-08EF-64BBC84AA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 22 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "BB76F974-3A4A-E1D7-0DB2-BBB0F1799A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -31.750035529637657 3 -22.793476418209668
		 7 -45.548445094369058 11 -51.02859684519693 16 2.7267248348034046 22 112.58498389598152
		 30 76.469348268013675 35 -11.065808364804095;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "1E036DAD-CB47-A544-0209-A789907EF4C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -23.190966705542404 3 -20.481610577607139
		 7 10.678018652704129 11 3.7803219416572404 16 107.20633233049084 22 67.693660541612275
		 30 -41.391647171050032 35 41.763087527981305;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "4589466D-2148-9E0C-B835-D9976D152053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 29.366051235745708 3 28.690882394858413
		 7 80.590196178906339 11 78.361877153752658 16 53.580944702302823 22 99.169981510288721
		 30 21.487956866310679 35 -54.996885073793713;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "7D7F1B91-6E46-7A3B-C6CB-098A928B3911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 22 1 35 1;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "C76907FE-124F-BD83-113F-9D9232E32C37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 22 1 35 1;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "86070FE9-5449-2C16-A82A-16B2A9899823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 22 1 35 1;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "BA9646A3-2F46-EBE4-AB28-BEAA1AC71F6D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "78E2C989-4C4E-D1CE-A368-618AD63FD21D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "066B868F-6F4E-2E12-5897-628929E4C0E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "6D75918A-BD41-358F-09EE-B5A576D75398";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "0C7F13D8-EF49-F7EE-8F90-E7AE68B54D05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "3DD20674-6C45-B0E8-CAB3-B7AB2E9E21F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "BE09024E-114A-F741-9263-CA97DD0214EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "540E7534-C44E-1ADC-CB3D-52B30F2B5278";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 28 1 29 1 35 1;
	setAttr -s 4 ".kit[0:3]"  9 1 9 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "B30F3304-DB4D-C924-79C2-3FAE07C85090";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -36.114550766597944 3 16.735769474444677
		 5 -7.1830077461847992 7 -19.472894416909277 9 -19.919127865435691 13 18.352302749873417
		 16 -35.731417667427976 18 -35.731417667427976 22 -35.731417667427976 24 -13.538445599565222
		 26 -18.892050324291301 28 -33.499752054417414 29 -36.114550766597944 31 -50.370106803239921
		 35 -36.114550766597944;
	setAttr -s 15 ".kit[4:14]"  1 18 1 18 1 18 18 1 
		18 18 1;
	setAttr -s 15 ".kot[4:14]"  1 18 1 18 1 18 18 1 
		18 18 1;
	setAttr -s 15 ".kix[4:14]"  0.011911362030270198 1 1 1 1 1 0.0083491958731791334 
		0.14350248840865745 0.0074092436560003177 1 1;
	setAttr -s 15 ".kiy[4:14]"  -0.99992905721085223 0 0 0 0 0 -0.99996514485669508 
		-0.98964995620700313 -0.99997255117750405 0 0;
	setAttr -s 15 ".kox[4:14]"  0.011911362030270198 1 1 1 1 1 0.0083491958731791351 
		0.14350248840865745 0.0074092436560003186 1 1;
	setAttr -s 15 ".koy[4:14]"  -0.99992905721085223 0 0 0 0 0 -0.99996514485669519 
		-0.98964995620700313 -0.99997255117750417 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "488B5A3B-5D4C-F48C-EBEC-0DA0454D9C86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 45.332985407123402 3 22.564588987074998
		 7 33.937345160201886 9 36.288756843861478 16 10.250862652339563 18 30.527315944840538
		 22 30.527315944840538 23 8.3817849988067366 24 10.188075350323771 26 39.38289825582298
		 28 45.332985407123402 29 45.332985407123402 31 47.401557559801972 35 45.332985407123402;
	setAttr -s 14 ".kit[3:13]"  1 1 18 1 18 18 18 1 
		18 18 1;
	setAttr -s 14 ".kot[3:13]"  1 1 18 1 18 18 18 1 
		18 18 1;
	setAttr -s 14 ".kix[3:13]"  1 0.015746783557262112 1 0.0067082967441305348 
		1 0.007688951178755659 0.0047422170759542298 0.014813854922288183 1 1 1;
	setAttr -s 14 ".kiy[3:13]"  0 0.99987601171725315 0 0.9999774991242516 
		0 0.99997043957797604 0.99998875562538425 0.99989026883070609 0 0 0;
	setAttr -s 14 ".kox[3:13]"  1 0.015746783557262115 1 0.0067082967441305348 
		1 0.007688951178755659 0.0047422170759542307 0.014813854922288181 1 1 1;
	setAttr -s 14 ".koy[3:13]"  0 0.99987601171725327 0 0.99997749912425171 
		0 0.99997043957797604 0.99998875562538425 0.99989026883070609 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "B5641BDC-DB45-7417-A8A2-95B72D3850B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 47.213224201068499 5 -39.997682416274984
		 7 -26.478608143276475 9 -25.614778965499212 11 -41.9667917458749 16 15.342293282081648
		 18 15.342293282081648 22 15.342293282081648 24 12.763672730901295 26 48.049716938163684
		 28 57.263593351394661 29 47.213224201068499 31 18.781409126978815 35 47.213224201068499;
	setAttr -s 14 ".kit[3:13]"  1 18 1 18 1 18 18 1 
		18 18 1;
	setAttr -s 14 ".kot[3:13]"  1 18 1 18 1 18 18 1 
		18 18 1;
	setAttr -s 14 ".kix[3:13]"  1 1 0.022998446980956138 1 1 1 0.0037452987645835039 
		1 0.0032482392326841987 1 1;
	setAttr -s 14 ".kiy[3:13]"  0 0 0.99973550073830242 0 0 0 0.99999298634398637 
		0 -0.99999472445702797 0 0;
	setAttr -s 14 ".kox[3:13]"  1 1 0.022998446980956138 1 1 1 0.0037452987645835039 
		1 0.0032482392326841983 1 1;
	setAttr -s 14 ".koy[3:13]"  0 0 0.99973550073830231 0 0 0 0.99999298634398637 
		0 -0.99999472445702797 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "C01A0E9D-AE47-3AF9-403F-0097343B7500";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 28 1 29 1 35 1;
	setAttr -s 4 ".kit[1:3]"  1 18 1;
	setAttr -s 4 ".kot[1:3]"  1 18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "E793F9E4-224B-EBA9-4FFD-61A302C72679";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 28 1 29 1 35 1;
	setAttr -s 4 ".kit[1:3]"  1 18 1;
	setAttr -s 4 ".kot[1:3]"  1 18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "D4E843A0-F745-235C-3930-69B42DCE1D1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 28 1 29 1 35 1;
	setAttr -s 4 ".kit[1:3]"  1 18 1;
	setAttr -s 4 ".kot[1:3]"  1 18 1;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "Head_Geo_visibility";
	rename -uid "3E4E3CE1-6A4E-757E-DA58-FCB376B0D5A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Legs_Geo_visibility";
	rename -uid "A031F549-E849-4ABB-580C-83B42FD07407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "RightArm_Geo_visibility";
	rename -uid "EBB3FB1F-EA42-4BBD-9C0A-5B9D7AF14389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "LeftArm_Geo_visibility";
	rename -uid "C38CFFC9-6C48-A228-BD8A-6AA699B9D980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Torso_Geo_visibility";
	rename -uid "D245DD09-7A47-1DED-33D9-1C9BFD455681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "Magazine_visibility";
	rename -uid "526B94D6-3445-D799-4D99-EDB0E691A224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Magazine_translateX";
	rename -uid "52B0015E-F744-C660-EC5B-248B3775737A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Magazine_translateY";
	rename -uid "C35A66A2-5943-13F9-41A4-449B31E94F9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "Magazine_translateZ";
	rename -uid "E0A17370-6748-430E-4199-8182B0E577F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "Magazine_scaleX";
	rename -uid "325645A8-EB43-49DF-A1BC-BAA2B03D5843";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Magazine_scaleY";
	rename -uid "DCE218A0-0B42-7530-9B39-48B570C310D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "Magazine_scaleZ";
	rename -uid "8D3420FB-F640-72EE-05C0-7D9E4CC858EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "AssaultRifle_visibility";
	rename -uid "10DA7C20-5F49-207C-5259-B6AE9DF44A35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "604CA35A-BD48-5AF8-C685-B88FF7BE1E23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -24.643402921871203 20 -24.643402921871203
		 35 -24.643402921871203;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "722F3C56-AB4A-D13F-A58D-3794E4372E91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 137.93248793466495 20 137.93248793466495
		 35 137.93248793466495;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "508BF6A0-1940-9A14-17D4-6A9E327813D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.668846796471371 20 30.668846796471371
		 35 30.668846796471371;
createNode animCurveTU -n "AssaultRifle_scaleX";
	rename -uid "5032FF61-154A-023F-5974-6487CDD887D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "AssaultRifle_scaleY";
	rename -uid "7962D821-9548-CD6C-FA6A-2291BFAECB70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "AssaultRifle_scaleZ";
	rename -uid "52A852F1-5541-BAA1-999F-02A9CC5FBAC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "AssaultRifle_blendParent1";
	rename -uid "E5DC6B51-854D-19EB-F6F2-389144F2D9AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "pPlane1_visibility";
	rename -uid "52363895-ED47-166B-6238-35824602EF36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pPlane1_translateX";
	rename -uid "F9E8652F-9640-A399-024D-26BB8FF5A31D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "pPlane1_translateY";
	rename -uid "2ED27F71-AE4A-79F2-B4BD-C6BA45393D53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTL -n "pPlane1_translateZ";
	rename -uid "53E6FE18-7B46-43DE-A694-8B8B57F2DD16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 0 35 0;
createNode animCurveTU -n "pPlane1_scaleX";
	rename -uid "5D4BD215-7044-481E-6CFC-06BA7A54B06B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "pPlane1_scaleY";
	rename -uid "4F11133D-BE4E-DAE5-06F3-5EB5CFEA0402";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "pPlane1_scaleZ";
	rename -uid "4A868C48-EB4C-2494-1E45-E9AC0D962C8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 1 35 1;
createNode animCurveTU -n "AssaultRifle_blendParent2";
	rename -uid "E91C70CC-5547-5937-A8EC-648404103173";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  35 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 28;
	setAttr -av -k on ".unw" 28;
	setAttr -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".mbe";
	setAttr -k on ".mbsof";
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf";
	setAttr -k on ".gama";
	setAttr -cb on ".ar";
	setAttr -av ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".peie";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -s 3 ".dsm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
connectAttr "Legs_Geo_visibility.o" "Combot_RigRN.phl[1]";
connectAttr "Head_Geo_visibility.o" "Combot_RigRN.phl[2]";
connectAttr "LeftArm_Geo_visibility.o" "Combot_RigRN.phl[3]";
connectAttr "RightArm_Geo_visibility.o" "Combot_RigRN.phl[4]";
connectAttr "Torso_Geo_visibility.o" "Combot_RigRN.phl[5]";
connectAttr "Combot_RigRN.phl[6]" "AssaultRifle_parentConstraint1.tg[0].tt";
connectAttr "Combot_RigRN.phl[7]" "AssaultRifle_parentConstraint1.tg[0].tr";
connectAttr "Combot_RigRN.phl[8]" "AssaultRifle_parentConstraint1.tg[0].tro";
connectAttr "Combot_RigRN.phl[9]" "AssaultRifle_parentConstraint1.tg[0].trp";
connectAttr "Combot_RigRN.phl[10]" "AssaultRifle_parentConstraint1.tg[0].trt";
connectAttr "Combot_RigRN.phl[11]" "AssaultRifle_parentConstraint1.tg[0].ts";
connectAttr "Combot_RigRN.phl[12]" "AssaultRifle_parentConstraint1.tg[0].tpm";
connectAttr "Root_Control_rotateX.o" "Combot_RigRN.phl[13]";
connectAttr "Root_Control_rotateY.o" "Combot_RigRN.phl[14]";
connectAttr "Root_Control_rotateZ.o" "Combot_RigRN.phl[15]";
connectAttr "Root_Control_visibility.o" "Combot_RigRN.phl[16]";
connectAttr "Root_Control_translateX.o" "Combot_RigRN.phl[17]";
connectAttr "Root_Control_translateY.o" "Combot_RigRN.phl[18]";
connectAttr "Root_Control_translateZ.o" "Combot_RigRN.phl[19]";
connectAttr "Root_Control_scaleX.o" "Combot_RigRN.phl[20]";
connectAttr "Root_Control_scaleY.o" "Combot_RigRN.phl[21]";
connectAttr "Root_Control_scaleZ.o" "Combot_RigRN.phl[22]";
connectAttr "RootMotion_Control_rotateX.o" "Combot_RigRN.phl[23]";
connectAttr "RootMotion_Control_rotateY.o" "Combot_RigRN.phl[24]";
connectAttr "RootMotion_Control_rotateZ.o" "Combot_RigRN.phl[25]";
connectAttr "RootMotion_Control_visibility.o" "Combot_RigRN.phl[26]";
connectAttr "RootMotion_Control_translateX.o" "Combot_RigRN.phl[27]";
connectAttr "RootMotion_Control_translateY.o" "Combot_RigRN.phl[28]";
connectAttr "RootMotion_Control_translateZ.o" "Combot_RigRN.phl[29]";
connectAttr "RootMotion_Control_scaleX.o" "Combot_RigRN.phl[30]";
connectAttr "RootMotion_Control_scaleY.o" "Combot_RigRN.phl[31]";
connectAttr "RootMotion_Control_scaleZ.o" "Combot_RigRN.phl[32]";
connectAttr "Heading_Control_rotateY.o" "Combot_RigRN.phl[33]";
connectAttr "Heading_Control_visibility.o" "Combot_RigRN.phl[34]";
connectAttr "Heading_Control_translateX.o" "Combot_RigRN.phl[35]";
connectAttr "Heading_Control_translateY.o" "Combot_RigRN.phl[36]";
connectAttr "Heading_Control_translateZ.o" "Combot_RigRN.phl[37]";
connectAttr "Heading_Control_scaleX.o" "Combot_RigRN.phl[38]";
connectAttr "Heading_Control_scaleY.o" "Combot_RigRN.phl[39]";
connectAttr "Heading_Control_scaleZ.o" "Combot_RigRN.phl[40]";
connectAttr "Hips_Control_rotateX.o" "Combot_RigRN.phl[41]";
connectAttr "Hips_Control_rotateZ.o" "Combot_RigRN.phl[42]";
connectAttr "Hips_Control_scaleX.o" "Combot_RigRN.phl[43]";
connectAttr "Hips_Control_scaleY.o" "Combot_RigRN.phl[44]";
connectAttr "Hips_Control_scaleZ.o" "Combot_RigRN.phl[45]";
connectAttr "Hips_Control_visibility.o" "Combot_RigRN.phl[46]";
connectAttr "RightHand_Control_rotateX.o" "Combot_RigRN.phl[47]";
connectAttr "RightHand_Control_rotateY.o" "Combot_RigRN.phl[48]";
connectAttr "RightHand_Control_rotateZ.o" "Combot_RigRN.phl[49]";
connectAttr "RightHand_Control_translateX.o" "Combot_RigRN.phl[50]";
connectAttr "RightHand_Control_translateY.o" "Combot_RigRN.phl[51]";
connectAttr "RightHand_Control_translateZ.o" "Combot_RigRN.phl[52]";
connectAttr "RightHand_Control_visibility.o" "Combot_RigRN.phl[53]";
connectAttr "RightHand_Control_scaleX.o" "Combot_RigRN.phl[54]";
connectAttr "RightHand_Control_scaleY.o" "Combot_RigRN.phl[55]";
connectAttr "RightHand_Control_scaleZ.o" "Combot_RigRN.phl[56]";
connectAttr "RightFingers_Control_translateX.o" "Combot_RigRN.phl[57]";
connectAttr "RightFingers_Control_translateY.o" "Combot_RigRN.phl[58]";
connectAttr "RightFingers_Control_translateZ.o" "Combot_RigRN.phl[59]";
connectAttr "RightFingers_Control_rotateX.o" "Combot_RigRN.phl[60]";
connectAttr "RightFingers_Control_rotateY.o" "Combot_RigRN.phl[61]";
connectAttr "RightFingers_Control_rotateZ.o" "Combot_RigRN.phl[62]";
connectAttr "RightFingers_Control_scaleX.o" "Combot_RigRN.phl[63]";
connectAttr "RightFingers_Control_scaleY.o" "Combot_RigRN.phl[64]";
connectAttr "RightFingers_Control_scaleZ.o" "Combot_RigRN.phl[65]";
connectAttr "RightFingers_Control_visibility.o" "Combot_RigRN.phl[66]";
connectAttr "RightElbow_Control_translateX.o" "Combot_RigRN.phl[67]";
connectAttr "RightElbow_Control_translateY.o" "Combot_RigRN.phl[68]";
connectAttr "RightElbow_Control_translateZ.o" "Combot_RigRN.phl[69]";
connectAttr "RightElbow_Control_rotateX.o" "Combot_RigRN.phl[70]";
connectAttr "RightElbow_Control_rotateY.o" "Combot_RigRN.phl[71]";
connectAttr "RightElbow_Control_rotateZ.o" "Combot_RigRN.phl[72]";
connectAttr "RightElbow_Control_visibility.o" "Combot_RigRN.phl[73]";
connectAttr "RightElbow_Control_scaleX.o" "Combot_RigRN.phl[74]";
connectAttr "RightElbow_Control_scaleY.o" "Combot_RigRN.phl[75]";
connectAttr "RightElbow_Control_scaleZ.o" "Combot_RigRN.phl[76]";
connectAttr "RightHandAttach_Control_translateX.o" "Combot_RigRN.phl[77]";
connectAttr "RightHandAttach_Control_translateY.o" "Combot_RigRN.phl[78]";
connectAttr "RightHandAttach_Control_translateZ.o" "Combot_RigRN.phl[79]";
connectAttr "RightHandAttach_Control_rotateX.o" "Combot_RigRN.phl[80]";
connectAttr "RightHandAttach_Control_rotateY.o" "Combot_RigRN.phl[81]";
connectAttr "RightHandAttach_Control_rotateZ.o" "Combot_RigRN.phl[82]";
connectAttr "RightHandAttach_Control_scaleX.o" "Combot_RigRN.phl[83]";
connectAttr "RightHandAttach_Control_scaleY.o" "Combot_RigRN.phl[84]";
connectAttr "RightHandAttach_Control_scaleZ.o" "Combot_RigRN.phl[85]";
connectAttr "RightHandAttach_Control_visibility.o" "Combot_RigRN.phl[86]";
connectAttr "LeftHand_Control_rotateX.o" "Combot_RigRN.phl[87]";
connectAttr "LeftHand_Control_rotateY.o" "Combot_RigRN.phl[88]";
connectAttr "LeftHand_Control_rotateZ.o" "Combot_RigRN.phl[89]";
connectAttr "LeftHand_Control_translateX.o" "Combot_RigRN.phl[90]";
connectAttr "LeftHand_Control_translateY.o" "Combot_RigRN.phl[91]";
connectAttr "LeftHand_Control_translateZ.o" "Combot_RigRN.phl[92]";
connectAttr "LeftHand_Control_visibility.o" "Combot_RigRN.phl[93]";
connectAttr "LeftHand_Control_scaleX.o" "Combot_RigRN.phl[94]";
connectAttr "LeftHand_Control_scaleY.o" "Combot_RigRN.phl[95]";
connectAttr "LeftHand_Control_scaleZ.o" "Combot_RigRN.phl[96]";
connectAttr "LeftFingers_Control_translateX.o" "Combot_RigRN.phl[97]";
connectAttr "LeftFingers_Control_translateY.o" "Combot_RigRN.phl[98]";
connectAttr "LeftFingers_Control_translateZ.o" "Combot_RigRN.phl[99]";
connectAttr "LeftFingers_Control_rotateX.o" "Combot_RigRN.phl[100]";
connectAttr "LeftFingers_Control_rotateY.o" "Combot_RigRN.phl[101]";
connectAttr "LeftFingers_Control_rotateZ.o" "Combot_RigRN.phl[102]";
connectAttr "LeftFingers_Control_scaleX.o" "Combot_RigRN.phl[103]";
connectAttr "LeftFingers_Control_scaleY.o" "Combot_RigRN.phl[104]";
connectAttr "LeftFingers_Control_scaleZ.o" "Combot_RigRN.phl[105]";
connectAttr "LeftFingers_Control_visibility.o" "Combot_RigRN.phl[106]";
connectAttr "LeftElbow_Control_translateX.o" "Combot_RigRN.phl[107]";
connectAttr "LeftElbow_Control_translateY.o" "Combot_RigRN.phl[108]";
connectAttr "LeftElbow_Control_translateZ.o" "Combot_RigRN.phl[109]";
connectAttr "LeftElbow_Control_rotateX.o" "Combot_RigRN.phl[110]";
connectAttr "LeftElbow_Control_rotateY.o" "Combot_RigRN.phl[111]";
connectAttr "LeftElbow_Control_rotateZ.o" "Combot_RigRN.phl[112]";
connectAttr "LeftElbow_Control_visibility.o" "Combot_RigRN.phl[113]";
connectAttr "LeftElbow_Control_scaleX.o" "Combot_RigRN.phl[114]";
connectAttr "LeftElbow_Control_scaleY.o" "Combot_RigRN.phl[115]";
connectAttr "LeftElbow_Control_scaleZ.o" "Combot_RigRN.phl[116]";
connectAttr "LeftHandAttach_Control_translateX.o" "Combot_RigRN.phl[117]";
connectAttr "LeftHandAttach_Control_translateY.o" "Combot_RigRN.phl[118]";
connectAttr "LeftHandAttach_Control_translateZ.o" "Combot_RigRN.phl[119]";
connectAttr "LeftHandAttach_Control_rotateX.o" "Combot_RigRN.phl[120]";
connectAttr "LeftHandAttach_Control_rotateY.o" "Combot_RigRN.phl[121]";
connectAttr "LeftHandAttach_Control_rotateZ.o" "Combot_RigRN.phl[122]";
connectAttr "LeftHandAttach_Control_scaleX.o" "Combot_RigRN.phl[123]";
connectAttr "LeftHandAttach_Control_scaleY.o" "Combot_RigRN.phl[124]";
connectAttr "LeftHandAttach_Control_scaleZ.o" "Combot_RigRN.phl[125]";
connectAttr "LeftHandAttach_Control_visibility.o" "Combot_RigRN.phl[126]";
connectAttr "Spine_Control_translateX.o" "Combot_RigRN.phl[127]";
connectAttr "Spine_Control_translateY.o" "Combot_RigRN.phl[128]";
connectAttr "Spine_Control_translateZ.o" "Combot_RigRN.phl[129]";
connectAttr "Spine_Control_rotateX.o" "Combot_RigRN.phl[130]";
connectAttr "Spine_Control_rotateY.o" "Combot_RigRN.phl[131]";
connectAttr "Spine_Control_rotateZ.o" "Combot_RigRN.phl[132]";
connectAttr "Spine_Control_scaleX.o" "Combot_RigRN.phl[133]";
connectAttr "Spine_Control_scaleY.o" "Combot_RigRN.phl[134]";
connectAttr "Spine_Control_scaleZ.o" "Combot_RigRN.phl[135]";
connectAttr "Spine_Control_visibility.o" "Combot_RigRN.phl[136]";
connectAttr "Torso_Control_translateX.o" "Combot_RigRN.phl[137]";
connectAttr "Torso_Control_translateY.o" "Combot_RigRN.phl[138]";
connectAttr "Torso_Control_translateZ.o" "Combot_RigRN.phl[139]";
connectAttr "Torso_Control_rotateX.o" "Combot_RigRN.phl[140]";
connectAttr "Torso_Control_rotateY.o" "Combot_RigRN.phl[141]";
connectAttr "Torso_Control_rotateZ.o" "Combot_RigRN.phl[142]";
connectAttr "Torso_Control_scaleX.o" "Combot_RigRN.phl[143]";
connectAttr "Torso_Control_scaleY.o" "Combot_RigRN.phl[144]";
connectAttr "Torso_Control_scaleZ.o" "Combot_RigRN.phl[145]";
connectAttr "Torso_Control_visibility.o" "Combot_RigRN.phl[146]";
connectAttr "LeftShoulder_Control_translateX.o" "Combot_RigRN.phl[147]";
connectAttr "LeftShoulder_Control_translateY.o" "Combot_RigRN.phl[148]";
connectAttr "LeftShoulder_Control_translateZ.o" "Combot_RigRN.phl[149]";
connectAttr "LeftShoulder_Control_rotateX.o" "Combot_RigRN.phl[150]";
connectAttr "LeftShoulder_Control_rotateY.o" "Combot_RigRN.phl[151]";
connectAttr "LeftShoulder_Control_rotateZ.o" "Combot_RigRN.phl[152]";
connectAttr "LeftShoulder_Control_scaleX.o" "Combot_RigRN.phl[153]";
connectAttr "LeftShoulder_Control_scaleY.o" "Combot_RigRN.phl[154]";
connectAttr "LeftShoulder_Control_scaleZ.o" "Combot_RigRN.phl[155]";
connectAttr "LeftShoulder_Control_visibility.o" "Combot_RigRN.phl[156]";
connectAttr "RightShoulder_Control_translateX.o" "Combot_RigRN.phl[157]";
connectAttr "RightShoulder_Control_translateY.o" "Combot_RigRN.phl[158]";
connectAttr "RightShoulder_Control_translateZ.o" "Combot_RigRN.phl[159]";
connectAttr "RightShoulder_Control_rotateX.o" "Combot_RigRN.phl[160]";
connectAttr "RightShoulder_Control_rotateY.o" "Combot_RigRN.phl[161]";
connectAttr "RightShoulder_Control_rotateZ.o" "Combot_RigRN.phl[162]";
connectAttr "RightShoulder_Control_scaleX.o" "Combot_RigRN.phl[163]";
connectAttr "RightShoulder_Control_scaleY.o" "Combot_RigRN.phl[164]";
connectAttr "RightShoulder_Control_scaleZ.o" "Combot_RigRN.phl[165]";
connectAttr "RightShoulder_Control_visibility.o" "Combot_RigRN.phl[166]";
connectAttr "Head_Control_rotateX.o" "Combot_RigRN.phl[167]";
connectAttr "Head_Control_rotateY.o" "Combot_RigRN.phl[168]";
connectAttr "Head_Control_rotateZ.o" "Combot_RigRN.phl[169]";
connectAttr "Head_Control_visibility.o" "Combot_RigRN.phl[170]";
connectAttr "Head_Control_translateX.o" "Combot_RigRN.phl[171]";
connectAttr "Head_Control_translateY.o" "Combot_RigRN.phl[172]";
connectAttr "Head_Control_translateZ.o" "Combot_RigRN.phl[173]";
connectAttr "Head_Control_scaleX.o" "Combot_RigRN.phl[174]";
connectAttr "Head_Control_scaleY.o" "Combot_RigRN.phl[175]";
connectAttr "Head_Control_scaleZ.o" "Combot_RigRN.phl[176]";
connectAttr "LeftBackAttach_Control_translateX.o" "Combot_RigRN.phl[177]";
connectAttr "LeftBackAttach_Control_translateY.o" "Combot_RigRN.phl[178]";
connectAttr "LeftBackAttach_Control_translateZ.o" "Combot_RigRN.phl[179]";
connectAttr "LeftBackAttach_Control_rotateX.o" "Combot_RigRN.phl[180]";
connectAttr "LeftBackAttach_Control_rotateY.o" "Combot_RigRN.phl[181]";
connectAttr "LeftBackAttach_Control_rotateZ.o" "Combot_RigRN.phl[182]";
connectAttr "LeftBackAttach_Control_scaleX.o" "Combot_RigRN.phl[183]";
connectAttr "LeftBackAttach_Control_scaleY.o" "Combot_RigRN.phl[184]";
connectAttr "LeftBackAttach_Control_scaleZ.o" "Combot_RigRN.phl[185]";
connectAttr "LeftBackAttach_Control_visibility.o" "Combot_RigRN.phl[186]";
connectAttr "RightBackAttach_Control_translateX.o" "Combot_RigRN.phl[187]";
connectAttr "RightBackAttach_Control_translateY.o" "Combot_RigRN.phl[188]";
connectAttr "RightBackAttach_Control_translateZ.o" "Combot_RigRN.phl[189]";
connectAttr "RightBackAttach_Control_rotateX.o" "Combot_RigRN.phl[190]";
connectAttr "RightBackAttach_Control_rotateY.o" "Combot_RigRN.phl[191]";
connectAttr "RightBackAttach_Control_rotateZ.o" "Combot_RigRN.phl[192]";
connectAttr "RightBackAttach_Control_scaleX.o" "Combot_RigRN.phl[193]";
connectAttr "RightBackAttach_Control_scaleY.o" "Combot_RigRN.phl[194]";
connectAttr "RightBackAttach_Control_scaleZ.o" "Combot_RigRN.phl[195]";
connectAttr "RightBackAttach_Control_visibility.o" "Combot_RigRN.phl[196]";
connectAttr "LeftFoot_Control_rotateX.o" "Combot_RigRN.phl[197]";
connectAttr "LeftFoot_Control_rotateY.o" "Combot_RigRN.phl[198]";
connectAttr "LeftFoot_Control_rotateZ.o" "Combot_RigRN.phl[199]";
connectAttr "LeftFoot_Control_translateX.o" "Combot_RigRN.phl[200]";
connectAttr "LeftFoot_Control_translateY.o" "Combot_RigRN.phl[201]";
connectAttr "LeftFoot_Control_translateZ.o" "Combot_RigRN.phl[202]";
connectAttr "LeftFoot_Control_visibility.o" "Combot_RigRN.phl[203]";
connectAttr "LeftFoot_Control_scaleX.o" "Combot_RigRN.phl[204]";
connectAttr "LeftFoot_Control_scaleY.o" "Combot_RigRN.phl[205]";
connectAttr "LeftFoot_Control_scaleZ.o" "Combot_RigRN.phl[206]";
connectAttr "LeftToes_Control_rotateX.o" "Combot_RigRN.phl[207]";
connectAttr "LeftToes_Control_rotateY.o" "Combot_RigRN.phl[208]";
connectAttr "LeftToes_Control_rotateZ.o" "Combot_RigRN.phl[209]";
connectAttr "LeftToes_Control_visibility.o" "Combot_RigRN.phl[210]";
connectAttr "LeftToes_Control_translateX.o" "Combot_RigRN.phl[211]";
connectAttr "LeftToes_Control_translateY.o" "Combot_RigRN.phl[212]";
connectAttr "LeftToes_Control_translateZ.o" "Combot_RigRN.phl[213]";
connectAttr "LeftToes_Control_scaleX.o" "Combot_RigRN.phl[214]";
connectAttr "LeftToes_Control_scaleY.o" "Combot_RigRN.phl[215]";
connectAttr "LeftToes_Control_scaleZ.o" "Combot_RigRN.phl[216]";
connectAttr "LeftKnee_Control_translateX.o" "Combot_RigRN.phl[217]";
connectAttr "LeftKnee_Control_translateY.o" "Combot_RigRN.phl[218]";
connectAttr "LeftKnee_Control_translateZ.o" "Combot_RigRN.phl[219]";
connectAttr "LeftKnee_Control_rotateX.o" "Combot_RigRN.phl[220]";
connectAttr "LeftKnee_Control_rotateY.o" "Combot_RigRN.phl[221]";
connectAttr "LeftKnee_Control_rotateZ.o" "Combot_RigRN.phl[222]";
connectAttr "LeftKnee_Control_visibility.o" "Combot_RigRN.phl[223]";
connectAttr "LeftKnee_Control_scaleX.o" "Combot_RigRN.phl[224]";
connectAttr "LeftKnee_Control_scaleY.o" "Combot_RigRN.phl[225]";
connectAttr "LeftKnee_Control_scaleZ.o" "Combot_RigRN.phl[226]";
connectAttr "RightFoot_Control_rotateX.o" "Combot_RigRN.phl[227]";
connectAttr "RightFoot_Control_rotateY.o" "Combot_RigRN.phl[228]";
connectAttr "RightFoot_Control_rotateZ.o" "Combot_RigRN.phl[229]";
connectAttr "RightFoot_Control_translateX.o" "Combot_RigRN.phl[230]";
connectAttr "RightFoot_Control_translateY.o" "Combot_RigRN.phl[231]";
connectAttr "RightFoot_Control_translateZ.o" "Combot_RigRN.phl[232]";
connectAttr "RightFoot_Control_visibility.o" "Combot_RigRN.phl[233]";
connectAttr "RightFoot_Control_scaleX.o" "Combot_RigRN.phl[234]";
connectAttr "RightFoot_Control_scaleY.o" "Combot_RigRN.phl[235]";
connectAttr "RightFoot_Control_scaleZ.o" "Combot_RigRN.phl[236]";
connectAttr "RightToes_Control_rotateX.o" "Combot_RigRN.phl[237]";
connectAttr "RightToes_Control_rotateY.o" "Combot_RigRN.phl[238]";
connectAttr "RightToes_Control_rotateZ.o" "Combot_RigRN.phl[239]";
connectAttr "RightToes_Control_visibility.o" "Combot_RigRN.phl[240]";
connectAttr "RightToes_Control_translateX.o" "Combot_RigRN.phl[241]";
connectAttr "RightToes_Control_translateY.o" "Combot_RigRN.phl[242]";
connectAttr "RightToes_Control_translateZ.o" "Combot_RigRN.phl[243]";
connectAttr "RightToes_Control_scaleX.o" "Combot_RigRN.phl[244]";
connectAttr "RightToes_Control_scaleY.o" "Combot_RigRN.phl[245]";
connectAttr "RightToes_Control_scaleZ.o" "Combot_RigRN.phl[246]";
connectAttr "RightKnee_Control_translateX.o" "Combot_RigRN.phl[247]";
connectAttr "RightKnee_Control_translateY.o" "Combot_RigRN.phl[248]";
connectAttr "RightKnee_Control_translateZ.o" "Combot_RigRN.phl[249]";
connectAttr "RightKnee_Control_rotateX.o" "Combot_RigRN.phl[250]";
connectAttr "RightKnee_Control_rotateY.o" "Combot_RigRN.phl[251]";
connectAttr "RightKnee_Control_rotateZ.o" "Combot_RigRN.phl[252]";
connectAttr "RightKnee_Control_visibility.o" "Combot_RigRN.phl[253]";
connectAttr "RightKnee_Control_scaleX.o" "Combot_RigRN.phl[254]";
connectAttr "RightKnee_Control_scaleY.o" "Combot_RigRN.phl[255]";
connectAttr "RightKnee_Control_scaleZ.o" "Combot_RigRN.phl[256]";
connectAttr "AssaultRifle_scaleX.o" "AssaultRifleRN.phl[1]";
connectAttr "AssaultRifle_scaleY.o" "AssaultRifleRN.phl[2]";
connectAttr "AssaultRifle_scaleZ.o" "AssaultRifleRN.phl[3]";
connectAttr "pairBlend1.otx" "AssaultRifleRN.phl[4]";
connectAttr "pairBlend1.oty" "AssaultRifleRN.phl[5]";
connectAttr "pairBlend1.otz" "AssaultRifleRN.phl[6]";
connectAttr "pairBlend1.orx" "AssaultRifleRN.phl[7]";
connectAttr "pairBlend1.ory" "AssaultRifleRN.phl[8]";
connectAttr "pairBlend1.orz" "AssaultRifleRN.phl[9]";
connectAttr "AssaultRifleRN.phl[10]" "AssaultRifle_parentConstraint1.cro";
connectAttr "AssaultRifleRN.phl[11]" "AssaultRifle_parentConstraint1.cpim";
connectAttr "AssaultRifleRN.phl[12]" "AssaultRifle_parentConstraint1.crp";
connectAttr "AssaultRifleRN.phl[13]" "AssaultRifle_parentConstraint1.crt";
connectAttr "AssaultRifleRN.phl[14]" "pairBlend1.w";
connectAttr "AssaultRifle_blendParent2.o" "AssaultRifleRN.phl[15]";
connectAttr "AssaultRifle_visibility.o" "AssaultRifleRN.phl[16]";
connectAttr "Magazine_rotateX.o" "AssaultRifleRN.phl[17]";
connectAttr "Magazine_rotateY.o" "AssaultRifleRN.phl[18]";
connectAttr "Magazine_rotateZ.o" "AssaultRifleRN.phl[19]";
connectAttr "Magazine_visibility.o" "AssaultRifleRN.phl[20]";
connectAttr "Magazine_translateX.o" "AssaultRifleRN.phl[21]";
connectAttr "Magazine_translateY.o" "AssaultRifleRN.phl[22]";
connectAttr "Magazine_translateZ.o" "AssaultRifleRN.phl[23]";
connectAttr "Magazine_scaleX.o" "AssaultRifleRN.phl[24]";
connectAttr "Magazine_scaleY.o" "AssaultRifleRN.phl[25]";
connectAttr "Magazine_scaleZ.o" "AssaultRifleRN.phl[26]";
connectAttr "Muzzle_rotateX.o" "AssaultRifleRN.phl[27]";
connectAttr "Muzzle_rotateY.o" "AssaultRifleRN.phl[28]";
connectAttr "Muzzle_rotateZ.o" "AssaultRifleRN.phl[29]";
connectAttr "Muzzle_visibility.o" "AssaultRifleRN.phl[30]";
connectAttr "Muzzle_translateX.o" "AssaultRifleRN.phl[31]";
connectAttr "Muzzle_translateY.o" "AssaultRifleRN.phl[32]";
connectAttr "Muzzle_translateZ.o" "AssaultRifleRN.phl[33]";
connectAttr "Muzzle_scaleX.o" "AssaultRifleRN.phl[34]";
connectAttr "Muzzle_scaleY.o" "AssaultRifleRN.phl[35]";
connectAttr "Muzzle_scaleZ.o" "AssaultRifleRN.phl[36]";
connectAttr "pPlane1_rotateX.o" "pPlane1.rx";
connectAttr "pPlane1_rotateY.o" "pPlane1.ry";
connectAttr "pPlane1_rotateZ.o" "pPlane1.rz";
connectAttr "pPlane1_visibility.o" "pPlane1.v";
connectAttr "pPlane1_translateX.o" "pPlane1.tx";
connectAttr "pPlane1_translateY.o" "pPlane1.ty";
connectAttr "pPlane1_translateZ.o" "pPlane1.tz";
connectAttr "pPlane1_scaleX.o" "pPlane1.sx";
connectAttr "pPlane1_scaleY.o" "pPlane1.sy";
connectAttr "pPlane1_scaleZ.o" "pPlane1.sz";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "directionalLight1_rotateX.o" "directionalLight1.rx";
connectAttr "directionalLight1_rotateY.o" "directionalLight1.ry";
connectAttr "directionalLight1_rotateZ.o" "directionalLight1.rz";
connectAttr "directionalLight1_visibility.o" "directionalLight1.v";
connectAttr "directionalLight1_translateX.o" "directionalLight1.tx";
connectAttr "directionalLight1_translateY.o" "directionalLight1.ty";
connectAttr "directionalLight1_translateZ.o" "directionalLight1.tz";
connectAttr "directionalLight1_scaleX.o" "directionalLight1.sx";
connectAttr "directionalLight1_scaleY.o" "directionalLight1.sy";
connectAttr "directionalLight1_scaleZ.o" "directionalLight1.sz";
connectAttr "ambientLight1_rotateX.o" "ambientLight1.rx";
connectAttr "ambientLight1_rotateY.o" "ambientLight1.ry";
connectAttr "ambientLight1_rotateZ.o" "ambientLight1.rz";
connectAttr "ambientLight1_visibility.o" "ambientLight1.v";
connectAttr "ambientLight1_translateX.o" "ambientLight1.tx";
connectAttr "ambientLight1_translateY.o" "ambientLight1.ty";
connectAttr "ambientLight1_translateZ.o" "ambientLight1.tz";
connectAttr "ambientLight1_scaleX.o" "ambientLight1.sx";
connectAttr "ambientLight1_scaleY.o" "ambientLight1.sy";
connectAttr "ambientLight1_scaleZ.o" "ambientLight1.sz";
connectAttr "AssaultRifle_parentConstraint1.w0" "AssaultRifle_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "AssaultRifleRNfosterParent1.msg" "AssaultRifleRN.fp";
connectAttr "checker1.oc" "MatGround.c";
connectAttr "MatGround.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MatGround.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "AssaultRifle_parentConstraint1.ctx" "pairBlend1.itx2";
connectAttr "AssaultRifle_parentConstraint1.cty" "pairBlend1.ity2";
connectAttr "AssaultRifle_parentConstraint1.ctz" "pairBlend1.itz2";
connectAttr "AssaultRifle_parentConstraint1.crx" "pairBlend1.irx2";
connectAttr "AssaultRifle_parentConstraint1.cry" "pairBlend1.iry2";
connectAttr "AssaultRifle_parentConstraint1.crz" "pairBlend1.irz2";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MatGround.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of Combot_Reloading.ma
