//Maya ASCII 2018 scene
//Name: Combot_Idles.ma
//Last modified: Wed, Nov 29, 2017 07:01:50 PM
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
	rename -uid "BBC93E60-6E4F-8C49-357B-DD82E6B16157";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 38.59128154808252 353.33336121405955 -459.74371342405107 ;
	setAttr ".r" -type "double3" -27.938352729509013 1254.599999999878 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C01CBC2A-A945-8E5B-6F17-3E94BB6A6474";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 552.55845152991901;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "71C05E12-B245-C787-C42C-30A7F1AF7C38";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4F3DE7B5-A14A-E7DB-95D9-20993D68006F";
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
	rename -uid "77435F2F-9E48-05D6-0FE8-9C8166C650E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "57856151-CE4C-B5C9-F93B-3181304B1E64";
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
	rename -uid "F491BD05-A74A-48A1-58E3-EDB4E10C8355";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "ED2D598C-D044-1DD3-6175-D091B6611675";
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
createNode transform -n "Ground";
	rename -uid "3A866B50-3946-4A29-7C81-8094AB7326D7";
createNode mesh -n "GroundShape" -p "Ground";
	rename -uid "44653FA3-0D42-5D2F-A0C9-4FBD22A86A49";
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
	rename -uid "9A050A60-7E42-0139-24E2-4B8DBA5ED668";
	setAttr ".t" -type "double3" 0 390.42234561151565 0 ;
	setAttr ".r" -type "double3" -64.297864025537848 31.432243047027637 -2.6586742012184503 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "FF2E4623-454F-DE7D-A7AA-30A85CDB1AC4";
	setAttr -k off ".v";
createNode transform -n "ambientLight1";
	rename -uid "82C7464C-524A-EEA7-D576-4E979017466E";
	setAttr ".t" -type "double3" -123.51188678897125 7.1558762474493847 -138.6189879452167 ;
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "411BB29D-9D42-6FF6-4929-629C0208CC5D";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.36899999 0.27748799 0.27748799 ;
	setAttr ".urs" no;
createNode transform -n "pointLight1";
	rename -uid "E8CA06DE-3547-C976-B697-A4A00418935E";
	setAttr ".t" -type "double3" 213.9319677404888 166.20915129973145 140.07089457997117 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	rename -uid "E632C469-C049-649D-EEB6-949B402B3417";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.241 0.70163709 1 ;
	setAttr ".urs" no;
	setAttr ".us" no;
createNode fosterParent -n "Combot_RigRNfosterParent1";
	rename -uid "8650D9D9-624E-9352-AEB7-7A98AA39C96F";
createNode parentConstraint -n "LeftHand_Control_parentConstraint1" -p "Combot_RigRNfosterParent1";
	rename -uid "96D9FC5A-B042-1DFB-7ED3-E0A6A6BA6159";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".cpim" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".lr" -type "double3" 60.945442068010941 -1.5177713438026643e-06 0 ;
	setAttr ".crp" -type "double3" 41.187599182128906 93.465141296386719 16.964803695678711 ;
	setAttr ".rst" -type "double3" -15.286559323207836 39.520558119301967 36.644500308431525 ;
	setAttr ".rsrr" -type "double3" 2.8743153013127993 39.273658337446918 -1.3258355441703278 ;
	setAttr -k on ".w0" 0;
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "63511044-574B-1F74-8044-7F9E36997CA2";
createNode transform -n "HandAttach" -p "AssaultRifleRNfosterParent1";
	rename -uid "DD07CAC1-254C-BD07-66DB-55928E032FD7";
createNode nurbsCurve -n "HandAttachShape" -p "HandAttach";
	rename -uid "5E7F6F32-2E49-EC1E-BAA0-97B6B81D966D";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode fosterParent -n "Combot_RigRNfosterParent2";
	rename -uid "FDA16412-1440-8608-5266-BBA2A4F1DEA5";
createNode parentConstraint -n "LeftHand_Control_parentConstraint2" -p "Combot_RigRNfosterParent2";
	rename -uid "2065C805-DF49-A6B6-7CEA-BD85A64725DC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "AssaultRifleW0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 11.936354629912501 -5.4120201975804818 34.720912235432458 ;
	setAttr ".tg[0].tor" -type "double3" 47.006550917682951 -72.119492209980677 -90.651753683469266 ;
	setAttr ".lr" -type "double3" -47.021023620582909 -3.239613601632318 -37.434813874484739 ;
	setAttr ".rst" -type "double3" -14.561659308054463 18.327393720130942 6.241794577593339 ;
	setAttr ".rsrr" -type "double3" -226.74205536220524 183.52604440481844 137.54336747931407 ;
	setAttr -k on ".w0";
createNode fosterParent -n "AssaultRifleRNfosterParent2";
	rename -uid "E54CA7BE-434A-F1B2-91FD-1CB6DE92AD21";
createNode parentConstraint -n "AssaultRifle_parentConstraint1" -p "AssaultRifleRNfosterParent2";
	rename -uid "F28BFC72-BF4B-51E6-8642-4F8FAFAFC6AE";
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
	setAttr ".lr" -type "double3" 4.3438460459152859 73.211053942152859 -15.947650307878204 ;
	setAttr ".rst" -type "double3" -36.591893288957657 90.131647186399377 24.112361181519532 ;
	setAttr ".rsrr" -type "double3" -119.05441399812955 -179.99999273323903 179.99998387108622 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E089EC61-3248-750D-541C-F2AD08BF3A22";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "C7219FF5-E140-A023-577F-57920AAAD9FF";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "7040DCB7-2A40-729B-84DF-27BC3EA3675A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "3528D6C1-474F-0124-340A-7C829E1C990C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6BA43E26-4F4A-C312-BCC8-DD8AE797E8B9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5065C11B-3D44-940E-5683-64843A412FFA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "95A33DD3-B446-FDA1-8984-B8A545CF7D8C";
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
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F397353F-4F4B-5783-74CA-969CC7A7AFE9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1092\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 905\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 905\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 905\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D241B966-BB43-522F-93FF-86A789FFBB5F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	rename -uid "0FE30BC4-2A4A-A5B9-DB53-B8BB6517C39A";
	setAttr ".w" 500;
	setAttr ".h" 500;
	setAttr ".cuv" 2;
createNode lambert -n "MatGround";
	rename -uid "117D22E0-234C-8396-3EE3-01B37BEDF337";
createNode shadingEngine -n "lambert2SG";
	rename -uid "5342E157-414E-3AB2-52F8-45BB7B09A290";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "7CB03DA1-EF44-1BEF-23C5-ED906DE94F55";
createNode checker -n "checker1";
	rename -uid "FBDD27B6-2342-D95B-8515-B4B7B53A7D58";
	setAttr ".c1" -type "float3" 0.093999997 0.012972001 0.012972001 ;
	setAttr ".c2" -type "float3" 0.108 0.014904002 0.014904002 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "3B988968-D94F-7CCF-066E-9E994F59AB7B";
	setAttr ".re" -type "float2" 5 5 ;
createNode displayLayer -n "Extras";
	rename -uid "53A5EB21-F540-8E3F-FF9B-B6AD37BB128C";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "616E9C5D-564C-253E-8065-49AC0691BD84";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/CyberKnights/Assets/Characters/Combot";
	setAttr ".exf" -type "string" "Combot";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "1AD71F9F-A34A-8703-ED4C-64A4E181858F";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Combot:ExportSet";
	setAttr ".ac[0].acn" -type "string" "Idle01";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 120;
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/CyberKnights/Assets/Characters/Combot";
	setAttr ".exf" -type "string" "Combot_Idles";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "765A321C-6249-4F3C-635F-5CA06062CD52";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "230B65A8-714D-E837-4A0E-CFADB2A0B174";
	setAttr ".nr" -type "double3" 0 1 0 ;
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
createNode reference -n "Combot_RigRN";
	rename -uid "F6A322C0-3045-9D68-3A5D-3B83FFF9BD06";
	setAttr -s 258 ".phl";
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
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Combot_RigRN"
		"Combot_RigRN" 0
		"Combot_RigRN" 293
		0 "|Combot_RigRNfosterParent2|LeftHand_Control_parentConstraint2" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"-s -r "
		1 |Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control 
		"blendParent2" "blendParent2" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|Combot:Combot_Geometry|Combot:Torso_Geo|Combot:Torso_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Legs_Geo|Combot:Legs_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Head_Geo|Combot:Head_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:LeftArm_Geo|Combot:LeftArm_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:RightArm_Geo|Combot:RightArm_GeoShape" 
		"visibility" " -k 0 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translate" " -type \"double3\" 0 -4.03305404298228609 -6.92373765735975866"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"rotateY" " -av -15.83822825463306216"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"rotateX" " -av 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"rotateZ" " -av 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translate" " -type \"double3\" 30.60652681824288379 37.44168482669277864 20.99450322093204235"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"blendParent2" " -k 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotate" " -type \"double3\" 0.11752857969459334 0.12047803785432823 -0.047265062152740699"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translate" 
		" -type \"double3\" 7.27762766217463763 0 15.49926621280701511"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translateX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translateY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translateZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "translate" 
		" -type \"double3\" -8.68881150004927605 0 -26.03638625234651727"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "translateX" 
		" -av"
		2 "Combot:Geometry_Layer" "hideOnPlayback" " 0"
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.translate" 
		"Combot_RigRN.placeHolderList[1]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotate" 
		"Combot_RigRN.placeHolderList[2]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotateOrder" 
		"Combot_RigRN.placeHolderList[3]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotatePivot" 
		"Combot_RigRN.placeHolderList[4]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.rotatePivotTranslate" 
		"Combot_RigRN.placeHolderList[5]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.scale" 
		"Combot_RigRN.placeHolderList[6]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Skeleton|Combot:RootMotion_Skel|Combot:Hips_Skel|Combot:Spine_Skel|Combot:Torso_Skel|Combot:RightClav_Skel|Combot:RightUpperArm_Skel|Combot:RightLowerArm_Skel|Combot:RightHand_Skel|Combot:RightHand_Attach.parentMatrix" 
		"Combot_RigRN.placeHolderList[7]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateX" 
		"Combot_RigRN.placeHolderList[8]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateY" 
		"Combot_RigRN.placeHolderList[9]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[10]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.visibility" 
		"Combot_RigRN.placeHolderList[11]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateX" 
		"Combot_RigRN.placeHolderList[12]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateY" 
		"Combot_RigRN.placeHolderList[13]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateZ" 
		"Combot_RigRN.placeHolderList[14]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleX" 
		"Combot_RigRN.placeHolderList[15]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleY" 
		"Combot_RigRN.placeHolderList[16]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[17]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateX" 
		"Combot_RigRN.placeHolderList[18]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateY" 
		"Combot_RigRN.placeHolderList[19]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[20]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.visibility" 
		"Combot_RigRN.placeHolderList[21]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateX" 
		"Combot_RigRN.placeHolderList[22]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateY" 
		"Combot_RigRN.placeHolderList[23]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateZ" 
		"Combot_RigRN.placeHolderList[24]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleX" 
		"Combot_RigRN.placeHolderList[25]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleY" 
		"Combot_RigRN.placeHolderList[26]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[27]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.rotateY" 
		"Combot_RigRN.placeHolderList[28]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.visibility" 
		"Combot_RigRN.placeHolderList[29]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateX" 
		"Combot_RigRN.placeHolderList[30]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateY" 
		"Combot_RigRN.placeHolderList[31]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateZ" 
		"Combot_RigRN.placeHolderList[32]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleX" 
		"Combot_RigRN.placeHolderList[33]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleY" 
		"Combot_RigRN.placeHolderList[34]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[35]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.rotateX" 
		"Combot_RigRN.placeHolderList[36]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[37]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleX" 
		"Combot_RigRN.placeHolderList[38]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleY" 
		"Combot_RigRN.placeHolderList[39]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[40]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.visibility" 
		"Combot_RigRN.placeHolderList[41]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateY" 
		"Combot_RigRN.placeHolderList[42]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateX" 
		"Combot_RigRN.placeHolderList[43]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[44]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateX" 
		"Combot_RigRN.placeHolderList[45]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateY" 
		"Combot_RigRN.placeHolderList[46]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateZ" 
		"Combot_RigRN.placeHolderList[47]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.visibility" 
		"Combot_RigRN.placeHolderList[48]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleX" 
		"Combot_RigRN.placeHolderList[49]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleY" 
		"Combot_RigRN.placeHolderList[50]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[51]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateX" 
		"Combot_RigRN.placeHolderList[52]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateY" 
		"Combot_RigRN.placeHolderList[53]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateZ" 
		"Combot_RigRN.placeHolderList[54]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateX" 
		"Combot_RigRN.placeHolderList[55]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateY" 
		"Combot_RigRN.placeHolderList[56]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[57]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleX" 
		"Combot_RigRN.placeHolderList[58]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleY" 
		"Combot_RigRN.placeHolderList[59]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[60]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.visibility" 
		"Combot_RigRN.placeHolderList[61]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.translateX" 
		"Combot_RigRN.placeHolderList[62]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.translateY" 
		"Combot_RigRN.placeHolderList[63]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.translateZ" 
		"Combot_RigRN.placeHolderList[64]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.rotateY" 
		"Combot_RigRN.placeHolderList[65]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.rotateX" 
		"Combot_RigRN.placeHolderList[66]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[67]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.visibility" 
		"Combot_RigRN.placeHolderList[68]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.scaleX" 
		"Combot_RigRN.placeHolderList[69]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.scaleY" 
		"Combot_RigRN.placeHolderList[70]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[71]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[72]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[73]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[74]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[75]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[76]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[77]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[78]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[79]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[80]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[81]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateX" 
		"Combot_RigRN.placeHolderList[82]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateY" 
		"Combot_RigRN.placeHolderList[83]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[84]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateOrder" 
		"Combot_RigRN.placeHolderList[85]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotateOrder" 
		"Combot_RigRN.placeHolderList[86]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.blendParent2" 
		"Combot_RigRN.placeHolderList[87]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.blendParent2" 
		"Combot_RigRN.placeHolderList[88]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateX" 
		"Combot_RigRN.placeHolderList[89]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateY" 
		"Combot_RigRN.placeHolderList[90]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateZ" 
		"Combot_RigRN.placeHolderList[91]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.parentInverseMatrix" 
		"Combot_RigRN.placeHolderList[92]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotatePivot" 
		"Combot_RigRN.placeHolderList[93]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotatePivotTranslate" 
		"Combot_RigRN.placeHolderList[94]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.visibility" 
		"Combot_RigRN.placeHolderList[95]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleX" 
		"Combot_RigRN.placeHolderList[96]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleY" 
		"Combot_RigRN.placeHolderList[97]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[98]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateX" 
		"Combot_RigRN.placeHolderList[99]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateY" 
		"Combot_RigRN.placeHolderList[100]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateZ" 
		"Combot_RigRN.placeHolderList[101]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateX" 
		"Combot_RigRN.placeHolderList[102]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateY" 
		"Combot_RigRN.placeHolderList[103]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[104]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleX" 
		"Combot_RigRN.placeHolderList[105]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleY" 
		"Combot_RigRN.placeHolderList[106]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[107]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.visibility" 
		"Combot_RigRN.placeHolderList[108]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.translateX" 
		"Combot_RigRN.placeHolderList[109]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.translateY" 
		"Combot_RigRN.placeHolderList[110]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.translateZ" 
		"Combot_RigRN.placeHolderList[111]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.rotateX" 
		"Combot_RigRN.placeHolderList[112]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.rotateY" 
		"Combot_RigRN.placeHolderList[113]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[114]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.visibility" 
		"Combot_RigRN.placeHolderList[115]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.scaleX" 
		"Combot_RigRN.placeHolderList[116]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.scaleY" 
		"Combot_RigRN.placeHolderList[117]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[118]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[119]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[120]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[121]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[122]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[123]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[124]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[125]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[126]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[127]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[128]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateX" 
		"Combot_RigRN.placeHolderList[129]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateY" 
		"Combot_RigRN.placeHolderList[130]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateZ" 
		"Combot_RigRN.placeHolderList[131]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateX" 
		"Combot_RigRN.placeHolderList[132]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateY" 
		"Combot_RigRN.placeHolderList[133]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[134]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleX" 
		"Combot_RigRN.placeHolderList[135]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleY" 
		"Combot_RigRN.placeHolderList[136]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[137]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.visibility" 
		"Combot_RigRN.placeHolderList[138]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateX" 
		"Combot_RigRN.placeHolderList[139]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateY" 
		"Combot_RigRN.placeHolderList[140]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateZ" 
		"Combot_RigRN.placeHolderList[141]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateY" 
		"Combot_RigRN.placeHolderList[142]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateX" 
		"Combot_RigRN.placeHolderList[143]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[144]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleX" 
		"Combot_RigRN.placeHolderList[145]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleY" 
		"Combot_RigRN.placeHolderList[146]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[147]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.visibility" 
		"Combot_RigRN.placeHolderList[148]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateX" 
		"Combot_RigRN.placeHolderList[149]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateY" 
		"Combot_RigRN.placeHolderList[150]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateZ" 
		"Combot_RigRN.placeHolderList[151]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateX" 
		"Combot_RigRN.placeHolderList[152]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateY" 
		"Combot_RigRN.placeHolderList[153]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[154]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleX" 
		"Combot_RigRN.placeHolderList[155]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleY" 
		"Combot_RigRN.placeHolderList[156]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[157]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.visibility" 
		"Combot_RigRN.placeHolderList[158]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateX" 
		"Combot_RigRN.placeHolderList[159]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateZ" 
		"Combot_RigRN.placeHolderList[160]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateY" 
		"Combot_RigRN.placeHolderList[161]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateX" 
		"Combot_RigRN.placeHolderList[162]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateY" 
		"Combot_RigRN.placeHolderList[163]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[164]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleX" 
		"Combot_RigRN.placeHolderList[165]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleY" 
		"Combot_RigRN.placeHolderList[166]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[167]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.visibility" 
		"Combot_RigRN.placeHolderList[168]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateX" 
		"Combot_RigRN.placeHolderList[169]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateY" 
		"Combot_RigRN.placeHolderList[170]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[171]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.visibility" 
		"Combot_RigRN.placeHolderList[172]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateX" 
		"Combot_RigRN.placeHolderList[173]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateY" 
		"Combot_RigRN.placeHolderList[174]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateZ" 
		"Combot_RigRN.placeHolderList[175]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleX" 
		"Combot_RigRN.placeHolderList[176]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleY" 
		"Combot_RigRN.placeHolderList[177]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[178]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[179]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[180]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[181]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[182]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[183]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[184]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[185]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[186]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[187]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[188]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[189]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[190]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[191]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[192]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[193]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[194]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[195]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[196]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[197]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[198]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateY" 
		"Combot_RigRN.placeHolderList[199]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateX" 
		"Combot_RigRN.placeHolderList[200]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[201]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateX" 
		"Combot_RigRN.placeHolderList[202]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateY" 
		"Combot_RigRN.placeHolderList[203]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateZ" 
		"Combot_RigRN.placeHolderList[204]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.visibility" 
		"Combot_RigRN.placeHolderList[205]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleX" 
		"Combot_RigRN.placeHolderList[206]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleY" 
		"Combot_RigRN.placeHolderList[207]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[208]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateX" 
		"Combot_RigRN.placeHolderList[209]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateY" 
		"Combot_RigRN.placeHolderList[210]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[211]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.visibility" 
		"Combot_RigRN.placeHolderList[212]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateX" 
		"Combot_RigRN.placeHolderList[213]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateY" 
		"Combot_RigRN.placeHolderList[214]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateZ" 
		"Combot_RigRN.placeHolderList[215]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleX" 
		"Combot_RigRN.placeHolderList[216]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleY" 
		"Combot_RigRN.placeHolderList[217]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[218]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateX" 
		"Combot_RigRN.placeHolderList[219]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateY" 
		"Combot_RigRN.placeHolderList[220]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateZ" 
		"Combot_RigRN.placeHolderList[221]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateX" 
		"Combot_RigRN.placeHolderList[222]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateY" 
		"Combot_RigRN.placeHolderList[223]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[224]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.visibility" 
		"Combot_RigRN.placeHolderList[225]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleX" 
		"Combot_RigRN.placeHolderList[226]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleY" 
		"Combot_RigRN.placeHolderList[227]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[228]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateY" 
		"Combot_RigRN.placeHolderList[229]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateX" 
		"Combot_RigRN.placeHolderList[230]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[231]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateX" 
		"Combot_RigRN.placeHolderList[232]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateY" 
		"Combot_RigRN.placeHolderList[233]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateZ" 
		"Combot_RigRN.placeHolderList[234]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.visibility" 
		"Combot_RigRN.placeHolderList[235]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleX" 
		"Combot_RigRN.placeHolderList[236]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleY" 
		"Combot_RigRN.placeHolderList[237]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[238]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateX" 
		"Combot_RigRN.placeHolderList[239]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateY" 
		"Combot_RigRN.placeHolderList[240]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[241]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.visibility" 
		"Combot_RigRN.placeHolderList[242]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateX" 
		"Combot_RigRN.placeHolderList[243]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateY" 
		"Combot_RigRN.placeHolderList[244]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateZ" 
		"Combot_RigRN.placeHolderList[245]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleX" 
		"Combot_RigRN.placeHolderList[246]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleY" 
		"Combot_RigRN.placeHolderList[247]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[248]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateX" 
		"Combot_RigRN.placeHolderList[249]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateY" 
		"Combot_RigRN.placeHolderList[250]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateZ" 
		"Combot_RigRN.placeHolderList[251]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateX" 
		"Combot_RigRN.placeHolderList[252]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateY" 
		"Combot_RigRN.placeHolderList[253]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[254]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.visibility" 
		"Combot_RigRN.placeHolderList[255]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleX" 
		"Combot_RigRN.placeHolderList[256]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleY" 
		"Combot_RigRN.placeHolderList[257]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[258]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "AssaultRifleRN";
	rename -uid "6FB9DB8F-C247-FE9C-7501-29B3241B9D11";
	setAttr -s 45 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"AssaultRifleRN"
		"AssaultRifleRN" 0
		"AssaultRifleRN" 48
		0 "|AssaultRifleRNfosterParent2|AssaultRifle_parentConstraint1" "|AssaultRifle:AssaultRifle" 
		"-s -r "
		1 |AssaultRifle:AssaultRifle "blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		2 "|AssaultRifle:AssaultRifle" "blendParent1" " -av -k 1 1"
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.drawOverride" "AssaultRifleRN.placeHolderList[1]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.blendParent1" "AssaultRifleRN.placeHolderList[2]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translate" "AssaultRifleRN.placeHolderList[3]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateX" "AssaultRifleRN.placeHolderList[4]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateY" "AssaultRifleRN.placeHolderList[5]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateZ" "AssaultRifleRN.placeHolderList[6]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotate" "AssaultRifleRN.placeHolderList[7]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateX" "AssaultRifleRN.placeHolderList[8]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateY" "AssaultRifleRN.placeHolderList[9]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateZ" "AssaultRifleRN.placeHolderList[10]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[11]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[12]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentInverseMatrix" 
		"AssaultRifleRN.placeHolderList[13]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[14]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[15]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[16]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[17]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scale" "AssaultRifleRN.placeHolderList[18]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleX" "AssaultRifleRN.placeHolderList[19]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleY" "AssaultRifleRN.placeHolderList[20]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleZ" "AssaultRifleRN.placeHolderList[21]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentMatrix" "AssaultRifleRN.placeHolderList[22]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.visibility" "AssaultRifleRN.placeHolderList[23]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateX" 
		"AssaultRifleRN.placeHolderList[24]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateY" 
		"AssaultRifleRN.placeHolderList[25]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateZ" 
		"AssaultRifleRN.placeHolderList[26]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.visibility" 
		"AssaultRifleRN.placeHolderList[27]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateX" 
		"AssaultRifleRN.placeHolderList[28]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateY" 
		"AssaultRifleRN.placeHolderList[29]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateZ" 
		"AssaultRifleRN.placeHolderList[30]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleX" 
		"AssaultRifleRN.placeHolderList[31]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleY" 
		"AssaultRifleRN.placeHolderList[32]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleZ" 
		"AssaultRifleRN.placeHolderList[33]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.drawOverride" 
		"AssaultRifleRN.placeHolderList[34]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateX" 
		"AssaultRifleRN.placeHolderList[35]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateY" 
		"AssaultRifleRN.placeHolderList[36]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateZ" 
		"AssaultRifleRN.placeHolderList[37]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.visibility" 
		"AssaultRifleRN.placeHolderList[38]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateX" 
		"AssaultRifleRN.placeHolderList[39]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateY" 
		"AssaultRifleRN.placeHolderList[40]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateZ" 
		"AssaultRifleRN.placeHolderList[41]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleX" 
		"AssaultRifleRN.placeHolderList[42]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleY" 
		"AssaultRifleRN.placeHolderList[43]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleZ" 
		"AssaultRifleRN.placeHolderList[44]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.drawOverride" 
		"AssaultRifleRN.placeHolderList[45]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode pairBlend -n "pairBlend1";
	rename -uid "CC3309C9-A24F-249D-08FF-F7A8A2D9DB57";
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "60C5ACB6-2946-EBA4-6454-BCB11CCC06DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -170.48767539484473;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "9A20002F-5B49-E96A-43E1-42B93E961432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 106.93913818626224;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "77FB86C4-5842-6E03-28E8-24BA3F2D74F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 164.19323133402358;
createNode animCurveTA -n "Magazine_rotateX";
	rename -uid "4A5B27AE-7048-CD43-3FB5-77BA01E7ED0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Magazine_rotateY";
	rename -uid "3A98871E-E747-C15C-BE5F-6CAEC9E0EB57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Magazine_rotateZ";
	rename -uid "E2DFCE31-394C-F7C1-99B6-2C83A5E8719A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Muzzle_rotateX";
	rename -uid "0FEDE29F-6342-49AD-DC04-AABA380D0CF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Muzzle_rotateY";
	rename -uid "A4E7B63D-EF47-216D-23B1-1993DED750A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Muzzle_rotateZ";
	rename -uid "4260E08A-CC49-EC00-D86B-89B4349C6D71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "HandAttach_rotateX";
	rename -uid "22923872-7D48-5EE6-7E15-CAA16188523D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "HandAttach_rotateY";
	rename -uid "BEF9D4D9-AE43-162F-255A-BE9C4A802C7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "HandAttach_rotateZ";
	rename -uid "44ADB39A-084D-FB22-BF09-CF97CA8F4057";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "B513BD9A-094A-7475-98CA-B9A0642EF82C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "312C1084-2E4F-626D-ADF0-88B8E241F08E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "472B889E-0A41-47C0-29B3-BFAF0665BC03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "A1D6674D-334C-1F43-119E-58A717A82E8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "7CAACA62-1C4B-AAD8-12A7-45B2CC64CC26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.4716358153335021 10 7.4716358153335021
		 120 7.4716358153335021;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "B10469F4-2C4A-1CA0-7978-A2BD02E874A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "C53C66B4-FC47-7EDD-5915-29B956D8581C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "7955B875-8E49-578B-D553-55A4D63D8116";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "E6F9E1AD-E846-0E2D-AF32-ADB822EB5202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "5A7B54DA-C24E-512F-6627-0C853FDA0D01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "2E59CE22-9148-EBAC-E315-B2AEEA90CF72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "EA8224DC-1F48-842B-5F3C-5F9A35100420";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "121D7D4F-114B-3D89-6CC4-8A9E7CA45755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "8D143907-7F45-6784-BA67-AA9765774967";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.105865832321399 10 -27.105865832321399
		 120 -27.105865832321399;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "170C2F2A-7E4E-6545-A707-77A0FB68A603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "61452B4E-1642-D0D0-441A-B5A47ED3FD13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "D2EC9E6D-C341-8AC4-DD1F-CCBAA0C70326";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "8B8C7EEB-E54F-7C3B-32CC-D4AF8906964D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "38A5A830-B849-F909-066B-4A8BAFD79ED5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "B5059644-454E-9274-ED0F-968FCDB2472A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "C227D50C-3E4F-5A06-07E7-E98625DDA0CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "1011BD1B-F44D-5822-0D89-2DBC8DD6E3AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "2AA02717-DB46-9E81-90F1-2A8F86DDBE08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "A2F2A75C-8648-A03A-AD52-31A2EC567DFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Heading_Control_rotateY";
	rename -uid "9E1D84AF-0143-E72F-C5EC-CEABAE49659E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -15.994356639031782 25 -15.178195379001675
		 50 -17.822486957216864 75 -15.994356639031782 100 -15.994356639031782 120 -15.994356639031782;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "74481C0F-5F45-EEFB-3C0E-0ABC2F3FAC44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 30 0.72259041974320171 50 -0.58963732616352338
		 80 1.2165619994216259 100 -0.078110636504636496 120 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "3DBF43CE-054F-A319-E69B-F3B815B35586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10 0 30 -0.23925119236844972 50 -0.61617340379948138
		 80 0.41407184307708245 100 -1.6865469204435579 120 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "76391A9B-7A43-B775-6970-38BAAD10CAC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -226.74205536220524 10 -226.74205536220524
		 120 -226.74205536220524;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "27F640FD-6946-4917-7F26-04884D102FCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 183.52604440481844 10 183.52604440481844
		 120 183.52604440481844;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "B2626297-5B43-6AA6-E6CA-0585B87A803E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 137.54336747931407 10 137.54336747931407
		 120 137.54336747931407;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "DDFB90C8-214D-E7B5-6B12-CFB7181EB5D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.9618683418674019 10 -4.9618683418674019
		 120 -4.9618683418674019;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "BE01967E-854E-0EEE-7767-2D812C6B9055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.653567683890154 10 12.653567683890154
		 120 12.653567683890154;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "C03936EB-2F46-48F9-25D6-14B8944F8795";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.5478340512602 10 28.5478340512602 120 28.5478340512602;
createNode animCurveTA -n "LeftHandAttach_Control_rotateX";
	rename -uid "8A649014-F240-00B3-4DDD-DD9D71DE375C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateY";
	rename -uid "03C3868F-D24E-DA28-00C4-EB9BC9B20EA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateZ";
	rename -uid "5691A3DF-F84F-3E90-E24D-D2AFA9847933";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "D9E8971C-B249-798B-5902-6B9F9E423DBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "CC75257B-384F-4ECA-FD46-D8871493DCBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "67C0AE63-7A43-2A2C-0274-6295B8FEEC14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "B0245CD7-7743-C544-A361-EAAB1C26E1C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 57.983348231657651 10 57.983348231657651
		 120 57.983348231657651;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "7119CC72-0B41-CB32-9AF3-C8829DBB2756";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 94.564551262797053 10 94.564551262797053
		 120 94.564551262797053;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "AE99D98C-6F40-6AA6-9D1D-40AE0A08D70C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 94.249952276840489 10 94.249952276840489
		 120 94.249952276840489;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "9899840F-8248-2D45-2042-DD97D8CB3F58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "474FBCB8-4244-3CB3-CB30-D79E75B4881F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "070233C1-1D4D-82C0-41EE-57A0B95D2365";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightFingers_Control_rotateX";
	rename -uid "CDED4DE5-4E40-94AC-9F04-868768665E83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightFingers_Control_rotateY";
	rename -uid "C21ADBF7-E148-7ADA-7D29-B4BC27254F68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightFingers_Control_rotateZ";
	rename -uid "BC8A0B34-BC4A-8FAC-A9C9-1E8CC92DDF39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateX";
	rename -uid "75B21776-E54A-05CA-69B5-F79F6491F886";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateY";
	rename -uid "080B7E62-1547-A583-937F-629C4DE55427";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateZ";
	rename -uid "59AB0190-6442-5F5A-D902-5EA10BC34EB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Spine_Control_rotateX";
	rename -uid "AB840EB7-CF4D-303F-7FF8-9198595A2BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.954618758225479 10 -1.954618758225479
		 120 -1.954618758225479;
createNode animCurveTA -n "Spine_Control_rotateY";
	rename -uid "30A11E7B-684C-CB75-B54D-CEBC69014233";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.0253348028443674 10 -1.0253348028443674
		 120 -1.0253348028443674;
createNode animCurveTA -n "Spine_Control_rotateZ";
	rename -uid "FB121B38-AB42-613A-D472-11A64C34CF62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7555670440815954 10 2.7555670440815954
		 120 2.7555670440815954;
createNode animCurveTA -n "Torso_Control_rotateX";
	rename -uid "6EA08D31-5E48-4286-0396-2182E8FB252A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Torso_Control_rotateY";
	rename -uid "55D364C1-2641-2B4C-91A0-439E3E3CF813";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.825422023605741 10 11.825422023605741
		 120 11.825422023605741;
createNode animCurveTA -n "Torso_Control_rotateZ";
	rename -uid "6E06FD5E-5346-02D3-7C9E-28BA6235F01A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "52D85413-B84A-F78C-C4F9-89BC66D701C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.11752857969459334 10 0.11752857969459334
		 120 0.11752857969459334;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "D20DD50D-7743-7DB1-116F-C3A98DDD229D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.12047803785432823 10 0.12047803785432823
		 120 0.12047803785432823;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "932E0DA9-F841-99ED-B6AE-248F8471BB24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.047265062152740699 10 -0.047265062152740699
		 120 -0.047265062152740699;
createNode animCurveTA -n "LeftBackAttach_Control_rotateX";
	rename -uid "95EFA6DE-BF42-BA21-55B0-D3886BD9634C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateY";
	rename -uid "82BF6CDA-D840-CAC5-484B-8E9C94588814";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateZ";
	rename -uid "7E563BFB-E341-E24A-2C4B-C7AAF3CDF24A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "546DEBAE-F546-E8DD-B2AD-DBB492F912AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "1E6AABCE-5F4B-A39E-8875-6A90087824BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "51D241EF-5644-3CDE-3F1E-0BB295AE9583";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateX";
	rename -uid "4B2E133A-554D-B1A4-5BAE-3791AA38AB29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateY";
	rename -uid "48A33548-744F-C35C-B045-C18EECB18831";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateZ";
	rename -uid "8AB1970B-6048-E9B1-23E0-D492E2ED7C95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "B89BB40B-5745-981E-9C48-BD88B22DAC47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4872124778218216 10 -2.4872124778218216
		 120 -2.4872124778218216;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "A6B385E5-8B40-907E-7F73-EBB3A98E8AF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.468594651899423 10 23.468594651899423
		 120 23.468594651899423;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "000D5B64-6941-04E0-1EE9-BB8A8CCE4528";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.8796715657305532 10 -3.8796715657305532
		 120 -3.8796715657305532;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "E7F75AB1-6F44-1D96-2BF2-B7BE2C8269B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "89C2D18D-0C49-169E-6722-629C6D6FE816";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "07DC9CD5-D245-5BDF-49D3-23A1FA70FF04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "91CA90AC-DA44-B3C8-5359-088120F3A51D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "98B3B950-0947-A988-6D98-508487F1F9A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "567864A5-AA4F-4BE5-C8DC-F5BA65035E23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "AEEE76BB-744A-C90B-14D4-3CB4039EF6AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "2689A205-1A47-E65D-9C05-1880B958A903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "B0597F17-F748-F610-7F12-149FC3F033F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 30.606526818242884 10 30.606526818242884
		 120 30.606526818242884;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "140E5578-FA43-FD50-52E5-E6AE11274C9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.441684826692779 10 37.441684826692779
		 120 37.441684826692779;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "CAF4F116-3A43-BA4E-AC2E-2FACAFCEB94B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.994503220932042 10 20.994503220932042
		 120 20.994503220932042;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "0FA54B5F-C144-99D6-99A5-92996E544939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "D2D41826-4740-24FF-8A25-3CAF623E50DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "6D38BC09-0740-DABF-BC08-D0910E8F7893";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftHandAttach_Control_visibility";
	rename -uid "76555168-0E48-D075-29D8-05A31078E984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftHandAttach_Control_translateX";
	rename -uid "A4C5AD1B-914A-67E0-49BF-0A8907610B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateY";
	rename -uid "D1344FC4-1048-6D0B-3C88-48BC956F8082";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateZ";
	rename -uid "DFF2BDC4-484E-116D-99F9-3ABFFFE1F1E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleX";
	rename -uid "04029276-2443-9AB3-0960-0E98F50254F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleY";
	rename -uid "24D3515E-2A45-C617-D9C6-B08F3514DE62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleZ";
	rename -uid "8FEE7D76-7845-C79F-32E3-2F91F1DF7D93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "1D796974-B74D-E25F-94D7-26A5F805F218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "7C7F7D4D-D846-9380-CFE7-89B5C4C5E92B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "DE02F019-664D-624D-DB7D-E1B8A777BAD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "EEA5F754-C044-B711-506D-9B83C2C44B32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "04B5EA4E-C64B-EA9F-8CEB-52BEA4323C3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "3632C74C-8648-DE18-DA76-5C9AD04141D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "1FAD7C6D-7A4A-1AE9-D7F2-0B808C0D71B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "619F7E3C-2742-780B-5A4D-E1A6F23C42AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "5565D1F9-0043-EF1B-B1F9-F190F1BBDA3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 67.45276426365831 10 67.45276426365831
		 120 67.45276426365831;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "E2335F21-4B44-9E47-5BFC-EBA096A783BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.73902028908083328 10 0.73902028908083328
		 120 0.73902028908083328;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "F2699240-1141-EA29-79BE-458B211AA91F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.539061839515345 10 16.539061839515345
		 120 16.539061839515345;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "6B888EFA-C745-9EAF-C50A-AD90C32C65E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "4BAA1DB4-4640-6BDE-D229-7BB1C939DBC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "C4310C86-E742-CE34-31E2-A5BFE439CE78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Heading_Control_visibility";
	rename -uid "06BC881D-2944-2987-24EC-8FBD6320A91B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 25 1 50 1 75 1 100 1 120 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTL -n "Heading_Control_translateX";
	rename -uid "3642ED02-1A44-A647-A841-B9B3759A1C24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 25 0 50 0 75 0 100 0 120 0;
createNode animCurveTL -n "Heading_Control_translateY";
	rename -uid "AE1DEFA8-0B43-E991-E69C-B1B135D7FE23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.0330540429822861 25 -4.0330540429822861
		 50 -1.2869418967257786 75 -4.0330540429822861 100 -5.7078121441504379 120 -4.0330540429822861;
createNode animCurveTL -n "Heading_Control_translateZ";
	rename -uid "FB24CE37-EE4F-D281-17B8-EDABCF2C65AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -6.9237376573597587 25 -6.9237376573597587
		 50 -6.9237376573597587 75 -6.9237376573597587 100 -6.9237376573597587 120 -6.9237376573597587;
createNode animCurveTU -n "Heading_Control_scaleX";
	rename -uid "03C42855-2349-3296-4C71-B59B0B7784CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 25 1 50 1 75 1 100 1 120 1;
createNode animCurveTU -n "Heading_Control_scaleY";
	rename -uid "3FEB1D62-B74A-A332-7D77-D9B6EE30CFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 25 1 50 1 75 1 100 1 120 1;
createNode animCurveTU -n "Heading_Control_scaleZ";
	rename -uid "9C1F1950-E841-4B5F-AC7C-7687239A4791";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 25 1 50 1 75 1 100 1 120 1;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "3FED63B6-F742-DE3A-9035-96A429F5D774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "79632B18-374C-4B09-5E35-608CEC303465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.99969926098688 10 33.99969926098688
		 120 33.99969926098688;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "E86ACD09-9F41-25ED-8A0D-9EA16D2D1DFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.529493805650674 10 45.529493805650674
		 120 45.529493805650674;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "836176F9-2C41-BDD2-6CC1-CFBBBBBDF4A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.59283952177006149 10 0.59283952177006149
		 120 0.59283952177006149;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "B4653A7B-A146-811C-03D6-4882551A9EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D076C76E-E346-8131-016B-7B8B59018B01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "1C445670-FF4D-1C86-2342-F8980AA54338";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "A97461A2-2D4B-0A84-4CFE-F6B58D50101D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "DB262ED8-4545-E973-8305-F8A113E7FBB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "6FA89032-EF4B-CFF4-9D57-28A415E67799";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "4D49805A-A34A-F9DE-C136-63A99F8C7FC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "1C24AF49-1D49-DCC6-0E3C-1688EB0252AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "21093508-AE47-632B-9E0C-DA91566D53DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "D6B9349B-B643-4576-78F9-80BC282CAF3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "6674DFA6-5D42-E9E0-0745-828D2D501F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "A32F5A2E-514E-3C5A-CE83-60A9086B0882";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "B13124CE-9144-EBD7-5623-D2AE879965A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "22509DA5-BB42-624E-4BB2-B88CDD7CB0AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightFingers_Control_visibility";
	rename -uid "A09690D4-0E4C-7AF6-341D-B6AD04224105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightFingers_Control_translateX";
	rename -uid "EA30EC69-A54A-B576-DC80-32957C44EDF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightFingers_Control_translateY";
	rename -uid "DAF1BFC3-B54B-944C-A434-A0B454771B4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightFingers_Control_translateZ";
	rename -uid "D5115B3D-4B4C-E3B0-85A9-F3B5E1FE8FE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RightFingers_Control_scaleX";
	rename -uid "A242915B-5D48-3A0A-2B3C-A58454579E43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightFingers_Control_scaleY";
	rename -uid "B995A711-7E44-1CB5-EA46-CA820B13671E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightFingers_Control_scaleZ";
	rename -uid "C7A17B03-6A48-B9F4-9610-BCB700C3170A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "B0885B03-0541-FFA7-7149-79A02DC5A868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "4688AF7D-5A40-2C6D-C889-7C88E01E3B2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.561659308054463 10 -14.561659308054463
		 120 -14.561659308054463;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "AC806DAD-D447-5BA0-50D8-E180A66C6FD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.327393720130942 10 18.327393720130942
		 120 18.327393720130942;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "3A3C37AA-CE46-EAF5-DD18-9A9A38FB879B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.241794577593339 10 6.241794577593339
		 120 6.241794577593339;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "1195D86D-B146-6451-6D2A-68AAEBFB6D3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "E5185D89-AF47-31E8-7F62-E4A8515D13CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "0CD50EF5-0B45-1B6B-6C91-13A11A881D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightHandAttach_Control_visibility";
	rename -uid "A87C11B1-8648-90BE-204E-069585FC31E8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightHandAttach_Control_translateX";
	rename -uid "0CBB0BE0-DA49-D41D-6CE5-44B87FC34E60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightHandAttach_Control_translateY";
	rename -uid "53862CAB-5C45-A521-2759-54999340EED2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightHandAttach_Control_translateZ";
	rename -uid "FA8D74B1-D74E-FF85-AA27-35989BB5C0F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RightHandAttach_Control_scaleX";
	rename -uid "88B04E6B-BA4B-2EC1-9179-8C9611BF0C7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleY";
	rename -uid "B7B31381-B34E-0C99-8B11-FAAA838ECD4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleZ";
	rename -uid "842186A0-6F4D-C7C3-2EC0-04A404618029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "AC591CDC-2F40-FF1F-3E32-02BEBE64FBB9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Root_Control_translateX";
	rename -uid "AD8D7342-3D42-323F-9C28-1F847C424F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "0CD13737-BC45-168E-387F-5F823BE3258F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "FB1A95F1-F142-A4E0-5086-E5AF55E7B775";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "8CD18E54-A74B-63E3-755F-5A9F103EC54F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "1727E7A7-2040-362A-E019-498E6E4F6F00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "FEE517E8-F145-3120-4340-FCB9114C2B5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "HandAttach_visibility";
	rename -uid "65E8546E-3248-7479-6BC3-E48FD203A623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "HandAttach_translateX";
	rename -uid "B988104A-BB46-45E1-851B-C7AB4C151ED9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "HandAttach_translateY";
	rename -uid "6891753D-774E-9D19-0973-1FBA4159BF5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "HandAttach_translateZ";
	rename -uid "25E1D301-6045-FAA5-0E7E-889D71FC1157";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "HandAttach_scaleX";
	rename -uid "0DD464B6-4449-1E8D-B889-E3AA44D660E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99999999999999978 10 0.99999999999999978
		 120 0.99999999999999978;
createNode animCurveTU -n "HandAttach_scaleY";
	rename -uid "1DE870FA-A54C-A641-B966-68AC20C9439B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99999999999999978 10 0.99999999999999978
		 120 0.99999999999999978;
createNode animCurveTU -n "HandAttach_scaleZ";
	rename -uid "32E92210-CA4C-6497-81C7-76BFA21CB52B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99999999999999989 10 0.99999999999999989
		 120 0.99999999999999989;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "CD808EFA-044D-863B-D18B-6EBA7F7C7F15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "1AD3AEB1-A846-4220-A73A-64A70DCE5E48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.688811500049276 10 -8.688811500049276
		 120 -8.688811500049276;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "75CDA8B8-B14A-6328-CCE9-47A578FDAC18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "5FE64412-B245-3B2E-EAEE-7598247A5C20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.036386252346517 10 -26.036386252346517
		 120 -26.036386252346517;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "AC101C63-EB46-0CC8-6C62-AF838D6DB3BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "36AF499C-3744-8D17-6E72-08826F424484";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "717BB3A6-D241-2A23-729D-E6BCAD05F2BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "B9D10EE5-7E45-1043-8D9E-0286113DAB27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "5A6B6029-4443-79C6-F2E2-1594A63D1FE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "2D1375C9-7546-3B51-02D4-70B8F6B9FDF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "05D3BFCB-6D49-1B73-80FE-3CB88CFE93C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "DABFBC52-9A46-406B-FA7E-86A67A7D72BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "D9E75980-6744-60A0-9D44-FCA2876719BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "2A699021-9344-7624-0B0A-BA9A6C239937";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftBackAttach_Control_visibility";
	rename -uid "C1E02559-6543-C4C4-4162-7285F679D409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftBackAttach_Control_translateX";
	rename -uid "28D0B03D-EA49-3B2F-ABFE-028D6BC170D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateY";
	rename -uid "A8D3D5AE-814B-7FD2-E654-3A9B9F73DA47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateZ";
	rename -uid "DE9B47D8-FF46-7088-7C7E-6E99ABB5D465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleX";
	rename -uid "086754ED-1345-4B50-A658-E990CB10F7A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleY";
	rename -uid "9F80BB24-1249-CB0C-1A37-72823F9AFA6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleZ";
	rename -uid "A4608F00-B147-2048-B804-14B9AC85BB2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "1F5E059E-8C46-CD05-46B3-F19EDB3FD6A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "C7E5D40C-594A-945C-FED5-939B6B78361F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "16D00A2C-3549-D30C-590E-67B506F79A53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "8B549C9A-7241-DE0D-6A76-FBA06FB4CC00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "F202ED50-6C46-E2AA-54AE-8AA911083629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "0B97BAAF-4A47-E9B2-CF45-4E8D27C1258D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "ED35A964-954E-7336-B341-CABBAA9D3152";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Torso_Control_visibility";
	rename -uid "441FE08D-D146-376C-B728-A2BEB269573E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Torso_Control_translateX";
	rename -uid "31310E48-6E4E-BCCC-92AC-55AEE34F138E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Torso_Control_translateY";
	rename -uid "CE84C7B8-7E41-D34E-B596-3A960CF78325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Torso_Control_translateZ";
	rename -uid "A65D5B22-9C41-7F08-4328-6CAA8616965F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "Torso_Control_scaleX";
	rename -uid "EC3259A5-AB41-6479-01F5-F1902165BD86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Torso_Control_scaleY";
	rename -uid "12CB2B37-BC40-48B6-90E1-08BC7020194D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Torso_Control_scaleZ";
	rename -uid "86D65C18-AE4F-58C3-C4E9-D8984D046D6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "89DAEDF1-BE49-77CA-6613-FA89D32125D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "6DA9DB42-8A43-4295-2A77-4BB6C278A76D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.2776276621746376 10 7.2776276621746376
		 120 7.2776276621746376;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "680BC277-194C-9568-C6AD-B791B30C2B41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "FBFB81E1-A441-B899-54C1-8A8DCD302B23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.499266212807015 10 15.499266212807015
		 120 15.499266212807015;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "0268359D-6B49-8488-7C10-9A84EE79F80D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "0A773196-6B4C-7D88-9B1A-538BBF3331C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "CA921C16-E74E-2CBB-3D65-07BBF26D198B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Spine_Control_visibility";
	rename -uid "5B17A965-CD45-2E1A-3712-868AFE8EFD78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Spine_Control_translateX";
	rename -uid "0EE5E485-5444-0C35-76F7-F6A30F00E141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Spine_Control_translateY";
	rename -uid "6F6A3008-6E44-2B38-6822-0C9C2CCC6204";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Spine_Control_translateZ";
	rename -uid "17556240-494E-3702-6D24-D2B43789078D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "Spine_Control_scaleX";
	rename -uid "81F00E26-C544-171A-CDEB-8A82805F05B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Spine_Control_scaleY";
	rename -uid "6720DD38-EF48-CEB1-EE74-FE94A1CCA407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Spine_Control_scaleZ";
	rename -uid "10C8865E-564A-4FC0-D71D-5A9F6725E2B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "E781A79D-3B4D-EE7B-74D0-99A579801C3B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "56B65237-AE43-2860-8224-7296E1C177F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "77DBDC83-BB41-7B29-672E-AD8E1D712C88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "DA37F90B-5049-EAD7-95EB-45A1725A50DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "A7B319F2-3040-99CE-AB18-3EA708261E4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "911B0399-8640-776B-0D1D-F18CE9265AA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "56187ACA-A147-E0E6-7F49-FC874FB32FA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightBackAttach_Control_visibility";
	rename -uid "94A10A4A-E342-D7B2-3F97-7B83AE3DD0CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightBackAttach_Control_translateX";
	rename -uid "F7E9C13D-8D41-1812-1273-7BA96831056A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightBackAttach_Control_translateY";
	rename -uid "8457A368-664D-2E89-8709-4199A9089F07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightBackAttach_Control_translateZ";
	rename -uid "A3345FF5-D64F-88C8-304F-51957AB11D1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RightBackAttach_Control_scaleX";
	rename -uid "566F34CD-E14C-3297-40DF-DFACEB1CDF41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleY";
	rename -uid "E69872B5-6F4B-0212-7974-2AB4F678406C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleZ";
	rename -uid "2D3CD6AD-8545-C370-8000-15B2129D10E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "17C8F46D-004D-153C-79B6-C79EC923020D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "EAFF4274-D046-A40A-BEC7-79AF06A1A01D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "7B24117A-6F4D-C7D8-ECDF-C982F3463497";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "188DF939-A842-2E93-F8F2-ACACBD6B7022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "FA2DF218-8D4F-6153-4208-E296E45B745E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "C57387CE-4946-7ACC-B076-0AA57FC201C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "7227E9EA-C941-F710-5C90-D487BDDDE4C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "922D13CB-1B47-AB92-2583-36A6FB2F1468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "2DE1CD91-0547-7A31-F84B-2FBCDE27C489";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "6BC71CCC-4E4C-484D-4C41-E89010F3E71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "17F49203-5C48-74BB-9F27-09B7449749D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "996E3BF3-E244-D5F5-3D9E-FC858D38CF6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "80E61146-574C-4819-66A2-6CB8827DAE79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "A335BD13-1740-3210-395F-0B98B394BD40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "479EC99C-C540-9FEF-239C-D3A61D882665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "4AAC2F95-4A45-1A18-E101-618B312E64A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "E842DF6A-F845-A030-2F8A-23A1B9F51527";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "5CC0FB0A-4145-67C2-896E-C99C07959D3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 120 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "76AB832D-564F-FCD0-F6B6-D9A3C150846B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "D41276B6-CE4C-EABD-5F9B-10B4C6325176";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "9DC240B7-8147-BAEF-4A76-CBA173CD97D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
createNode animCurveTU -n "Magazine_visibility";
	rename -uid "D616BCF1-434F-6E6C-17D0-4C988BC47704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Magazine_translateX";
	rename -uid "5C415BB2-C441-F6DD-4A53-87B035FE4845";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Magazine_translateY";
	rename -uid "0A312EA0-D746-D0AA-DCCD-B785DD3431C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Magazine_translateZ";
	rename -uid "D63942B3-1D4C-9F77-F568-68AB6FE2695A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Magazine_scaleX";
	rename -uid "4E0F5AF4-C24B-58F0-60BC-988CD9D866AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Magazine_scaleY";
	rename -uid "E812D6C4-D94C-413B-771E-48A1799772BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Magazine_scaleZ";
	rename -uid "56C4B978-E647-380A-E0A5-CEAE6D47A449";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AssaultRifle_visibility";
	rename -uid "416EA6E6-4142-CA38-9262-17B5A4EBCD77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "3913DF98-E44B-B221-5CB5-E885CB82C2B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.824385077293865;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "4443AD87-5A4E-E441-6AE2-C286D66F68A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 128.05353336691951;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "378F8A40-B64E-C14D-ADDF-EE9265D18EA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 24.423127549189271;
createNode animCurveTU -n "AssaultRifle_scaleX";
	rename -uid "A83000D3-E446-7531-509C-7FA23BC32D7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AssaultRifle_scaleY";
	rename -uid "71D3CCEB-F84D-270D-FA62-16AEEA254D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AssaultRifle_scaleZ";
	rename -uid "B39E1171-7948-9DDD-28F0-58BE2E97638C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "AssaultRifle_blendParent1";
	rename -uid "F0BAFDD4-8946-772E-7C7A-AF9159DC3244";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 1;
createNode animCurveTU -n "Muzzle_visibility";
	rename -uid "FBE83236-AB42-4DD2-B6F4-798770FF1B81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Muzzle_translateX";
	rename -uid "BEC0EFF0-B448-1863-0288-2883DB9BA996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Muzzle_translateY";
	rename -uid "7260FC3A-8B4F-3E6F-CE36-A2A5BEF0C7E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Muzzle_translateZ";
	rename -uid "3EDA0178-D649-EAF9-5959-F0BBF0702AD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Muzzle_scaleX";
	rename -uid "8573B1E3-CF48-9062-C185-0AB5F5AB49D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Muzzle_scaleY";
	rename -uid "57086A90-FC4E-D38C-1919-2BA1A2C6748A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "Muzzle_scaleZ";
	rename -uid "5127793A-8D41-0666-A412-F6A333FFD708";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode pairBlend -n "pairBlend2";
	rename -uid "A4A3DAE0-424A-7B8A-D869-82ADB2845B63";
createNode animCurveTU -n "LeftHand_Control_blendParent2";
	rename -uid "845043CE-4C4B-146B-F159-0E8520B6B85C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 10 1 120 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 7;
	setAttr -av -k on ".unw" 7;
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
	setAttr -av ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
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
connectAttr "Combot_RigRN.phl[1]" "AssaultRifle_parentConstraint1.tg[0].tt";
connectAttr "Combot_RigRN.phl[2]" "AssaultRifle_parentConstraint1.tg[0].tr";
connectAttr "Combot_RigRN.phl[3]" "AssaultRifle_parentConstraint1.tg[0].tro";
connectAttr "Combot_RigRN.phl[4]" "AssaultRifle_parentConstraint1.tg[0].trp";
connectAttr "Combot_RigRN.phl[5]" "AssaultRifle_parentConstraint1.tg[0].trt";
connectAttr "Combot_RigRN.phl[6]" "AssaultRifle_parentConstraint1.tg[0].ts";
connectAttr "Combot_RigRN.phl[7]" "AssaultRifle_parentConstraint1.tg[0].tpm";
connectAttr "Root_Control_rotateX.o" "Combot_RigRN.phl[8]";
connectAttr "Root_Control_rotateY.o" "Combot_RigRN.phl[9]";
connectAttr "Root_Control_rotateZ.o" "Combot_RigRN.phl[10]";
connectAttr "Root_Control_visibility.o" "Combot_RigRN.phl[11]";
connectAttr "Root_Control_translateX.o" "Combot_RigRN.phl[12]";
connectAttr "Root_Control_translateY.o" "Combot_RigRN.phl[13]";
connectAttr "Root_Control_translateZ.o" "Combot_RigRN.phl[14]";
connectAttr "Root_Control_scaleX.o" "Combot_RigRN.phl[15]";
connectAttr "Root_Control_scaleY.o" "Combot_RigRN.phl[16]";
connectAttr "Root_Control_scaleZ.o" "Combot_RigRN.phl[17]";
connectAttr "RootMotion_Control_rotateX.o" "Combot_RigRN.phl[18]";
connectAttr "RootMotion_Control_rotateY.o" "Combot_RigRN.phl[19]";
connectAttr "RootMotion_Control_rotateZ.o" "Combot_RigRN.phl[20]";
connectAttr "RootMotion_Control_visibility.o" "Combot_RigRN.phl[21]";
connectAttr "RootMotion_Control_translateX.o" "Combot_RigRN.phl[22]";
connectAttr "RootMotion_Control_translateY.o" "Combot_RigRN.phl[23]";
connectAttr "RootMotion_Control_translateZ.o" "Combot_RigRN.phl[24]";
connectAttr "RootMotion_Control_scaleX.o" "Combot_RigRN.phl[25]";
connectAttr "RootMotion_Control_scaleY.o" "Combot_RigRN.phl[26]";
connectAttr "RootMotion_Control_scaleZ.o" "Combot_RigRN.phl[27]";
connectAttr "Heading_Control_rotateY.o" "Combot_RigRN.phl[28]";
connectAttr "Heading_Control_visibility.o" "Combot_RigRN.phl[29]";
connectAttr "Heading_Control_translateX.o" "Combot_RigRN.phl[30]";
connectAttr "Heading_Control_translateY.o" "Combot_RigRN.phl[31]";
connectAttr "Heading_Control_translateZ.o" "Combot_RigRN.phl[32]";
connectAttr "Heading_Control_scaleX.o" "Combot_RigRN.phl[33]";
connectAttr "Heading_Control_scaleY.o" "Combot_RigRN.phl[34]";
connectAttr "Heading_Control_scaleZ.o" "Combot_RigRN.phl[35]";
connectAttr "Hips_Control_rotateX.o" "Combot_RigRN.phl[36]";
connectAttr "Hips_Control_rotateZ.o" "Combot_RigRN.phl[37]";
connectAttr "Hips_Control_scaleX.o" "Combot_RigRN.phl[38]";
connectAttr "Hips_Control_scaleY.o" "Combot_RigRN.phl[39]";
connectAttr "Hips_Control_scaleZ.o" "Combot_RigRN.phl[40]";
connectAttr "Hips_Control_visibility.o" "Combot_RigRN.phl[41]";
connectAttr "RightHand_Control_rotateY.o" "Combot_RigRN.phl[42]";
connectAttr "RightHand_Control_rotateX.o" "Combot_RigRN.phl[43]";
connectAttr "RightHand_Control_rotateZ.o" "Combot_RigRN.phl[44]";
connectAttr "RightHand_Control_translateX.o" "Combot_RigRN.phl[45]";
connectAttr "RightHand_Control_translateY.o" "Combot_RigRN.phl[46]";
connectAttr "RightHand_Control_translateZ.o" "Combot_RigRN.phl[47]";
connectAttr "RightHand_Control_visibility.o" "Combot_RigRN.phl[48]";
connectAttr "RightHand_Control_scaleX.o" "Combot_RigRN.phl[49]";
connectAttr "RightHand_Control_scaleY.o" "Combot_RigRN.phl[50]";
connectAttr "RightHand_Control_scaleZ.o" "Combot_RigRN.phl[51]";
connectAttr "RightFingers_Control_translateX.o" "Combot_RigRN.phl[52]";
connectAttr "RightFingers_Control_translateY.o" "Combot_RigRN.phl[53]";
connectAttr "RightFingers_Control_translateZ.o" "Combot_RigRN.phl[54]";
connectAttr "RightFingers_Control_rotateX.o" "Combot_RigRN.phl[55]";
connectAttr "RightFingers_Control_rotateY.o" "Combot_RigRN.phl[56]";
connectAttr "RightFingers_Control_rotateZ.o" "Combot_RigRN.phl[57]";
connectAttr "RightFingers_Control_scaleX.o" "Combot_RigRN.phl[58]";
connectAttr "RightFingers_Control_scaleY.o" "Combot_RigRN.phl[59]";
connectAttr "RightFingers_Control_scaleZ.o" "Combot_RigRN.phl[60]";
connectAttr "RightFingers_Control_visibility.o" "Combot_RigRN.phl[61]";
connectAttr "LeftElbow_Control_translateX.o" "Combot_RigRN.phl[62]";
connectAttr "LeftElbow_Control_translateY.o" "Combot_RigRN.phl[63]";
connectAttr "LeftElbow_Control_translateZ.o" "Combot_RigRN.phl[64]";
connectAttr "LeftElbow_Control_rotateY.o" "Combot_RigRN.phl[65]";
connectAttr "LeftElbow_Control_rotateX.o" "Combot_RigRN.phl[66]";
connectAttr "LeftElbow_Control_rotateZ.o" "Combot_RigRN.phl[67]";
connectAttr "LeftElbow_Control_visibility.o" "Combot_RigRN.phl[68]";
connectAttr "LeftElbow_Control_scaleX.o" "Combot_RigRN.phl[69]";
connectAttr "LeftElbow_Control_scaleY.o" "Combot_RigRN.phl[70]";
connectAttr "LeftElbow_Control_scaleZ.o" "Combot_RigRN.phl[71]";
connectAttr "RightHandAttach_Control_translateX.o" "Combot_RigRN.phl[72]";
connectAttr "RightHandAttach_Control_translateY.o" "Combot_RigRN.phl[73]";
connectAttr "RightHandAttach_Control_translateZ.o" "Combot_RigRN.phl[74]";
connectAttr "RightHandAttach_Control_rotateX.o" "Combot_RigRN.phl[75]";
connectAttr "RightHandAttach_Control_rotateY.o" "Combot_RigRN.phl[76]";
connectAttr "RightHandAttach_Control_rotateZ.o" "Combot_RigRN.phl[77]";
connectAttr "RightHandAttach_Control_scaleX.o" "Combot_RigRN.phl[78]";
connectAttr "RightHandAttach_Control_scaleY.o" "Combot_RigRN.phl[79]";
connectAttr "RightHandAttach_Control_scaleZ.o" "Combot_RigRN.phl[80]";
connectAttr "RightHandAttach_Control_visibility.o" "Combot_RigRN.phl[81]";
connectAttr "pairBlend2.orx" "Combot_RigRN.phl[82]";
connectAttr "pairBlend2.ory" "Combot_RigRN.phl[83]";
connectAttr "pairBlend2.orz" "Combot_RigRN.phl[84]";
connectAttr "Combot_RigRN.phl[85]" "pairBlend2.ro";
connectAttr "Combot_RigRN.phl[86]" "LeftHand_Control_parentConstraint2.cro";
connectAttr "Combot_RigRN.phl[87]" "pairBlend2.w";
connectAttr "LeftHand_Control_blendParent2.o" "Combot_RigRN.phl[88]";
connectAttr "pairBlend2.otx" "Combot_RigRN.phl[89]";
connectAttr "pairBlend2.oty" "Combot_RigRN.phl[90]";
connectAttr "pairBlend2.otz" "Combot_RigRN.phl[91]";
connectAttr "Combot_RigRN.phl[92]" "LeftHand_Control_parentConstraint2.cpim";
connectAttr "Combot_RigRN.phl[93]" "LeftHand_Control_parentConstraint2.crp";
connectAttr "Combot_RigRN.phl[94]" "LeftHand_Control_parentConstraint2.crt";
connectAttr "LeftHand_Control_visibility.o" "Combot_RigRN.phl[95]";
connectAttr "LeftHand_Control_scaleX.o" "Combot_RigRN.phl[96]";
connectAttr "LeftHand_Control_scaleY.o" "Combot_RigRN.phl[97]";
connectAttr "LeftHand_Control_scaleZ.o" "Combot_RigRN.phl[98]";
connectAttr "LeftFingers_Control_translateX.o" "Combot_RigRN.phl[99]";
connectAttr "LeftFingers_Control_translateY.o" "Combot_RigRN.phl[100]";
connectAttr "LeftFingers_Control_translateZ.o" "Combot_RigRN.phl[101]";
connectAttr "LeftFingers_Control_rotateX.o" "Combot_RigRN.phl[102]";
connectAttr "LeftFingers_Control_rotateY.o" "Combot_RigRN.phl[103]";
connectAttr "LeftFingers_Control_rotateZ.o" "Combot_RigRN.phl[104]";
connectAttr "LeftFingers_Control_scaleX.o" "Combot_RigRN.phl[105]";
connectAttr "LeftFingers_Control_scaleY.o" "Combot_RigRN.phl[106]";
connectAttr "LeftFingers_Control_scaleZ.o" "Combot_RigRN.phl[107]";
connectAttr "LeftFingers_Control_visibility.o" "Combot_RigRN.phl[108]";
connectAttr "RightElbow_Control_translateX.o" "Combot_RigRN.phl[109]";
connectAttr "RightElbow_Control_translateY.o" "Combot_RigRN.phl[110]";
connectAttr "RightElbow_Control_translateZ.o" "Combot_RigRN.phl[111]";
connectAttr "RightElbow_Control_rotateX.o" "Combot_RigRN.phl[112]";
connectAttr "RightElbow_Control_rotateY.o" "Combot_RigRN.phl[113]";
connectAttr "RightElbow_Control_rotateZ.o" "Combot_RigRN.phl[114]";
connectAttr "RightElbow_Control_visibility.o" "Combot_RigRN.phl[115]";
connectAttr "RightElbow_Control_scaleX.o" "Combot_RigRN.phl[116]";
connectAttr "RightElbow_Control_scaleY.o" "Combot_RigRN.phl[117]";
connectAttr "RightElbow_Control_scaleZ.o" "Combot_RigRN.phl[118]";
connectAttr "LeftHandAttach_Control_translateX.o" "Combot_RigRN.phl[119]";
connectAttr "LeftHandAttach_Control_translateY.o" "Combot_RigRN.phl[120]";
connectAttr "LeftHandAttach_Control_translateZ.o" "Combot_RigRN.phl[121]";
connectAttr "LeftHandAttach_Control_rotateX.o" "Combot_RigRN.phl[122]";
connectAttr "LeftHandAttach_Control_rotateY.o" "Combot_RigRN.phl[123]";
connectAttr "LeftHandAttach_Control_rotateZ.o" "Combot_RigRN.phl[124]";
connectAttr "LeftHandAttach_Control_scaleX.o" "Combot_RigRN.phl[125]";
connectAttr "LeftHandAttach_Control_scaleY.o" "Combot_RigRN.phl[126]";
connectAttr "LeftHandAttach_Control_scaleZ.o" "Combot_RigRN.phl[127]";
connectAttr "LeftHandAttach_Control_visibility.o" "Combot_RigRN.phl[128]";
connectAttr "Spine_Control_translateX.o" "Combot_RigRN.phl[129]";
connectAttr "Spine_Control_translateY.o" "Combot_RigRN.phl[130]";
connectAttr "Spine_Control_translateZ.o" "Combot_RigRN.phl[131]";
connectAttr "Spine_Control_rotateX.o" "Combot_RigRN.phl[132]";
connectAttr "Spine_Control_rotateY.o" "Combot_RigRN.phl[133]";
connectAttr "Spine_Control_rotateZ.o" "Combot_RigRN.phl[134]";
connectAttr "Spine_Control_scaleX.o" "Combot_RigRN.phl[135]";
connectAttr "Spine_Control_scaleY.o" "Combot_RigRN.phl[136]";
connectAttr "Spine_Control_scaleZ.o" "Combot_RigRN.phl[137]";
connectAttr "Spine_Control_visibility.o" "Combot_RigRN.phl[138]";
connectAttr "Torso_Control_translateX.o" "Combot_RigRN.phl[139]";
connectAttr "Torso_Control_translateY.o" "Combot_RigRN.phl[140]";
connectAttr "Torso_Control_translateZ.o" "Combot_RigRN.phl[141]";
connectAttr "Torso_Control_rotateY.o" "Combot_RigRN.phl[142]";
connectAttr "Torso_Control_rotateX.o" "Combot_RigRN.phl[143]";
connectAttr "Torso_Control_rotateZ.o" "Combot_RigRN.phl[144]";
connectAttr "Torso_Control_scaleX.o" "Combot_RigRN.phl[145]";
connectAttr "Torso_Control_scaleY.o" "Combot_RigRN.phl[146]";
connectAttr "Torso_Control_scaleZ.o" "Combot_RigRN.phl[147]";
connectAttr "Torso_Control_visibility.o" "Combot_RigRN.phl[148]";
connectAttr "LeftShoulder_Control_translateX.o" "Combot_RigRN.phl[149]";
connectAttr "LeftShoulder_Control_translateY.o" "Combot_RigRN.phl[150]";
connectAttr "LeftShoulder_Control_translateZ.o" "Combot_RigRN.phl[151]";
connectAttr "LeftShoulder_Control_rotateX.o" "Combot_RigRN.phl[152]";
connectAttr "LeftShoulder_Control_rotateY.o" "Combot_RigRN.phl[153]";
connectAttr "LeftShoulder_Control_rotateZ.o" "Combot_RigRN.phl[154]";
connectAttr "LeftShoulder_Control_scaleX.o" "Combot_RigRN.phl[155]";
connectAttr "LeftShoulder_Control_scaleY.o" "Combot_RigRN.phl[156]";
connectAttr "LeftShoulder_Control_scaleZ.o" "Combot_RigRN.phl[157]";
connectAttr "LeftShoulder_Control_visibility.o" "Combot_RigRN.phl[158]";
connectAttr "RightShoulder_Control_translateX.o" "Combot_RigRN.phl[159]";
connectAttr "RightShoulder_Control_translateZ.o" "Combot_RigRN.phl[160]";
connectAttr "RightShoulder_Control_translateY.o" "Combot_RigRN.phl[161]";
connectAttr "RightShoulder_Control_rotateX.o" "Combot_RigRN.phl[162]";
connectAttr "RightShoulder_Control_rotateY.o" "Combot_RigRN.phl[163]";
connectAttr "RightShoulder_Control_rotateZ.o" "Combot_RigRN.phl[164]";
connectAttr "RightShoulder_Control_scaleX.o" "Combot_RigRN.phl[165]";
connectAttr "RightShoulder_Control_scaleY.o" "Combot_RigRN.phl[166]";
connectAttr "RightShoulder_Control_scaleZ.o" "Combot_RigRN.phl[167]";
connectAttr "RightShoulder_Control_visibility.o" "Combot_RigRN.phl[168]";
connectAttr "Head_Control_rotateX.o" "Combot_RigRN.phl[169]";
connectAttr "Head_Control_rotateY.o" "Combot_RigRN.phl[170]";
connectAttr "Head_Control_rotateZ.o" "Combot_RigRN.phl[171]";
connectAttr "Head_Control_visibility.o" "Combot_RigRN.phl[172]";
connectAttr "Head_Control_translateX.o" "Combot_RigRN.phl[173]";
connectAttr "Head_Control_translateY.o" "Combot_RigRN.phl[174]";
connectAttr "Head_Control_translateZ.o" "Combot_RigRN.phl[175]";
connectAttr "Head_Control_scaleX.o" "Combot_RigRN.phl[176]";
connectAttr "Head_Control_scaleY.o" "Combot_RigRN.phl[177]";
connectAttr "Head_Control_scaleZ.o" "Combot_RigRN.phl[178]";
connectAttr "LeftBackAttach_Control_translateX.o" "Combot_RigRN.phl[179]";
connectAttr "LeftBackAttach_Control_translateY.o" "Combot_RigRN.phl[180]";
connectAttr "LeftBackAttach_Control_translateZ.o" "Combot_RigRN.phl[181]";
connectAttr "LeftBackAttach_Control_rotateX.o" "Combot_RigRN.phl[182]";
connectAttr "LeftBackAttach_Control_rotateY.o" "Combot_RigRN.phl[183]";
connectAttr "LeftBackAttach_Control_rotateZ.o" "Combot_RigRN.phl[184]";
connectAttr "LeftBackAttach_Control_scaleX.o" "Combot_RigRN.phl[185]";
connectAttr "LeftBackAttach_Control_scaleY.o" "Combot_RigRN.phl[186]";
connectAttr "LeftBackAttach_Control_scaleZ.o" "Combot_RigRN.phl[187]";
connectAttr "LeftBackAttach_Control_visibility.o" "Combot_RigRN.phl[188]";
connectAttr "RightBackAttach_Control_translateX.o" "Combot_RigRN.phl[189]";
connectAttr "RightBackAttach_Control_translateY.o" "Combot_RigRN.phl[190]";
connectAttr "RightBackAttach_Control_translateZ.o" "Combot_RigRN.phl[191]";
connectAttr "RightBackAttach_Control_rotateX.o" "Combot_RigRN.phl[192]";
connectAttr "RightBackAttach_Control_rotateY.o" "Combot_RigRN.phl[193]";
connectAttr "RightBackAttach_Control_rotateZ.o" "Combot_RigRN.phl[194]";
connectAttr "RightBackAttach_Control_scaleX.o" "Combot_RigRN.phl[195]";
connectAttr "RightBackAttach_Control_scaleY.o" "Combot_RigRN.phl[196]";
connectAttr "RightBackAttach_Control_scaleZ.o" "Combot_RigRN.phl[197]";
connectAttr "RightBackAttach_Control_visibility.o" "Combot_RigRN.phl[198]";
connectAttr "LeftFoot_Control_rotateY.o" "Combot_RigRN.phl[199]";
connectAttr "LeftFoot_Control_rotateX.o" "Combot_RigRN.phl[200]";
connectAttr "LeftFoot_Control_rotateZ.o" "Combot_RigRN.phl[201]";
connectAttr "LeftFoot_Control_translateX.o" "Combot_RigRN.phl[202]";
connectAttr "LeftFoot_Control_translateY.o" "Combot_RigRN.phl[203]";
connectAttr "LeftFoot_Control_translateZ.o" "Combot_RigRN.phl[204]";
connectAttr "LeftFoot_Control_visibility.o" "Combot_RigRN.phl[205]";
connectAttr "LeftFoot_Control_scaleX.o" "Combot_RigRN.phl[206]";
connectAttr "LeftFoot_Control_scaleY.o" "Combot_RigRN.phl[207]";
connectAttr "LeftFoot_Control_scaleZ.o" "Combot_RigRN.phl[208]";
connectAttr "LeftToes_Control_rotateX.o" "Combot_RigRN.phl[209]";
connectAttr "LeftToes_Control_rotateY.o" "Combot_RigRN.phl[210]";
connectAttr "LeftToes_Control_rotateZ.o" "Combot_RigRN.phl[211]";
connectAttr "LeftToes_Control_visibility.o" "Combot_RigRN.phl[212]";
connectAttr "LeftToes_Control_translateX.o" "Combot_RigRN.phl[213]";
connectAttr "LeftToes_Control_translateY.o" "Combot_RigRN.phl[214]";
connectAttr "LeftToes_Control_translateZ.o" "Combot_RigRN.phl[215]";
connectAttr "LeftToes_Control_scaleX.o" "Combot_RigRN.phl[216]";
connectAttr "LeftToes_Control_scaleY.o" "Combot_RigRN.phl[217]";
connectAttr "LeftToes_Control_scaleZ.o" "Combot_RigRN.phl[218]";
connectAttr "LeftKnee_Control_translateX.o" "Combot_RigRN.phl[219]";
connectAttr "LeftKnee_Control_translateY.o" "Combot_RigRN.phl[220]";
connectAttr "LeftKnee_Control_translateZ.o" "Combot_RigRN.phl[221]";
connectAttr "LeftKnee_Control_rotateX.o" "Combot_RigRN.phl[222]";
connectAttr "LeftKnee_Control_rotateY.o" "Combot_RigRN.phl[223]";
connectAttr "LeftKnee_Control_rotateZ.o" "Combot_RigRN.phl[224]";
connectAttr "LeftKnee_Control_visibility.o" "Combot_RigRN.phl[225]";
connectAttr "LeftKnee_Control_scaleX.o" "Combot_RigRN.phl[226]";
connectAttr "LeftKnee_Control_scaleY.o" "Combot_RigRN.phl[227]";
connectAttr "LeftKnee_Control_scaleZ.o" "Combot_RigRN.phl[228]";
connectAttr "RightFoot_Control_rotateY.o" "Combot_RigRN.phl[229]";
connectAttr "RightFoot_Control_rotateX.o" "Combot_RigRN.phl[230]";
connectAttr "RightFoot_Control_rotateZ.o" "Combot_RigRN.phl[231]";
connectAttr "RightFoot_Control_translateX.o" "Combot_RigRN.phl[232]";
connectAttr "RightFoot_Control_translateY.o" "Combot_RigRN.phl[233]";
connectAttr "RightFoot_Control_translateZ.o" "Combot_RigRN.phl[234]";
connectAttr "RightFoot_Control_visibility.o" "Combot_RigRN.phl[235]";
connectAttr "RightFoot_Control_scaleX.o" "Combot_RigRN.phl[236]";
connectAttr "RightFoot_Control_scaleY.o" "Combot_RigRN.phl[237]";
connectAttr "RightFoot_Control_scaleZ.o" "Combot_RigRN.phl[238]";
connectAttr "RightToes_Control_rotateX.o" "Combot_RigRN.phl[239]";
connectAttr "RightToes_Control_rotateY.o" "Combot_RigRN.phl[240]";
connectAttr "RightToes_Control_rotateZ.o" "Combot_RigRN.phl[241]";
connectAttr "RightToes_Control_visibility.o" "Combot_RigRN.phl[242]";
connectAttr "RightToes_Control_translateX.o" "Combot_RigRN.phl[243]";
connectAttr "RightToes_Control_translateY.o" "Combot_RigRN.phl[244]";
connectAttr "RightToes_Control_translateZ.o" "Combot_RigRN.phl[245]";
connectAttr "RightToes_Control_scaleX.o" "Combot_RigRN.phl[246]";
connectAttr "RightToes_Control_scaleY.o" "Combot_RigRN.phl[247]";
connectAttr "RightToes_Control_scaleZ.o" "Combot_RigRN.phl[248]";
connectAttr "RightKnee_Control_translateX.o" "Combot_RigRN.phl[249]";
connectAttr "RightKnee_Control_translateY.o" "Combot_RigRN.phl[250]";
connectAttr "RightKnee_Control_translateZ.o" "Combot_RigRN.phl[251]";
connectAttr "RightKnee_Control_rotateX.o" "Combot_RigRN.phl[252]";
connectAttr "RightKnee_Control_rotateY.o" "Combot_RigRN.phl[253]";
connectAttr "RightKnee_Control_rotateZ.o" "Combot_RigRN.phl[254]";
connectAttr "RightKnee_Control_visibility.o" "Combot_RigRN.phl[255]";
connectAttr "RightKnee_Control_scaleX.o" "Combot_RigRN.phl[256]";
connectAttr "RightKnee_Control_scaleY.o" "Combot_RigRN.phl[257]";
connectAttr "RightKnee_Control_scaleZ.o" "Combot_RigRN.phl[258]";
connectAttr "Extras.di" "AssaultRifleRN.phl[1]";
connectAttr "AssaultRifleRN.phl[2]" "pairBlend1.w";
connectAttr "AssaultRifleRN.phl[3]" "LeftHand_Control_parentConstraint2.tg[0].tt"
		;
connectAttr "pairBlend1.otx" "AssaultRifleRN.phl[4]";
connectAttr "pairBlend1.oty" "AssaultRifleRN.phl[5]";
connectAttr "pairBlend1.otz" "AssaultRifleRN.phl[6]";
connectAttr "AssaultRifleRN.phl[7]" "LeftHand_Control_parentConstraint2.tg[0].tr"
		;
connectAttr "pairBlend1.orx" "AssaultRifleRN.phl[8]";
connectAttr "pairBlend1.ory" "AssaultRifleRN.phl[9]";
connectAttr "pairBlend1.orz" "AssaultRifleRN.phl[10]";
connectAttr "AssaultRifleRN.phl[11]" "LeftHand_Control_parentConstraint2.tg[0].tro"
		;
connectAttr "AssaultRifleRN.phl[12]" "AssaultRifle_parentConstraint1.cro";
connectAttr "AssaultRifleRN.phl[13]" "AssaultRifle_parentConstraint1.cpim";
connectAttr "AssaultRifleRN.phl[14]" "LeftHand_Control_parentConstraint2.tg[0].trp"
		;
connectAttr "AssaultRifleRN.phl[15]" "AssaultRifle_parentConstraint1.crp";
connectAttr "AssaultRifleRN.phl[16]" "LeftHand_Control_parentConstraint2.tg[0].trt"
		;
connectAttr "AssaultRifleRN.phl[17]" "AssaultRifle_parentConstraint1.crt";
connectAttr "AssaultRifleRN.phl[18]" "LeftHand_Control_parentConstraint2.tg[0].ts"
		;
connectAttr "AssaultRifle_scaleX.o" "AssaultRifleRN.phl[19]";
connectAttr "AssaultRifle_scaleY.o" "AssaultRifleRN.phl[20]";
connectAttr "AssaultRifle_scaleZ.o" "AssaultRifleRN.phl[21]";
connectAttr "AssaultRifleRN.phl[22]" "LeftHand_Control_parentConstraint2.tg[0].tpm"
		;
connectAttr "AssaultRifle_visibility.o" "AssaultRifleRN.phl[23]";
connectAttr "Magazine_rotateX.o" "AssaultRifleRN.phl[24]";
connectAttr "Magazine_rotateY.o" "AssaultRifleRN.phl[25]";
connectAttr "Magazine_rotateZ.o" "AssaultRifleRN.phl[26]";
connectAttr "Magazine_visibility.o" "AssaultRifleRN.phl[27]";
connectAttr "Magazine_translateX.o" "AssaultRifleRN.phl[28]";
connectAttr "Magazine_translateY.o" "AssaultRifleRN.phl[29]";
connectAttr "Magazine_translateZ.o" "AssaultRifleRN.phl[30]";
connectAttr "Magazine_scaleX.o" "AssaultRifleRN.phl[31]";
connectAttr "Magazine_scaleY.o" "AssaultRifleRN.phl[32]";
connectAttr "Magazine_scaleZ.o" "AssaultRifleRN.phl[33]";
connectAttr "Extras.di" "AssaultRifleRN.phl[34]";
connectAttr "Muzzle_rotateX.o" "AssaultRifleRN.phl[35]";
connectAttr "Muzzle_rotateY.o" "AssaultRifleRN.phl[36]";
connectAttr "Muzzle_rotateZ.o" "AssaultRifleRN.phl[37]";
connectAttr "Muzzle_visibility.o" "AssaultRifleRN.phl[38]";
connectAttr "Muzzle_translateX.o" "AssaultRifleRN.phl[39]";
connectAttr "Muzzle_translateY.o" "AssaultRifleRN.phl[40]";
connectAttr "Muzzle_translateZ.o" "AssaultRifleRN.phl[41]";
connectAttr "Muzzle_scaleX.o" "AssaultRifleRN.phl[42]";
connectAttr "Muzzle_scaleY.o" "AssaultRifleRN.phl[43]";
connectAttr "Muzzle_scaleZ.o" "AssaultRifleRN.phl[44]";
connectAttr "Extras.di" "AssaultRifleRN.phl[45]";
connectAttr "Extras.di" "Ground.do";
connectAttr "polyPlane1.out" "GroundShape.i";
connectAttr "Extras.di" "directionalLight1.do";
connectAttr "Extras.di" "ambientLight1.do";
connectAttr "Extras.di" "pointLight1.do";
connectAttr "HandAttach.t" "LeftHand_Control_parentConstraint1.tg[0].tt";
connectAttr "HandAttach.rp" "LeftHand_Control_parentConstraint1.tg[0].trp";
connectAttr "HandAttach.rpt" "LeftHand_Control_parentConstraint1.tg[0].trt";
connectAttr "HandAttach.r" "LeftHand_Control_parentConstraint1.tg[0].tr";
connectAttr "HandAttach.ro" "LeftHand_Control_parentConstraint1.tg[0].tro";
connectAttr "HandAttach.s" "LeftHand_Control_parentConstraint1.tg[0].ts";
connectAttr "HandAttach.pm" "LeftHand_Control_parentConstraint1.tg[0].tpm";
connectAttr "LeftHand_Control_parentConstraint1.w0" "LeftHand_Control_parentConstraint1.tg[0].tw"
		;
connectAttr "HandAttach_translateX.o" "HandAttach.tx";
connectAttr "HandAttach_translateY.o" "HandAttach.ty";
connectAttr "HandAttach_translateZ.o" "HandAttach.tz";
connectAttr "HandAttach_rotateX.o" "HandAttach.rx";
connectAttr "HandAttach_rotateY.o" "HandAttach.ry";
connectAttr "HandAttach_rotateZ.o" "HandAttach.rz";
connectAttr "HandAttach_scaleX.o" "HandAttach.sx";
connectAttr "HandAttach_scaleY.o" "HandAttach.sy";
connectAttr "HandAttach_scaleZ.o" "HandAttach.sz";
connectAttr "HandAttach_visibility.o" "HandAttach.v";
connectAttr "makeNurbCircle1.oc" "HandAttachShape.cr";
connectAttr "LeftHand_Control_parentConstraint2.w0" "LeftHand_Control_parentConstraint2.tg[0].tw"
		;
connectAttr "AssaultRifle_parentConstraint1.w0" "AssaultRifle_parentConstraint1.tg[0].tw"
		;
connectAttr "Extras.di" "AssaultRifle_parentConstraint1.do";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "checker1.oc" "MatGround.c";
connectAttr "MatGround.oc" "lambert2SG.ss";
connectAttr "GroundShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MatGround.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "layerManager.dli[1]" "Extras.id";
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "Combot_RigRNfosterParent2.msg" "Combot_RigRN.fp";
connectAttr "AssaultRifleRNfosterParent2.msg" "AssaultRifleRN.fp";
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
connectAttr "LeftHand_Control_translateX.o" "pairBlend2.itx1";
connectAttr "LeftHand_Control_translateY.o" "pairBlend2.ity1";
connectAttr "LeftHand_Control_translateZ.o" "pairBlend2.itz1";
connectAttr "LeftHand_Control_rotateX.o" "pairBlend2.irx1";
connectAttr "LeftHand_Control_rotateY.o" "pairBlend2.iry1";
connectAttr "LeftHand_Control_rotateZ.o" "pairBlend2.irz1";
connectAttr "LeftHand_Control_parentConstraint2.ctx" "pairBlend2.itx2";
connectAttr "LeftHand_Control_parentConstraint2.cty" "pairBlend2.ity2";
connectAttr "LeftHand_Control_parentConstraint2.ctz" "pairBlend2.itz2";
connectAttr "LeftHand_Control_parentConstraint2.crx" "pairBlend2.irx2";
connectAttr "LeftHand_Control_parentConstraint2.cry" "pairBlend2.iry2";
connectAttr "LeftHand_Control_parentConstraint2.crz" "pairBlend2.irz2";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MatGround.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
// End of Combot_Idles.ma
