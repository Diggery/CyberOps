//Maya ASCII 2018 scene
//Name: Combot_Moving.ma
//Last modified: Sun, Oct 29, 2017 05:42:08 PM
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
	setAttr ".t" -type "double3" 603.32560776155594 287.03655550091742 -415.25985150729355 ;
	setAttr ".r" -type "double3" -10.538352729411978 115.80000000007493 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C01CBC2A-A945-8E5B-6F17-3E94BB6A6474";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 748.3570553619702;
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
	setAttr ".t" -type "double3" 76.18493748182614 63.059917569348585 1003.1341340948478 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "57856151-CE4C-B5C9-F93B-3181304B1E64";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1003.1341340948478;
	setAttr ".ow" 526.31578947368428;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 79.343721000578569 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F491BD05-A74A-48A1-58E3-EDB4E10C8355";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1004.2170156133039 68.999401986677753 -118.30610544326969 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "ED2D598C-D044-1DD3-6175-D091B6611675";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1004.2170156133037;
	setAttr ".ow" 441.04753639651068;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 115.58733122788996 26.731122101896922 ;
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
	rename -uid "C161E5E4-7941-7A28-B5FE-A49E253D6EF7";
createNode parentConstraint -n "LeftHand_Control_parentConstraint2" -p "Combot_RigRNfosterParent2";
	rename -uid "913E2E87-F84D-445A-0CB8-089BE794625B";
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
	setAttr ".tg[0].tot" -type "double3" 14.874874656469331 -3.0464678645037715 29.690999233285382 ;
	setAttr ".tg[0].tor" -type "double3" 15.164151056191512 -29.701889360274951 -65.201578020153562 ;
	setAttr ".lr" -type "double3" -68.060154196876184 -3.3107374346671845 -49.436714034287782 ;
	setAttr ".rst" -type "double3" -23.495191812786071 53.542873244254537 22.613401737308585 ;
	setAttr ".rsrr" -type "double3" -238.768924093919 192.06413697642145 133.45128148955749 ;
	setAttr -k on ".w0";
createNode fosterParent -n "AssaultRifleRNfosterParent2";
	rename -uid "64F31460-724D-8DC2-4D54-DDB2139BE530";
createNode parentConstraint -n "AssaultRifle_parentConstraint1" -p "AssaultRifleRNfosterParent2";
	rename -uid "6199AFBD-9749-9356-F5FC-5EB76CDDE53C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RightHand_ControlW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tot" -type "double3" 4.5054539705638348 -3.3334712218037268 7.1475517637949366 ;
	setAttr ".tg[0].tor" -type "double3" 60.94558600187036 -7.266760930039415e-06 -1.6128913742655296e-05 ;
	setAttr ".lr" -type "double3" -19.287453830286282 63.617124339130243 -12.338965672763804 ;
	setAttr ".rst" -type "double3" -15.637348692925158 128.73065245346501 70.534248759165678 ;
	setAttr ".rsrr" -type "double3" 9.1738823273710626 64.652207136989446 13.607765494825632 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "7C8CA9AD-414A-4DBB-08CF-229F9C6B08F5";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "3CE98205-D147-32ED-7638-33A460A0A48A";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "7040DCB7-2A40-729B-84DF-27BC3EA3675A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "675E4F0C-7F47-96EA-DC23-87A94AA5DDEF";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "6BA43E26-4F4A-C312-BCC8-DD8AE797E8B9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "824247BF-BE49-9510-F34F-399852998D1B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "40803CA6-374B-1B34-6B83-B9937B9A15C5";
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
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1092\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1092\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1092\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"persp\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1092\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D241B966-BB43-522F-93FF-86A789FFBB5F";
	setAttr ".b" -type "string" "playbackOptions -min 13 -max 36 -ast 0 -aet 200 ";
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
	setAttr ".ssn" -type "string" "Combot:ExportSet";
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
	setAttr ".ac[0].acn" -type "string" "Run";
	setAttr ".ac[0].acs" 13;
	setAttr ".ac[0].ace" 36;
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/CyberKnights/Assets/Characters/Combot";
	setAttr ".exf" -type "string" "Combot_Moving";
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
	setAttr -s 257 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Combot_RigRN"
		"Combot_RigRN" 0
		"Combot_RigRN" 582
		0 "|Combot_RigRNfosterParent2|LeftHand_Control_parentConstraint2" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"-s -r "
		1 |Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control 
		"blendParent2" "blendParent2" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		2 "|Combot:Combot_Geometry|Combot:Head_Geo|Combot:Head_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Torso_Geo|Combot:Torso_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:Legs_Geo|Combot:Legs_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:RightArm_Geo|Combot:RightArm_GeoShape" 
		"visibility" " -k 0 1"
		2 "|Combot:Combot_Geometry|Combot:LeftArm_Geo|Combot:LeftArm_GeoShape" "visibility" 
		" -k 0 1"
		2 "|Combot:Combot_Control|Combot:Root_Control" "visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Combot:Combot_Control|Combot:Root_Control" "translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Combot:Combot_Control|Combot:Root_Control" "rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Combot:Combot_Control|Combot:Root_Control" "scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control" "scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translate" " -type \"double3\" 0 11.69893613904469909 9.69011797931002761"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"rotateY" " -av -14.50544188660679978"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"rotateX" " -av 17.33663580995898812"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"rotateZ" " -av 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translate" " -type \"double3\" 36.06582829725945771 33.6710718029913636 33.51053389397904425"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotate" " -type \"double3\" -133.16912120302336575 64.60632899693496256 -62.82084137319010608"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightHandAttach_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translate" " -type \"double3\" -7.5096040381345901 34.55021287007144792 20.07963259088096208"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotate" " -type \"double3\" -68.06015419687618362 -3.31073743466718451 -49.43671403428778177"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control" 
		"blendParent2" " -av -k 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"rotate" " -type \"double3\" 32.11913639318618152 18.13771852835440157 28.80664315681785581"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"translate" " -type \"double3\" 110.26129678398939404 86.63079192659797911 77.08136767650339038"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"rotate" " -type \"double3\" 14.7965702359329363 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotate" " -type \"double3\" 14.045226199599119 12.16390769154692642 -5.10309094208804659"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotate" " -type \"double3\" 0 -23.4807395141169799 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotate" " -type \"double3\" -8.33498792539649536 27.04153171223079255 -19.31867278761019691"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotate" " -type \"double3\" -21.93023807725599994 -0.23870265069033675 -5.35940631886988417"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "visibility" 
		" -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translate" 
		" -type \"double3\" 0 21.81466824697549356 31.39084336017031518"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translateX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translateY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "translateZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "rotate" 
		" -type \"double3\" -11.87805839736162916 7.32186600195322157 -4.78871493459133646"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "rotateX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "rotateY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "rotateZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "scale" 
		" -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "scaleX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "scaleY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control" "scaleZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "visibility" 
		" -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "translate" 
		" -type \"double3\" 8.14190171561502041 46.94250720309806013 -29.80667022867539728"
		
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "translateX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "translateY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "translateZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "rotate" 
		" -type \"double3\" 117.75352572260474915 0 -22.39614337351569162"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "rotateX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "rotateY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "rotateZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "scale" 
		" -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "scaleX" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "scaleY" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control" "scaleZ" 
		" -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"rotate" " -type \"double3\" 7.21046223505510397 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control" 
		"scaleZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"visibility" " -av 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"translateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"translateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"translateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"rotateX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"rotateY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"rotateZ" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"scaleX" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"scaleY" " -av"
		2 "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control" 
		"scaleZ" " -av"
		2 "Combot:Geometry_Layer" "hideOnPlayback" " 0"
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.visibility" 
		"Combot_RigRN.placeHolderList[1]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateX" 
		"Combot_RigRN.placeHolderList[2]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateY" 
		"Combot_RigRN.placeHolderList[3]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.translateZ" 
		"Combot_RigRN.placeHolderList[4]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateX" 
		"Combot_RigRN.placeHolderList[5]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateY" 
		"Combot_RigRN.placeHolderList[6]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[7]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleX" 
		"Combot_RigRN.placeHolderList[8]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleY" 
		"Combot_RigRN.placeHolderList[9]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[10]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.visibility" 
		"Combot_RigRN.placeHolderList[11]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateX" 
		"Combot_RigRN.placeHolderList[12]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateY" 
		"Combot_RigRN.placeHolderList[13]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.translateZ" 
		"Combot_RigRN.placeHolderList[14]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateX" 
		"Combot_RigRN.placeHolderList[15]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateY" 
		"Combot_RigRN.placeHolderList[16]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[17]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleX" 
		"Combot_RigRN.placeHolderList[18]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleY" 
		"Combot_RigRN.placeHolderList[19]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[20]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.rotateY" 
		"Combot_RigRN.placeHolderList[21]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.visibility" 
		"Combot_RigRN.placeHolderList[22]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateX" 
		"Combot_RigRN.placeHolderList[23]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateY" 
		"Combot_RigRN.placeHolderList[24]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.translateZ" 
		"Combot_RigRN.placeHolderList[25]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleX" 
		"Combot_RigRN.placeHolderList[26]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleY" 
		"Combot_RigRN.placeHolderList[27]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[28]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.rotateX" 
		"Combot_RigRN.placeHolderList[29]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[30]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleX" 
		"Combot_RigRN.placeHolderList[31]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleY" 
		"Combot_RigRN.placeHolderList[32]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[33]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control.visibility" 
		"Combot_RigRN.placeHolderList[34]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotate" 
		"Combot_RigRN.placeHolderList[35]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateX" 
		"Combot_RigRN.placeHolderList[36]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateY" 
		"Combot_RigRN.placeHolderList[37]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[38]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotateOrder" 
		"Combot_RigRN.placeHolderList[39]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.parentMatrix" 
		"Combot_RigRN.placeHolderList[40]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.visibility" 
		"Combot_RigRN.placeHolderList[41]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translate" 
		"Combot_RigRN.placeHolderList[42]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateX" 
		"Combot_RigRN.placeHolderList[43]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateY" 
		"Combot_RigRN.placeHolderList[44]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.translateZ" 
		"Combot_RigRN.placeHolderList[45]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scale" 
		"Combot_RigRN.placeHolderList[46]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleX" 
		"Combot_RigRN.placeHolderList[47]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleY" 
		"Combot_RigRN.placeHolderList[48]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[49]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotatePivot" 
		"Combot_RigRN.placeHolderList[50]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control.rotatePivotTranslate" 
		"Combot_RigRN.placeHolderList[51]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateX" 
		"Combot_RigRN.placeHolderList[52]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateY" 
		"Combot_RigRN.placeHolderList[53]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[54]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.visibility" 
		"Combot_RigRN.placeHolderList[55]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateX" 
		"Combot_RigRN.placeHolderList[56]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateY" 
		"Combot_RigRN.placeHolderList[57]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.translateZ" 
		"Combot_RigRN.placeHolderList[58]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleX" 
		"Combot_RigRN.placeHolderList[59]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleY" 
		"Combot_RigRN.placeHolderList[60]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:RightFingers_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[61]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.translateX" 
		"Combot_RigRN.placeHolderList[62]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.translateY" 
		"Combot_RigRN.placeHolderList[63]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.translateZ" 
		"Combot_RigRN.placeHolderList[64]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.visibility" 
		"Combot_RigRN.placeHolderList[65]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.rotateX" 
		"Combot_RigRN.placeHolderList[66]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.rotateY" 
		"Combot_RigRN.placeHolderList[67]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:RightHand_Control|Combot:LeftElbow_Control.rotateZ" 
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
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.blendParent2" 
		"Combot_RigRN.placeHolderList[86]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.blendParent2" 
		"Combot_RigRN.placeHolderList[87]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.visibility" 
		"Combot_RigRN.placeHolderList[88]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateX" 
		"Combot_RigRN.placeHolderList[89]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateY" 
		"Combot_RigRN.placeHolderList[90]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.translateZ" 
		"Combot_RigRN.placeHolderList[91]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleX" 
		"Combot_RigRN.placeHolderList[92]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleY" 
		"Combot_RigRN.placeHolderList[93]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[94]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.parentInverseMatrix" 
		"Combot_RigRN.placeHolderList[95]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotatePivot" 
		"Combot_RigRN.placeHolderList[96]" ""
		5 3 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control.rotatePivotTranslate" 
		"Combot_RigRN.placeHolderList[97]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateX" 
		"Combot_RigRN.placeHolderList[98]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateY" 
		"Combot_RigRN.placeHolderList[99]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[100]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.visibility" 
		"Combot_RigRN.placeHolderList[101]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateX" 
		"Combot_RigRN.placeHolderList[102]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateY" 
		"Combot_RigRN.placeHolderList[103]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.translateZ" 
		"Combot_RigRN.placeHolderList[104]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleX" 
		"Combot_RigRN.placeHolderList[105]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleY" 
		"Combot_RigRN.placeHolderList[106]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftFingers_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[107]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.translateX" 
		"Combot_RigRN.placeHolderList[108]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.translateY" 
		"Combot_RigRN.placeHolderList[109]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.translateZ" 
		"Combot_RigRN.placeHolderList[110]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.visibility" 
		"Combot_RigRN.placeHolderList[111]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.rotateX" 
		"Combot_RigRN.placeHolderList[112]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.rotateY" 
		"Combot_RigRN.placeHolderList[113]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[114]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.scaleX" 
		"Combot_RigRN.placeHolderList[115]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.scaleY" 
		"Combot_RigRN.placeHolderList[116]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:RightElbow_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[117]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[118]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[119]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[120]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[121]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[122]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[123]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[124]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[125]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[126]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:LeftHand_Control|Combot:LeftHandAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[127]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateX" 
		"Combot_RigRN.placeHolderList[128]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateY" 
		"Combot_RigRN.placeHolderList[129]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[130]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.visibility" 
		"Combot_RigRN.placeHolderList[131]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateX" 
		"Combot_RigRN.placeHolderList[132]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateY" 
		"Combot_RigRN.placeHolderList[133]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.translateZ" 
		"Combot_RigRN.placeHolderList[134]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleX" 
		"Combot_RigRN.placeHolderList[135]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleY" 
		"Combot_RigRN.placeHolderList[136]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[137]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateX" 
		"Combot_RigRN.placeHolderList[138]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateY" 
		"Combot_RigRN.placeHolderList[139]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[140]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.visibility" 
		"Combot_RigRN.placeHolderList[141]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateX" 
		"Combot_RigRN.placeHolderList[142]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateY" 
		"Combot_RigRN.placeHolderList[143]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.translateZ" 
		"Combot_RigRN.placeHolderList[144]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleX" 
		"Combot_RigRN.placeHolderList[145]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleY" 
		"Combot_RigRN.placeHolderList[146]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[147]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateX" 
		"Combot_RigRN.placeHolderList[148]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateY" 
		"Combot_RigRN.placeHolderList[149]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[150]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.visibility" 
		"Combot_RigRN.placeHolderList[151]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateX" 
		"Combot_RigRN.placeHolderList[152]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateY" 
		"Combot_RigRN.placeHolderList[153]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.translateZ" 
		"Combot_RigRN.placeHolderList[154]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleX" 
		"Combot_RigRN.placeHolderList[155]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleY" 
		"Combot_RigRN.placeHolderList[156]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftShoulder_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[157]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateX" 
		"Combot_RigRN.placeHolderList[158]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateY" 
		"Combot_RigRN.placeHolderList[159]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[160]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.visibility" 
		"Combot_RigRN.placeHolderList[161]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateX" 
		"Combot_RigRN.placeHolderList[162]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateY" 
		"Combot_RigRN.placeHolderList[163]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.translateZ" 
		"Combot_RigRN.placeHolderList[164]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleX" 
		"Combot_RigRN.placeHolderList[165]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleY" 
		"Combot_RigRN.placeHolderList[166]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightShoulder_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[167]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateX" 
		"Combot_RigRN.placeHolderList[168]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateY" 
		"Combot_RigRN.placeHolderList[169]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[170]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.visibility" 
		"Combot_RigRN.placeHolderList[171]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateX" 
		"Combot_RigRN.placeHolderList[172]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateY" 
		"Combot_RigRN.placeHolderList[173]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.translateZ" 
		"Combot_RigRN.placeHolderList[174]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleX" 
		"Combot_RigRN.placeHolderList[175]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleY" 
		"Combot_RigRN.placeHolderList[176]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:Head_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[177]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[178]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[179]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[180]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[181]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[182]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[183]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[184]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[185]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[186]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:LeftBackAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[187]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateX" 
		"Combot_RigRN.placeHolderList[188]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateY" 
		"Combot_RigRN.placeHolderList[189]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.translateZ" 
		"Combot_RigRN.placeHolderList[190]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateX" 
		"Combot_RigRN.placeHolderList[191]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateY" 
		"Combot_RigRN.placeHolderList[192]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[193]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleX" 
		"Combot_RigRN.placeHolderList[194]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleY" 
		"Combot_RigRN.placeHolderList[195]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[196]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RootMotion_Control|Combot:Heading_Control|Combot:Hips_Control|Combot:Spine_Control|Combot:Torso_Control|Combot:RightBackAttach_Control.visibility" 
		"Combot_RigRN.placeHolderList[197]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateX" 
		"Combot_RigRN.placeHolderList[198]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateY" 
		"Combot_RigRN.placeHolderList[199]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[200]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.visibility" 
		"Combot_RigRN.placeHolderList[201]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateX" 
		"Combot_RigRN.placeHolderList[202]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateY" 
		"Combot_RigRN.placeHolderList[203]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.translateZ" 
		"Combot_RigRN.placeHolderList[204]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleX" 
		"Combot_RigRN.placeHolderList[205]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleY" 
		"Combot_RigRN.placeHolderList[206]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[207]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateX" 
		"Combot_RigRN.placeHolderList[208]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateY" 
		"Combot_RigRN.placeHolderList[209]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[210]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.visibility" 
		"Combot_RigRN.placeHolderList[211]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateX" 
		"Combot_RigRN.placeHolderList[212]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateY" 
		"Combot_RigRN.placeHolderList[213]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.translateZ" 
		"Combot_RigRN.placeHolderList[214]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleX" 
		"Combot_RigRN.placeHolderList[215]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleY" 
		"Combot_RigRN.placeHolderList[216]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftToes_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[217]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateX" 
		"Combot_RigRN.placeHolderList[218]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateY" 
		"Combot_RigRN.placeHolderList[219]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.translateZ" 
		"Combot_RigRN.placeHolderList[220]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.visibility" 
		"Combot_RigRN.placeHolderList[221]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateX" 
		"Combot_RigRN.placeHolderList[222]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateY" 
		"Combot_RigRN.placeHolderList[223]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[224]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleX" 
		"Combot_RigRN.placeHolderList[225]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleY" 
		"Combot_RigRN.placeHolderList[226]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:LeftFoot_Control|Combot:LeftKnee_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[227]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateX" 
		"Combot_RigRN.placeHolderList[228]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateY" 
		"Combot_RigRN.placeHolderList[229]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[230]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.visibility" 
		"Combot_RigRN.placeHolderList[231]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateX" 
		"Combot_RigRN.placeHolderList[232]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateY" 
		"Combot_RigRN.placeHolderList[233]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.translateZ" 
		"Combot_RigRN.placeHolderList[234]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleX" 
		"Combot_RigRN.placeHolderList[235]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleY" 
		"Combot_RigRN.placeHolderList[236]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[237]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateX" 
		"Combot_RigRN.placeHolderList[238]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateY" 
		"Combot_RigRN.placeHolderList[239]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[240]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.visibility" 
		"Combot_RigRN.placeHolderList[241]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateX" 
		"Combot_RigRN.placeHolderList[242]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateY" 
		"Combot_RigRN.placeHolderList[243]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.translateZ" 
		"Combot_RigRN.placeHolderList[244]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleX" 
		"Combot_RigRN.placeHolderList[245]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleY" 
		"Combot_RigRN.placeHolderList[246]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightToes_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[247]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateX" 
		"Combot_RigRN.placeHolderList[248]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateY" 
		"Combot_RigRN.placeHolderList[249]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.translateZ" 
		"Combot_RigRN.placeHolderList[250]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.visibility" 
		"Combot_RigRN.placeHolderList[251]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateX" 
		"Combot_RigRN.placeHolderList[252]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateY" 
		"Combot_RigRN.placeHolderList[253]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.rotateZ" 
		"Combot_RigRN.placeHolderList[254]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleX" 
		"Combot_RigRN.placeHolderList[255]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleY" 
		"Combot_RigRN.placeHolderList[256]" ""
		5 4 "Combot_RigRN" "|Combot:Combot_Control|Combot:Root_Control|Combot:RightFoot_Control|Combot:RightKnee_Control.scaleZ" 
		"Combot_RigRN.placeHolderList[257]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "AssaultRifleRN";
	rename -uid "6FB9DB8F-C247-FE9C-7501-29B3241B9D11";
	setAttr -s 43 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"AssaultRifleRN"
		"AssaultRifleRN" 0
		"AssaultRifleRN" 85
		0 "|AssaultRifleRNfosterParent2|AssaultRifle_parentConstraint1" "|AssaultRifle:AssaultRifle" 
		"-s -r "
		1 |AssaultRifle:AssaultRifle "blendParent1" "blendParent1" " -ci 1 -k 1 -dv 1 -smn 0 -smx 1 -at \"double\""
		
		2 "|AssaultRifle:AssaultRifle" "visibility" " -av 1"
		2 "|AssaultRifle:AssaultRifle" "translate" " -type \"double3\" -11.02654334224115829 128.00424995346202195 58.3088602292296514"
		
		2 "|AssaultRifle:AssaultRifle" "translateX" " -av"
		2 "|AssaultRifle:AssaultRifle" "translateY" " -av"
		2 "|AssaultRifle:AssaultRifle" "translateZ" " -av"
		2 "|AssaultRifle:AssaultRifle" "rotate" " -type \"double3\" -19.28745383028628169 63.61712433913024256 -12.33896567276380374"
		
		2 "|AssaultRifle:AssaultRifle" "rotateX" " -av"
		2 "|AssaultRifle:AssaultRifle" "rotateY" " -av"
		2 "|AssaultRifle:AssaultRifle" "rotateZ" " -av"
		2 "|AssaultRifle:AssaultRifle" "scale" " -type \"double3\" 1 1 1"
		2 "|AssaultRifle:AssaultRifle" "scaleX" " -av"
		2 "|AssaultRifle:AssaultRifle" "scaleY" " -av"
		2 "|AssaultRifle:AssaultRifle" "scaleZ" " -av"
		2 "|AssaultRifle:AssaultRifle" "blendParent1" " -av -k 1 1"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "visibility" " -av 1"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "translate" " -type \"double3\" 0 0 0"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "translateX" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "translateY" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "translateZ" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "rotateX" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "rotateY" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "rotateZ" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "scale" " -type \"double3\" 1 1 1"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "scaleX" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "scaleY" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine" "scaleZ" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "visibility" " -av 1"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "translate" " -type \"double3\" 0 0 0"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "translateX" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "translateY" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "translateZ" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "rotateX" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "rotateY" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "rotateZ" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "scale" " -type \"double3\" 1 1 1"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "scaleX" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "scaleY" " -av"
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle" "scaleZ" " -av"
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.blendParent1" "AssaultRifleRN.placeHolderList[1]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.visibility" "AssaultRifleRN.placeHolderList[2]" 
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
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scale" "AssaultRifleRN.placeHolderList[11]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleX" "AssaultRifleRN.placeHolderList[12]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleY" "AssaultRifleRN.placeHolderList[13]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.scaleZ" "AssaultRifleRN.placeHolderList[14]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[15]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[16]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentInverseMatrix" 
		"AssaultRifleRN.placeHolderList[17]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[18]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[19]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[20]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[21]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentMatrix" "AssaultRifleRN.placeHolderList[22]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.drawOverride" "AssaultRifleRN.placeHolderList[23]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.visibility" 
		"AssaultRifleRN.placeHolderList[24]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateX" 
		"AssaultRifleRN.placeHolderList[25]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateY" 
		"AssaultRifleRN.placeHolderList[26]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.translateZ" 
		"AssaultRifleRN.placeHolderList[27]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateX" 
		"AssaultRifleRN.placeHolderList[28]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateY" 
		"AssaultRifleRN.placeHolderList[29]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.rotateZ" 
		"AssaultRifleRN.placeHolderList[30]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleX" 
		"AssaultRifleRN.placeHolderList[31]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleY" 
		"AssaultRifleRN.placeHolderList[32]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine.scaleZ" 
		"AssaultRifleRN.placeHolderList[33]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.visibility" 
		"AssaultRifleRN.placeHolderList[34]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateX" 
		"AssaultRifleRN.placeHolderList[35]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateY" 
		"AssaultRifleRN.placeHolderList[36]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.translateZ" 
		"AssaultRifleRN.placeHolderList[37]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateX" 
		"AssaultRifleRN.placeHolderList[38]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateY" 
		"AssaultRifleRN.placeHolderList[39]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.rotateZ" 
		"AssaultRifleRN.placeHolderList[40]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleX" 
		"AssaultRifleRN.placeHolderList[41]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleY" 
		"AssaultRifleRN.placeHolderList[42]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle|AssaultRifle:Muzzle.scaleZ" 
		"AssaultRifleRN.placeHolderList[43]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "HandAttach_visibility";
	rename -uid "0B187DA9-A143-35FE-7ED3-BBA27A546AC3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "HandAttach_translateX";
	rename -uid "5FD2491F-384C-118A-6823-A39ABD2CFC8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "HandAttach_translateY";
	rename -uid "8F977E57-ED4F-E194-F0E9-A594B872B0DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "HandAttach_translateZ";
	rename -uid "67BA5FED-8640-A7E4-B837-4F9A2989DC51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "HandAttach_rotateX";
	rename -uid "95DAACB1-094E-76AE-22B9-2EB237C2268C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "HandAttach_rotateY";
	rename -uid "408ABE52-5642-2235-E08E-38960D666CC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "HandAttach_rotateZ";
	rename -uid "A1FCF9EE-AD4D-83B4-EB17-1CBA8323973C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "HandAttach_scaleX";
	rename -uid "4B2BF18F-0746-B14A-4939-0D910FD8D522";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.99999999999999978 36 0.99999999999999978;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "HandAttach_scaleY";
	rename -uid "675E119A-E24B-27CC-BB66-308EEF398A2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.99999999999999978 36 0.99999999999999978;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "HandAttach_scaleZ";
	rename -uid "BBAEEDC3-5741-21F7-E68A-BDA15BFF22D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0.99999999999999989 36 0.99999999999999989;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine_Control_visibility";
	rename -uid "E11C8C8F-6C4E-9F77-CF98-DD90D3276B2C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Spine_Control_translateX";
	rename -uid "0F581524-CF43-F238-9B41-1097AE655F17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Spine_Control_translateY";
	rename -uid "BA242590-064C-F2C2-AF10-E3A6A8975CF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Spine_Control_translateZ";
	rename -uid "25FB83EF-6B45-2410-FE32-52B7A50B3356";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Spine_Control_rotateX";
	rename -uid "562FC725-0A45-C3F2-FD9D-78A736C38C33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 14.796570235932936 36 14.796570235932936;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Spine_Control_rotateY";
	rename -uid "DBC820DE-BF4F-6644-8EA9-B894F1488751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Spine_Control_rotateZ";
	rename -uid "A354F716-F54F-4BF7-5DDB-B3A5C38532CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine_Control_scaleX";
	rename -uid "65D4C867-F34B-6861-0D5B-9487D9FD537B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine_Control_scaleY";
	rename -uid "63163804-F44E-62D7-267E-3594F383B8FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Spine_Control_scaleZ";
	rename -uid "4CB8CA27-A94D-1FEA-CBC0-B4B423DE1F1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "14180035-9947-9A6B-C06E-FBAEB3634929";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 16 1 36 1;
	setAttr -s 3 ".kit[0:2]"  1 9 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "8F5A9883-624C-E943-BFF7-3A8C5D4340A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 12.902850181354868 16 13.746038662770085
		 26 38.430664108026463 36 12.902850181354868;
	setAttr -s 4 ".kit[0:3]"  1 18 18 1;
	setAttr -s 4 ".kot[0:3]"  1 18 18 1;
	setAttr -s 4 ".kix[0:3]"  1 0.065744919717858452 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99783646231799539 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.065744919717858452 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0.9978364623179955 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "4CAE24FC-0B41-C0E2-EBD5-D6A12F0B0A86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 27.737589468111764 16 27.4404608699028
		 26 34.394267714867716 36 27.737589468111764;
	setAttr -s 4 ".kit[0:3]"  1 18 18 1;
	setAttr -s 4 ".kot[0:3]"  1 18 18 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "55435C80-3843-59CF-43A1-E6A5EF3BF074";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 28.265561430415911 16 27.750418812181515
		 26 34.179118680259116 36 28.265561430415911;
	setAttr -s 4 ".kit[0:3]"  1 18 18 1;
	setAttr -s 4 ".kot[0:3]"  1 18 18 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "21DBDD93-BA4E-BC49-CD9D-FFBA98F6CCEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 -109.91170502611038 16 -110.32092847506517
		 26 -135.7115301494056 36 -109.91170502611038;
	setAttr -s 4 ".kit[0:3]"  1 18 18 1;
	setAttr -s 4 ".kot[0:3]"  1 18 18 1;
	setAttr -s 4 ".kix[0:3]"  1 0.99183704109082971 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.12751189717115741 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0.99183704109082971 1 1;
	setAttr -s 4 ".koy[0:3]"  0 -0.12751189717115741 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "979253EF-E14D-A263-78D8-A5A8B8EA5579";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 56.42522494536172 16 56.42522494536172
		 26 65.555921431492564 36 56.42522494536172;
	setAttr -s 4 ".kit[0:3]"  1 18 18 1;
	setAttr -s 4 ".kot[0:3]"  1 18 18 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "5CDA48B1-024F-F90D-EEFB-30873C84EC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  12 -41.201574182714545 16 -41.201574182714545
		 26 -65.330220600656006 36 -41.201574182714545;
	setAttr -s 4 ".kit[0:3]"  1 18 18 1;
	setAttr -s 4 ".kot[0:3]"  1 18 18 1;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "9F96F6E0-934C-315F-8F59-7F9816FC2648";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 16 1 36 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "AF4C1CE7-DB41-79C4-FE3E-38B3D92DDDC0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 16 1 36 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "414494B0-C44D-AFB3-56C5-39BFEA2651AE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 16 1 36 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "D5BC5C0B-7142-6D72-9C00-E593846A235E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "666DEA00-EB41-67B2-28FC-28A753126227";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -23.495191812786068 36 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "41613CA9-0B42-4B45-E66D-D0A44AF10B2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 53.542873244254558 36 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "AC6DE9B5-0C41-93FA-BE2D-6697A015CE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 22.613401737308585 36 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "6657DC0C-0C4D-C675-83B3-07B48298431F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -58.768924093918997 36 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "A741D536-D44B-2ECF-C859-8BB32F885CE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -12.064136976421457 36 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "D8C5AC3B-A143-EF4B-22A4-2BBD7D4C348B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -46.548718510442534 36 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "B5D35A3C-5C41-5BF2-38DF-73AF2B6B1555";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "EE13C3FC-8E40-42FB-CCB8-C0A4D9EF9C6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "EBDD8316-6D47-68C6-EF76-BB9E24E084D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "35640E56-DD4A-BF8C-0E07-59AED8CA0A1D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "9D3667FD-F44F-824D-FBFC-87B8F8CF38B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "36A57B86-B140-D505-B804-85AAAEFB2B7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "8FEAAF90-D343-260A-C901-6F9F1E519F84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "DFEBCEF9-574F-8444-DE15-77892CA961A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "BC80F2F8-9244-5F57-7F6C-388D03C0175E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "28BEE0DF-C34B-252F-95EA-598D60510531";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "FAE44BB7-CF48-8C8B-0AF6-02B0084128A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "2917E95A-E14E-E669-22C5-E5B97DFD57B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "BDC5D524-624F-F0C8-4FC0-E5BD0FC37389";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftHandAttach_Control_visibility";
	rename -uid "B9FD81DA-664A-E677-C531-18A3351C1453";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftHandAttach_Control_translateX";
	rename -uid "86C02125-354E-7EE3-4FA7-B78FDAB33A9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftHandAttach_Control_translateY";
	rename -uid "35B91FE5-EA46-BC1B-0609-53BEBFAD6FB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftHandAttach_Control_translateZ";
	rename -uid "8F948C96-5B41-21DE-21F5-EC8F733541BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateX";
	rename -uid "90BB111F-3B43-DA9E-9A95-9C94E183D4AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateY";
	rename -uid "571FCE8C-D149-3DB2-0F83-509A8C1B1B4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateZ";
	rename -uid "3C47F1AE-2D48-5813-3CF6-10952B07E4CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleX";
	rename -uid "619958CD-884C-1C6B-BA4E-7F800725E3D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleY";
	rename -uid "213A7DAA-734E-E8F3-B215-C98B86D255C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleZ";
	rename -uid "E10BD121-1A4A-3187-C5CE-9BBCF234481C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "34E3FDDA-D64A-CD74-ED43-CD9C4D9FC4ED";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "9074B4B3-9648-1E4B-E7F1-CCAC0F0EA2C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 110.26129678398939 36 110.26129678398939;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "7C127EF8-BF40-F43C-396F-F692B177B415";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 86.630791926597979 36 86.630791926597979;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "864AD1AF-7945-AA94-195F-D7BAC9089B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 77.08136767650339 36 77.08136767650339;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "22E0C815-4347-EA58-750F-27B008087707";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "F249CBD5-B840-72F2-B549-7FB5EAD4EA1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "0B2E4993-DA40-769B-EAB6-22A505FBB2B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "21E0242F-BA40-BEF8-CED4-7EBE4AD18A33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "5DBDEE3A-3F45-9700-07B0-2792495AC15A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "FCE7C4BD-6445-1FA7-9243-7FA6146FD7DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Torso_Control_visibility";
	rename -uid "A9E35B45-8046-33BF-5EE5-D49BD70D362A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 24 1 36 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "Torso_Control_translateX";
	rename -uid "198B35DC-0D4D-54F6-FB51-5CBBFD596C35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 24 0 36 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Torso_Control_translateY";
	rename -uid "9549EEDD-D94B-0268-2E69-6ABF04247CD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 24 0 36 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Torso_Control_translateZ";
	rename -uid "10690443-EF44-6FE6-96F5-9E9EE4FB4FB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 24 0 36 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Torso_Control_rotateX";
	rename -uid "4B8EA433-DB4C-0DB8-D042-9D9172BC655D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 14.107531923751878 24 14.045226199599119
		 36 14.107531923751878;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Torso_Control_rotateY";
	rename -uid "4AB98C6B-894F-5467-D034-2A8156691460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -10.547666741875474 24 12.163907691546926
		 36 -10.547666741875474;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Torso_Control_rotateZ";
	rename -uid "494B1EA0-634E-1EFF-A74A-83BFB806CDF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 3.7589160740390155 24 -5.1030909420880466
		 36 3.7589160740390155;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Torso_Control_scaleX";
	rename -uid "2AF6F2D6-034F-0E5D-D9BD-E39D29E1D660";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 24 1 36 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Torso_Control_scaleY";
	rename -uid "A5BC297D-6D4B-23F2-2239-F8871282E9A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 24 1 36 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Torso_Control_scaleZ";
	rename -uid "C0136453-E846-ADC3-FD06-CEA8359BB95E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 24 1 36 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "17065381-BE4B-3753-A2F9-A5B4853EE238";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "64DA6C73-2D4D-D8B0-FCD4-B9A45B4B9949";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 17.336635809958988 36 17.336635809958988;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "51BBBB1E-8B47-37C3-EA49-B3810EA8A8F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "92DE859D-FD4F-234D-2E0D-DF835B0386A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "3C54CB7D-F04B-2D98-6C86-D683730203DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "135733DE-F343-8417-05AD-E395B2A9A369";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightHandAttach_Control_visibility";
	rename -uid "756E3400-C146-1ADC-BF20-EAAA8D4F82B7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RightHandAttach_Control_translateX";
	rename -uid "30D2F965-2E44-B796-9D67-1F94596A39AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightHandAttach_Control_translateY";
	rename -uid "5495DA6C-AE4D-7A4D-523D-EDB6F2E7C3BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightHandAttach_Control_translateZ";
	rename -uid "4B88E41E-6B41-183D-E716-CCAAEB73A3C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightHandAttach_Control_rotateX";
	rename -uid "B0661C68-5E45-442A-C136-EEAE1379270E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightHandAttach_Control_rotateY";
	rename -uid "3772628F-CD4F-7E95-E622-17B1808BADD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightHandAttach_Control_rotateZ";
	rename -uid "8B492535-F64A-D8F9-1018-A9AA372D83A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightHandAttach_Control_scaleX";
	rename -uid "7A0426B5-E243-CA8F-78FE-5E9FB7A5AE0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightHandAttach_Control_scaleY";
	rename -uid "8EB37F4D-AE41-17E7-089B-44AE6367BE03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightHandAttach_Control_scaleZ";
	rename -uid "E8CAB447-5A47-7DEF-20C1-948EF66C698F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "445F3F11-8C48-FDF2-6259-E78F9197D55F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "20D34EA8-614D-846B-8B1C-5EB7BA636C51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "8863871E-1F4E-6EA7-262F-CD9E1EBBC336";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "39AEAB5D-1A44-52AC-BF69-F3A55056E33D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "16D9ED77-5540-8F4B-8341-C6BF6A4B14E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 32.119136393186182 36 32.119136393186182;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "D8A19D1B-FB46-9821-5E94-E38262501689";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 18.137718528354402 36 18.137718528354402;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "A211CC85-1140-EB7B-E63B-75BFA5154818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 28.806643156817856 36 28.806643156817856;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "92939015-FD43-CC60-9563-C6B9CF76CF69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "A5DAE710-BB46-AC29-0344-78A1436BC93B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "D53D8F43-014E-87FD-C75B-3F831B613BC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightFingers_Control_visibility";
	rename -uid "4477E39C-B94C-DC56-D155-DC95E5D2B4AF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RightFingers_Control_translateX";
	rename -uid "73D3B91D-A041-C1DA-7047-F4AC4BC34F34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightFingers_Control_translateY";
	rename -uid "329BE74E-DE40-78AE-C3DF-F68956244D11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightFingers_Control_translateZ";
	rename -uid "CDBEC5EC-FB46-ED82-4693-4FAC18115D60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightFingers_Control_rotateX";
	rename -uid "CAF16CCF-5D41-19CD-395C-0A9200E70041";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightFingers_Control_rotateY";
	rename -uid "56E926C1-1A44-F479-AC11-2588FE8CDAE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightFingers_Control_rotateZ";
	rename -uid "CD58D2FF-CD42-7D73-B726-0ABA1E47DAA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightFingers_Control_scaleX";
	rename -uid "5809B82F-FB44-E52C-95D6-0D87B789ADCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightFingers_Control_scaleY";
	rename -uid "03EC40CD-634B-BD58-9975-EFACAB7E61DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightFingers_Control_scaleZ";
	rename -uid "A6971261-AE4B-1A80-6D48-9C9A39CDB535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "DE8AABF2-F843-2FA5-3F33-F9B22EE6E63A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "D2341B72-1949-9BB6-94DB-BC9AEF6A09EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "CBAC64F8-A543-7AA6-24C7-43916C03D5B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "743FB76F-FD45-6950-4880-5698602C1F18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "D99595F9-B045-A0BA-1D57-9D9C1C0BA06B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "43F98336-9A41-01F2-B7BB-CE93217AD1AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "D42262B2-BF4E-99D7-FA1C-E68BEA5DCB3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "C62966A5-1A45-41AA-B721-C183D7C98E3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "FBD3D017-FF44-F3F2-16F8-AFA1611E74D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "98FB9D0E-F849-3429-F262-279B590277C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "40C9EDA1-F649-61B4-E643-D9B3AF63849F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Root_Control_translateX";
	rename -uid "33A1E0D2-BE4D-5CC3-E1C3-28A3EDB38D81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "FDD3E578-5944-D57A-EAAF-C1BA778CAAF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "3EF7D467-1747-B876-F94E-669EDF236AE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "0D17BB78-5D40-A587-F4D7-11912F121B16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "CD77E1A4-2042-61FD-B6DA-FD9EF5AD6D0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "E46AFBAD-3B4E-0F72-2C8D-3FBD8B6D2915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "38216834-0F4A-1913-4C46-998BF998AC7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "536FE00A-694C-B4F7-E361-DD9E916E10C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "9334C91B-1848-6E21-9864-BB9329B137E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "BA209B2F-A14C-3B94-83CE-E398B1A235E2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "C7F5E054-F640-9F8C-1159-27B68771D81A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "7BB0E6BA-C440-EC22-ECE8-31A85EC5D638";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "B6E2AC3A-D943-FBF8-D025-629383697678";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "16FBC345-874E-1B61-48A5-979F649FA596";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "0354227B-4343-4553-26A1-B689080E5A03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "AD636ECB-4C41-60B7-8F7A-3387DD93134A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "A240DF3D-4044-2EA9-8229-EFA28CA2588C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "E51FC3A2-A14E-C53A-203B-3FB257D5A670";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "E323E452-744F-9EA8-A743-34A4F8E8BA6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "A0016F9E-7249-5BD9-1916-F8B06F309D37";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "C0097DD8-1848-9957-6C4A-58934D0835BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "9D118B1A-AA40-9371-005B-DEA900543B27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "0923E345-D44E-E7CA-A977-42B95D78B494";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "5008D0A5-B14B-2879-5BD3-948C992C2AFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 -22.611318828959856 16 -23.84017907089763
		 20 -24.716199919911922 24 -21.930238077256 28 -23.07590825241002 32 -22.717110470122332
		 36 -22.56038874213376;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "D41003E7-864E-7125-927F-25855B270A29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1.2994511006939753 16 -3.8693989665480308
		 20 -12.580691606093747 24 -0.23870265069033675 28 3.555242956620885 32 7.6852998573401532
		 36 2.1587150672650397;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "53643A63-594F-B1B6-E058-9DBFA962905E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 -0.47661605315570177 16 2.1072110298729316
		 20 2.827699807829851 24 -5.3594063188698842 28 -4.2831528047703253 32 -4.0684317504830396
		 36 0.14776397186936382;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  1;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[6]"  1;
	setAttr -s 7 ".koy[6]"  0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "82957236-B146-4E07-0C9C-F4A48EC4F05F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "5A95F6C2-4448-BC3D-CB86-F091EE3A2EDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "DD1B8568-1D4F-C9CA-7ACD-0EA1E6D9A770";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "39EA6F83-6E46-16F2-D289-E3BF67FBE9D8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "97DF7195-0B4D-8C29-495A-EE8C8EE8413C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "31613EC6-BA49-7FE5-B89E-81A10880CFAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "305D5EE1-AD4A-E614-AF2C-F1A6CC435A94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "9D7F39B0-9040-E8A1-DD45-56B67433DBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -8.3349879253964954 36 -8.3349879253964954;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "6A2A04F8-3142-2BDA-EEA7-158B1F28386D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 27.041531712230793 36 27.041531712230793;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "E601C20B-A446-ECA0-9DCB-94B2502185C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -19.318672787610197 36 -19.318672787610197;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "1D31CBD4-5E43-315A-5B31-09ACCAFB0992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "DD06D147-004E-47F4-40BF-F5BF620D464D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "0B56B6FB-2C48-DDFD-5560-98AAEA9991DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightBackAttach_Control_visibility";
	rename -uid "0971B18E-BF47-986C-3C50-D8BFC5CE6D3E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "RightBackAttach_Control_translateX";
	rename -uid "56AF4CD3-894B-B6F9-A4A0-E9A7179D1EBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightBackAttach_Control_translateY";
	rename -uid "C9CA1F26-E642-3B43-11DC-C0A3967D24A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "RightBackAttach_Control_translateZ";
	rename -uid "A4012804-0F4A-F3E0-72A3-9C80097DECC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightBackAttach_Control_rotateX";
	rename -uid "FA618744-6149-5A6C-4F94-3D9411215EDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightBackAttach_Control_rotateY";
	rename -uid "3D16EA84-FD48-6177-5AB1-29858935868F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "RightBackAttach_Control_rotateZ";
	rename -uid "7A8293D5-9540-A694-CA54-988AAAC81CE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightBackAttach_Control_scaleX";
	rename -uid "798DF55B-0A4F-5202-6BA9-CF978065E896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightBackAttach_Control_scaleY";
	rename -uid "E8BDE241-0E4D-7327-FB2E-6C8F6B95D2E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightBackAttach_Control_scaleZ";
	rename -uid "E2C96A76-D34B-DB46-6EA6-6C93B754FC3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftBackAttach_Control_visibility";
	rename -uid "3237B134-F448-6795-0F88-C79865D56780";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftBackAttach_Control_translateX";
	rename -uid "9F93F3EF-C04B-675C-8BA5-B6B9AA69AF8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftBackAttach_Control_translateY";
	rename -uid "E901D850-D242-93DF-1E61-EE86E471B860";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftBackAttach_Control_translateZ";
	rename -uid "1C315C22-824C-2F3D-25FB-DFA6DFA98F80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateX";
	rename -uid "ED0257D4-D34C-184E-120C-A6BCDB36607D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateY";
	rename -uid "D31F41AF-0C4B-E074-7029-718225AEB2DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateZ";
	rename -uid "E495EF3A-1544-06C3-713C-5B86BF50C988";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleX";
	rename -uid "20F3C6B6-5945-2B92-8661-C19DD7750518";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleY";
	rename -uid "7A05C227-6448-C171-1C21-EE94BB78F1AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleZ";
	rename -uid "DE52162E-9147-0E63-3FDD-DBA0CB55A9BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "F609A54C-7F42-CF01-7752-77985A9486D8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "6D1FB2DC-5D4A-FF68-950F-109544E4C41B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "F18F9E57-514D-E320-5042-A2A50FAF9F1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "85D3AC97-374A-74F8-A016-15AE01FC9CB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "72A7D374-F747-8F52-23E2-6CA4CC444874";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "0A67578E-8A47-9327-D530-71A88B66FBC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -23.48073951411698 36 -23.48073951411698;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "57BFB51E-804C-0282-0F8D-1DACC0FF177B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "7C954FDA-5F44-7C9C-EA2C-368FB87CB87D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "CF2F7117-124B-5ACD-B57E-44875EC3CA13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "18A3027D-4F43-7421-E200-8884DD726724";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "BE8683D3-114E-87F7-9933-FF9B860ACC49";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "07FA9E0C-7844-8D64-34D0-4485986B1FF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 36 0 48 0 60 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "E86E8634-AA47-7783-DE83-A5BD1E68DF12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 36 0 48 0 60 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "E1FB6087-A747-EE2F-388F-8981009D1876";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 36 0 48 0 60 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "FC18271A-8F47-7421-2F08-DC87E00DF996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 18 -30.592899788401727 20 -61.110641535501308
		 24 7.210462235055104 36 0 42 -30.592899788401727 44 -61.110641535501308 48 7.210462235055104
		 60 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "10492935-6F4D-DBB6-2B4B-20A00A84766E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 36 0 48 0 60 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "15DDEDFB-0B41-9F0C-D78A-6E9665ED276E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 36 0 48 0 60 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "9046430F-9E45-2062-286D-B7B2300E96D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "4CEA31BC-7E41-3E9F-40D1-99A4CA2B5851";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "F9F0EA6D-1941-CD25-94C8-3C9A65D8B91C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "ABB29A7E-1C4C-570B-89F1-6BA95CCEA1FB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "79DCCD01-094B-D06B-780C-0D9D9740CD2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "A2A028F4-AA44-34FE-8A92-6B8753A282C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "F7FC2E02-454E-390D-5BA0-CC82811F2EA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "8B012606-8D44-11CA-723B-8EAD5BFED14C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "8A74C7E3-9C4A-FAB2-A847-8E9D36104E38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "98E343E5-A140-95AF-BB2A-BE919D1175F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "BB24E71C-3E4E-D2D5-7D17-EFA7FA8BE81F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "488050BC-5241-A9DC-3D05-899E4BB5CCB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "1592E297-B047-B641-ED31-ED9E595EE346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTU -n "Magazine_visibility";
	rename -uid "BB0C1353-DD4B-033F-FE16-5790C0C4E7A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Magazine_translateX";
	rename -uid "6D749D98-4242-891A-D7AF-679BA70F1649";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTL -n "Magazine_translateY";
	rename -uid "8002BC99-D04D-6CA3-E848-019A7295D673";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTL -n "Magazine_translateZ";
	rename -uid "A43B5BD7-FA4B-FDFA-0C18-ACAE9D203460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTA -n "Magazine_rotateX";
	rename -uid "C89F901D-5147-8343-E553-C1B62E45B141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTA -n "Magazine_rotateY";
	rename -uid "FE3EB699-CF45-F234-1844-829006E1D231";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTA -n "Magazine_rotateZ";
	rename -uid "63D3F92D-8146-BC96-36C7-1690F857A570";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTU -n "Magazine_scaleX";
	rename -uid "F5B8E0E6-174E-FD73-5507-5AAAA4FFE608";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Magazine_scaleY";
	rename -uid "07241DB0-B74B-CD85-97A8-B6936334C42E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Magazine_scaleZ";
	rename -uid "6FD3A3B1-1347-45F9-6639-EF8BE1836DF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "AssaultRifle_visibility";
	rename -uid "90AEF309-374F-474C-2010-C7BFF896B9B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "AssaultRifle_scaleX";
	rename -uid "E93D1917-8948-A534-D143-3880FC53C6D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "AssaultRifle_scaleY";
	rename -uid "A20828F7-DE45-8B9B-A921-01B713AD5D0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "AssaultRifle_scaleZ";
	rename -uid "C25AD77E-B340-43F9-0F15-208E3226227C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Muzzle_visibility";
	rename -uid "D5700745-4D45-9DF9-9987-77AE892994AD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Muzzle_translateX";
	rename -uid "CB5DD530-174B-06CE-11B7-F5B9B84703A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTL -n "Muzzle_translateY";
	rename -uid "08ADF5A3-9640-0B68-5C30-0BB8AE2DCAC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTL -n "Muzzle_translateZ";
	rename -uid "AC6976DA-014E-3AB5-4A45-14B4E0026971";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTA -n "Muzzle_rotateX";
	rename -uid "F5B21FDE-F74F-F487-8507-F59E90066F88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTA -n "Muzzle_rotateY";
	rename -uid "C88EBF06-8D49-6CCE-2AFD-3D8CD922066A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTA -n "Muzzle_rotateZ";
	rename -uid "0BBBA0BF-894E-E1CA-6AA6-E894589EECA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTU -n "Muzzle_scaleX";
	rename -uid "73B794D5-6D4A-7FF3-BA5B-B4A48E96E747";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Muzzle_scaleY";
	rename -uid "FEBEB8A9-664E-A6FA-4E39-B5ACD1415CB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Muzzle_scaleZ";
	rename -uid "71FD1BA8-1A4A-D5A5-CF56-ACA8D019FA04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "AssaultRifle_blendParent1";
	rename -uid "7383E231-3D48-297E-4F5B-20AECC9948A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "449D5DB7-CC48-2EBC-1D66-D18D878830CB";
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "6A55415F-5247-2322-9D2E-AEB48E7D4354";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -15.637348692925158;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "71E29B69-8146-39B9-9D2D-E8BF2C88284F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 128.73065245346501;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "BAFA10C3-5F40-09E7-5781-46B629EF7456";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 70.534248759165678;
createNode pairBlend -n "pairBlend2";
	rename -uid "A4AB9921-0A46-0476-1729-589E12B32BF3";
createNode animCurveTL -n "pairBlend2_inTranslateX1";
	rename -uid "5FF3BAFE-5643-9DCD-FDED-95B2E7B9E6A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -23.495191812786082 36 -23.495191812786082;
createNode animCurveTL -n "pairBlend2_inTranslateY1";
	rename -uid "49F7F6A5-D946-A65F-180E-6BA8C8FC87FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 53.542873244254508 36 53.542873244254508;
createNode animCurveTL -n "pairBlend2_inTranslateZ1";
	rename -uid "2DB128F8-054A-B5D9-CD7C-8EA07DC06031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 22.6134017373086 36 22.6134017373086;
createNode animCurveTA -n "pairBlend2_inRotateX1";
	rename -uid "ED892F46-EE42-297C-BDA9-0CBE0EF8FF7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -58.768924093918997 36 -58.768924093918997;
createNode animCurveTA -n "pairBlend2_inRotateY1";
	rename -uid "C2664B92-F345-1605-3F74-488B3A5053D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -12.064136976421473 36 -12.064136976421473;
createNode animCurveTA -n "pairBlend2_inRotateZ1";
	rename -uid "EF53E33F-E54F-C7E5-8B02-E0A8751436C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 -46.548718510442519 36 -46.548718510442519;
createNode animCurveTU -n "LeftHand_Control_blendParent2";
	rename -uid "CE7F84DF-C144-D7C3-8B9E-BD91B10067FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTA -n "pairBlend1_inRotateX1";
	rename -uid "BD6AC6DC-DB47-8CA0-705C-2D8D03554DC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 9.1738823273710626;
createNode animCurveTA -n "pairBlend1_inRotateY1";
	rename -uid "82D187A0-3449-8041-DD09-C68B4061FB2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 64.652207136989446;
createNode animCurveTA -n "pairBlend1_inRotateZ1";
	rename -uid "8680AEB7-C643-94D0-C005-03BF7310A904";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.607765494825632;
createNode animCurveTU -n "AssaultRifle_blendParent2";
	rename -uid "58AA571D-A945-05EE-A9CF-D8AE4D99B1D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "D4BD7C6C-9A48-B6A1-4225-F283C7775D22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[1:4]"  9 18 9 1;
	setAttr -s 5 ".kot[1:4]"  5 18 5 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "B2CB13B6-3148-D40B-4BBB-26AA143E8AD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 0 14 8.3249868071036843 16 11.997458348141677
		 18 13.364673193111686 24 8.1419017156150204 36 0 48 0 60 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "9C182BDE-C142-FAF8-947B-3B8484C20E3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  12 21.814668246975494 14 5.0591899944732344
		 16 0 18 7.3677122873517789 20 9.8816404052309785 24 46.94250720309806 28 55.865442566544218
		 32 46.845011797091828 36 21.814668246975494 38 5.0591899944732344 40 0 42 7.3677122873517789
		 44 9.8816404052309785 48 46.94250720309806 52 55.865442566544218 56 46.845011797091828
		 60 21.814668246975494;
	setAttr -s 17 ".kit[16]"  1;
	setAttr -s 17 ".kot[16]"  1;
	setAttr -s 17 ".kix[16]"  1;
	setAttr -s 17 ".kiy[16]"  0;
	setAttr -s 17 ".kox[16]"  1;
	setAttr -s 17 ".koy[16]"  0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "E1122062-0344-7EE2-98FE-BE860F5377F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  12 31.390843360170315 14 40.055841314885683
		 16 40.923313764248384 18 8.479534741297023 20 -25.91117500856674 24 -29.806670228675397
		 28 -16.800867235143791 32 6.2604651715161381 36 31.390843360170315 38 40.055841314885683
		 40 40.923313764248384 42 8.479534741297023 44 -25.91117500856674 48 -29.806670228675397
		 52 -16.800867235143791 56 6.2604651715161381 60 31.390843360170315;
	setAttr -s 17 ".kit[16]"  1;
	setAttr -s 17 ".kot[16]"  1;
	setAttr -s 17 ".kix[16]"  1;
	setAttr -s 17 ".kiy[16]"  0;
	setAttr -s 17 ".kox[16]"  1;
	setAttr -s 17 ".koy[16]"  0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "B28BB615-5945-DDD7-B56B-B7A4584CE1DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  12 -12.942112496024654 14 -22.957409694996979
		 16 0 18 32.600534104716175 24 117.75352572260475 28 124.9749744405504 32 83.28038216867408
		 36 -12.942112496024654 38 -28.709798100926811 40 0 48 117.75352572260475 52 124.9749744405504
		 56 83.28038216867408 60 -12.942112496024654;
	setAttr -s 14 ".kit[13]"  1;
	setAttr -s 14 ".kot[13]"  1;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
	setAttr -s 14 ".kox[13]"  1;
	setAttr -s 14 ".koy[13]"  0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "CFC8E2E7-6B45-2E64-11C0-798A74DB5F97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 0 14 -11.691630573262811 16 -6.0006963466503258
		 18 -9.2937443762706042 24 0 36 0 48 0 60 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  1;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[7]"  1;
	setAttr -s 8 ".koy[7]"  0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "2EF20D04-C647-BD81-C46B-C2B408452255";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 14 4.2287575982090786 16 5.6335250221034245
		 18 4.632314273934643 20 1.3725592538452702 24 -22.396143373515692 36 0 48 0 60 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "B9F77F22-8B45-8A22-51F0-67A06BBA8DC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "6EE3B540-294E-40A3-C499-CC88982F4B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "3FA885EB-EE43-CAE1-2F51-7499016751DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 36 1 48 1 60 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "Heading_Control_translateX";
	rename -uid "D5788475-D644-8A0E-A7FD-9EA4324E86EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 0 36 0;
createNode animCurveTL -n "Heading_Control_translateY";
	rename -uid "026F611A-C745-2D05-C4E0-9F82624ACCF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 11.698936139044699 15 -3.2376272438290439
		 18 -8.4272837450118825 21 4.0725529174390918 24 11.698936139044699 27 -3.2376272438290439
		 30 -8.4272837450118825 33 4.0725529174390918 36 11.698936139044699;
	setAttr -s 9 ".kit[0:8]"  1 1 18 18 18 18 1 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 1 18 18 18 18 1 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 0.012420649114971918 1 0.012420649114971918 
		1 0.012420649114971918 1 0.012420649114971918 1;
	setAttr -s 9 ".kiy[0:8]"  0 -0.99992286076255033 0 0.99992286076255033 
		0 -0.99992286076255033 0 0.99992286076255033 0;
	setAttr -s 9 ".kox[0:8]"  1 0.012420649114971918 1 0.012420649114971918 
		1 0.012420649114971918 1 0.012420649114971918 1;
	setAttr -s 9 ".koy[0:8]"  0 -0.99992286076255033 0 0.99992286076255033 
		0 -0.99992286076255033 0 0.99992286076255033 0;
createNode animCurveTL -n "Heading_Control_translateZ";
	rename -uid "341ACB20-D04F-669D-DBDE-B28CC9110FD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 9.6901179793100276 15 17.680789105578466
		 18 1.3041930276197853 21 -2.6903956535485971 24 9.6901179793100276 27 17.680789105578466
		 30 1.3041930276197853 33 -6.1991327545641219 36 9.6901179793100276;
	setAttr -s 9 ".kit[0:8]"  1 1 18 18 18 18 1 18 
		1;
	setAttr -s 9 ".kot[0:8]"  1 1 18 18 18 18 1 18 
		1;
	setAttr -s 9 ".kix[0:8]"  1 1 0.012271312597084839 1 0.012271312597084839 
		1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.99992470460887439 0 0.99992470460887439 
		0 0 0 0;
	setAttr -s 9 ".kox[0:8]"  1 1 0.012271312597084839 1 0.012271312597084839 
		1 1 1 1;
	setAttr -s 9 ".koy[0:8]"  0 0 -0.99992470460887439 0 0.99992470460887439 
		0 0 0 0;
createNode animCurveTU -n "Heading_Control_visibility";
	rename -uid "BA8F06FB-EB41-D067-CB83-C1B0183DAD30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Heading_Control_rotateY";
	rename -uid "52CFB0A6-1042-CA8B-BBF4-1E8DAE5222D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 9.7881820711735585 21 -6.4020844312268261
		 24 -14.5054418866068 33 0 36 9.7881820711735585;
	setAttr -s 5 ".kit[3:4]"  1 18;
	setAttr -s 5 ".kot[3:4]"  1 18;
	setAttr -s 5 ".kix[3:4]"  0.51229331121771893 1;
	setAttr -s 5 ".kiy[3:4]"  0.85881055144984397 0;
	setAttr -s 5 ".kox[3:4]"  0.51229322925497423 1;
	setAttr -s 5 ".koy[3:4]"  0.85881060034183931 0;
createNode animCurveTU -n "Heading_Control_scaleX";
	rename -uid "8667DB89-064A-D368-B1D2-C19DA7BAEF01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Heading_Control_scaleY";
	rename -uid "36F160B1-8944-C63B-87E8-F3BFFE297C64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "Heading_Control_scaleZ";
	rename -uid "D0A9C959-2F40-0E08-F44A-E498478098A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  12 1 36 1;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "1629D876-C046-B587-B939-11B9E2286E14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[1:4]"  9 18 1 1;
	setAttr -s 5 ".kot[1:4]"  5 18 5 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "1C94582C-F34D-6346-266E-679A675AA095";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 12 -14.539110206455391 24 0 28 -6.6772209837054746
		 30 -7.8602064553649811 36 -14.539110206455391 48 0;
	setAttr -s 7 ".kit[5:6]"  1 1;
	setAttr -s 7 ".kot[5:6]"  1 1;
	setAttr -s 7 ".kix[5:6]"  1 1;
	setAttr -s 7 ".kiy[5:6]"  0 0;
	setAttr -s 7 ".kox[5:6]"  1 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "E63D9342-F840-68B7-52BD-7CA3318B20A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 21.814668246975494 2 5.0591899944732344
		 4 0 6 7.3677122873517789 8 9.8816404052309785 12 46.94250720309806 16 55.865442566544218
		 20 46.845011797091828 24 21.814668246975494 26 5.0591899944732344 28 0 30 7.3677122873517789
		 32 9.8816404052309785 36 46.94250720309806 40 55.865442566544218 44 46.845011797091828
		 48 21.814668246975494;
	setAttr -s 17 ".kit[13:16]"  1 18 18 1;
	setAttr -s 17 ".kot[13:16]"  1 18 18 1;
	setAttr -s 17 ".kix[13:16]"  0.007248738907663259 1 0.00978883356989463 
		1;
	setAttr -s 17 ".kiy[13:16]"  0.99997372754700342 0 -0.99995208822090109 
		0;
	setAttr -s 17 ".kox[13:16]"  0.0072487389076632582 1 0.00978883356989463 
		1;
	setAttr -s 17 ".koy[13:16]"  0.9999737275470032 0 -0.99995208822090109 
		0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "EDE1D6DB-874C-69D7-80F8-81B2D30945E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 31.390843360170315 2 40.055841314885683
		 4 40.923313764248384 6 8.479534741297023 8 -25.91117500856674 12 -29.806670228675397
		 16 -16.800867235143791 20 6.2604651715161381 24 31.390843360170315 26 40.055841314885683
		 28 40.923313764248384 30 8.479534741297023 32 -25.91117500856674 36 -29.806670228675397
		 40 -16.800867235143791 44 6.2604651715161381 48 31.390843360170315;
	setAttr -s 17 ".kit[13:16]"  1 18 18 1;
	setAttr -s 17 ".kot[13:16]"  1 18 18 1;
	setAttr -s 17 ".kix[13:16]"  1 0.0092416293867535679 0.0069166534196711477 
		1;
	setAttr -s 17 ".kiy[13:16]"  0 0.99995729523129029 0.99997607966664492 
		0;
	setAttr -s 17 ".kox[13:16]"  1 0.0092416293867535679 0.0069166534196711477 
		1;
	setAttr -s 17 ".koy[13:16]"  0 0.99995729523129029 0.99997607966664492 
		0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "5A39732A-C247-AC68-5B4B-F095125F026F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -12.942112496024654 2 -28.709798100926811
		 4 0 12 117.75352572260475 16 124.9749744405504 20 83.28038216867408 24 -11.878058397361629
		 26 -29.14116494292886 28 0 32 67.992945435064584 36 117.75352572260475 40 124.9749744405504
		 44 83.28038216867408 48 -12.942112496024654;
	setAttr -s 14 ".kit[10:13]"  1 18 18 1;
	setAttr -s 14 ".kot[10:13]"  1 18 18 1;
	setAttr -s 14 ".kix[10:13]"  0.40333954574760428 1 0.13716983852345227 
		1;
	setAttr -s 14 ".kiy[10:13]"  0.91505038704768393 0 -0.99054754323023286 
		0;
	setAttr -s 14 ".kox[10:13]"  0.40333954574760433 1 0.1371698385234523 
		1;
	setAttr -s 14 ".koy[10:13]"  0.91505038704768393 0 -0.99054754323023286 
		0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "819564CA-5F45-C54D-F31F-6CB3F1177474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 12 0 24 7.3218660019532216 26 10.165549386069031
		 28 7.5954505617869374 32 5.6902739197809735 36 0 48 0;
	setAttr -s 8 ".kit[6:7]"  1 1;
	setAttr -s 8 ".kot[6:7]"  1 1;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "96F8C506-B242-0E62-68A5-E5A2EB5EE828";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 12 23.632397620130018 24 -4.7887149345913365
		 26 -4.9262854294740359 30 -2.3173048915760681 32 -4.44003206914741 36 23.632397620130018
		 48 0;
	setAttr -s 8 ".kit[6:7]"  1 1;
	setAttr -s 8 ".kot[6:7]"  1 1;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "896D2DEC-8845-BE47-0720-7C9238D6088C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "52386A5F-1A46-7342-E4F8-FC83FC4D946A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "E073EB40-1148-EF63-1F8E-8D81C6785BCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[3:4]"  1 1;
	setAttr -s 5 ".kot[3:4]"  1 1;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "8EE664E6-5D44-DEEC-B245-6882E8726248";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "D41FF159-964F-0C2B-5565-EC8056E2E3C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "EFE2A426-FB49-EE60-4694-3F92D9C925DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "990A6948-9445-3F82-273B-1E905295AD8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "0ADB82BB-A14C-2DD7-D45A-6D9CC500DF9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 6 -30.592899788401727 8 -61.110641535501308
		 12 7.210462235055104 24 0 30 -30.592899788401727 32 -61.110641535501308 36 7.210462235055104
		 48 0;
	setAttr -s 9 ".kit[8]"  1;
	setAttr -s 9 ".kot[8]"  1;
	setAttr -s 9 ".kix[8]"  1;
	setAttr -s 9 ".kiy[8]"  0;
	setAttr -s 9 ".kox[8]"  1;
	setAttr -s 9 ".koy[8]"  0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "C21D0B35-3D46-1713-877F-F3BE07F38246";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "358C3DF8-864E-0DAD-85E1-4783E5854611";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 12 0 24 0 36 0 48 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "A596B091-0E43-DD81-5FF8-B1BBE122822D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "C75790CB-3E4B-153A-A869-64B99657EE79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "DDD26DD9-8D49-6F95-2419-598AF9755994";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 24 1 36 1 48 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 24;
	setAttr -av ".unw" 24;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr -k on ".mbsof";
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
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
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
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
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
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
	setAttr -av ".gsn";
	setAttr -k on ".gsv";
connectAttr "Root_Control_visibility.o" "Combot_RigRN.phl[1]";
connectAttr "Root_Control_translateX.o" "Combot_RigRN.phl[2]";
connectAttr "Root_Control_translateY.o" "Combot_RigRN.phl[3]";
connectAttr "Root_Control_translateZ.o" "Combot_RigRN.phl[4]";
connectAttr "Root_Control_rotateX.o" "Combot_RigRN.phl[5]";
connectAttr "Root_Control_rotateY.o" "Combot_RigRN.phl[6]";
connectAttr "Root_Control_rotateZ.o" "Combot_RigRN.phl[7]";
connectAttr "Root_Control_scaleX.o" "Combot_RigRN.phl[8]";
connectAttr "Root_Control_scaleY.o" "Combot_RigRN.phl[9]";
connectAttr "Root_Control_scaleZ.o" "Combot_RigRN.phl[10]";
connectAttr "RootMotion_Control_visibility.o" "Combot_RigRN.phl[11]";
connectAttr "RootMotion_Control_translateX.o" "Combot_RigRN.phl[12]";
connectAttr "RootMotion_Control_translateY.o" "Combot_RigRN.phl[13]";
connectAttr "RootMotion_Control_translateZ.o" "Combot_RigRN.phl[14]";
connectAttr "RootMotion_Control_rotateX.o" "Combot_RigRN.phl[15]";
connectAttr "RootMotion_Control_rotateY.o" "Combot_RigRN.phl[16]";
connectAttr "RootMotion_Control_rotateZ.o" "Combot_RigRN.phl[17]";
connectAttr "RootMotion_Control_scaleX.o" "Combot_RigRN.phl[18]";
connectAttr "RootMotion_Control_scaleY.o" "Combot_RigRN.phl[19]";
connectAttr "RootMotion_Control_scaleZ.o" "Combot_RigRN.phl[20]";
connectAttr "Heading_Control_rotateY.o" "Combot_RigRN.phl[21]";
connectAttr "Heading_Control_visibility.o" "Combot_RigRN.phl[22]";
connectAttr "Heading_Control_translateX.o" "Combot_RigRN.phl[23]";
connectAttr "Heading_Control_translateY.o" "Combot_RigRN.phl[24]";
connectAttr "Heading_Control_translateZ.o" "Combot_RigRN.phl[25]";
connectAttr "Heading_Control_scaleX.o" "Combot_RigRN.phl[26]";
connectAttr "Heading_Control_scaleY.o" "Combot_RigRN.phl[27]";
connectAttr "Heading_Control_scaleZ.o" "Combot_RigRN.phl[28]";
connectAttr "Hips_Control_rotateX.o" "Combot_RigRN.phl[29]";
connectAttr "Hips_Control_rotateZ.o" "Combot_RigRN.phl[30]";
connectAttr "Hips_Control_scaleX.o" "Combot_RigRN.phl[31]";
connectAttr "Hips_Control_scaleY.o" "Combot_RigRN.phl[32]";
connectAttr "Hips_Control_scaleZ.o" "Combot_RigRN.phl[33]";
connectAttr "Hips_Control_visibility.o" "Combot_RigRN.phl[34]";
connectAttr "Combot_RigRN.phl[35]" "AssaultRifle_parentConstraint1.tg[0].tr";
connectAttr "RightHand_Control_rotateX.o" "Combot_RigRN.phl[36]";
connectAttr "RightHand_Control_rotateY.o" "Combot_RigRN.phl[37]";
connectAttr "RightHand_Control_rotateZ.o" "Combot_RigRN.phl[38]";
connectAttr "Combot_RigRN.phl[39]" "AssaultRifle_parentConstraint1.tg[0].tro";
connectAttr "Combot_RigRN.phl[40]" "AssaultRifle_parentConstraint1.tg[0].tpm";
connectAttr "RightHand_Control_visibility.o" "Combot_RigRN.phl[41]";
connectAttr "Combot_RigRN.phl[42]" "AssaultRifle_parentConstraint1.tg[0].tt";
connectAttr "RightHand_Control_translateX.o" "Combot_RigRN.phl[43]";
connectAttr "RightHand_Control_translateY.o" "Combot_RigRN.phl[44]";
connectAttr "RightHand_Control_translateZ.o" "Combot_RigRN.phl[45]";
connectAttr "Combot_RigRN.phl[46]" "AssaultRifle_parentConstraint1.tg[0].ts";
connectAttr "RightHand_Control_scaleX.o" "Combot_RigRN.phl[47]";
connectAttr "RightHand_Control_scaleY.o" "Combot_RigRN.phl[48]";
connectAttr "RightHand_Control_scaleZ.o" "Combot_RigRN.phl[49]";
connectAttr "Combot_RigRN.phl[50]" "AssaultRifle_parentConstraint1.tg[0].trp";
connectAttr "Combot_RigRN.phl[51]" "AssaultRifle_parentConstraint1.tg[0].trt";
connectAttr "RightFingers_Control_rotateX.o" "Combot_RigRN.phl[52]";
connectAttr "RightFingers_Control_rotateY.o" "Combot_RigRN.phl[53]";
connectAttr "RightFingers_Control_rotateZ.o" "Combot_RigRN.phl[54]";
connectAttr "RightFingers_Control_visibility.o" "Combot_RigRN.phl[55]";
connectAttr "RightFingers_Control_translateX.o" "Combot_RigRN.phl[56]";
connectAttr "RightFingers_Control_translateY.o" "Combot_RigRN.phl[57]";
connectAttr "RightFingers_Control_translateZ.o" "Combot_RigRN.phl[58]";
connectAttr "RightFingers_Control_scaleX.o" "Combot_RigRN.phl[59]";
connectAttr "RightFingers_Control_scaleY.o" "Combot_RigRN.phl[60]";
connectAttr "RightFingers_Control_scaleZ.o" "Combot_RigRN.phl[61]";
connectAttr "LeftElbow_Control_translateX.o" "Combot_RigRN.phl[62]";
connectAttr "LeftElbow_Control_translateY.o" "Combot_RigRN.phl[63]";
connectAttr "LeftElbow_Control_translateZ.o" "Combot_RigRN.phl[64]";
connectAttr "LeftElbow_Control_visibility.o" "Combot_RigRN.phl[65]";
connectAttr "LeftElbow_Control_rotateX.o" "Combot_RigRN.phl[66]";
connectAttr "LeftElbow_Control_rotateY.o" "Combot_RigRN.phl[67]";
connectAttr "LeftElbow_Control_rotateZ.o" "Combot_RigRN.phl[68]";
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
connectAttr "Combot_RigRN.phl[85]" "LeftHand_Control_parentConstraint2.cro";
connectAttr "Combot_RigRN.phl[86]" "pairBlend2.w";
connectAttr "LeftHand_Control_blendParent2.o" "Combot_RigRN.phl[87]";
connectAttr "LeftHand_Control_visibility.o" "Combot_RigRN.phl[88]";
connectAttr "pairBlend2.otx" "Combot_RigRN.phl[89]";
connectAttr "pairBlend2.oty" "Combot_RigRN.phl[90]";
connectAttr "pairBlend2.otz" "Combot_RigRN.phl[91]";
connectAttr "LeftHand_Control_scaleX.o" "Combot_RigRN.phl[92]";
connectAttr "LeftHand_Control_scaleY.o" "Combot_RigRN.phl[93]";
connectAttr "LeftHand_Control_scaleZ.o" "Combot_RigRN.phl[94]";
connectAttr "Combot_RigRN.phl[95]" "LeftHand_Control_parentConstraint2.cpim";
connectAttr "Combot_RigRN.phl[96]" "LeftHand_Control_parentConstraint2.crp";
connectAttr "Combot_RigRN.phl[97]" "LeftHand_Control_parentConstraint2.crt";
connectAttr "LeftFingers_Control_rotateX.o" "Combot_RigRN.phl[98]";
connectAttr "LeftFingers_Control_rotateY.o" "Combot_RigRN.phl[99]";
connectAttr "LeftFingers_Control_rotateZ.o" "Combot_RigRN.phl[100]";
connectAttr "LeftFingers_Control_visibility.o" "Combot_RigRN.phl[101]";
connectAttr "LeftFingers_Control_translateX.o" "Combot_RigRN.phl[102]";
connectAttr "LeftFingers_Control_translateY.o" "Combot_RigRN.phl[103]";
connectAttr "LeftFingers_Control_translateZ.o" "Combot_RigRN.phl[104]";
connectAttr "LeftFingers_Control_scaleX.o" "Combot_RigRN.phl[105]";
connectAttr "LeftFingers_Control_scaleY.o" "Combot_RigRN.phl[106]";
connectAttr "LeftFingers_Control_scaleZ.o" "Combot_RigRN.phl[107]";
connectAttr "RightElbow_Control_translateX.o" "Combot_RigRN.phl[108]";
connectAttr "RightElbow_Control_translateY.o" "Combot_RigRN.phl[109]";
connectAttr "RightElbow_Control_translateZ.o" "Combot_RigRN.phl[110]";
connectAttr "RightElbow_Control_visibility.o" "Combot_RigRN.phl[111]";
connectAttr "RightElbow_Control_rotateX.o" "Combot_RigRN.phl[112]";
connectAttr "RightElbow_Control_rotateY.o" "Combot_RigRN.phl[113]";
connectAttr "RightElbow_Control_rotateZ.o" "Combot_RigRN.phl[114]";
connectAttr "RightElbow_Control_scaleX.o" "Combot_RigRN.phl[115]";
connectAttr "RightElbow_Control_scaleY.o" "Combot_RigRN.phl[116]";
connectAttr "RightElbow_Control_scaleZ.o" "Combot_RigRN.phl[117]";
connectAttr "LeftHandAttach_Control_translateX.o" "Combot_RigRN.phl[118]";
connectAttr "LeftHandAttach_Control_translateY.o" "Combot_RigRN.phl[119]";
connectAttr "LeftHandAttach_Control_translateZ.o" "Combot_RigRN.phl[120]";
connectAttr "LeftHandAttach_Control_rotateX.o" "Combot_RigRN.phl[121]";
connectAttr "LeftHandAttach_Control_rotateY.o" "Combot_RigRN.phl[122]";
connectAttr "LeftHandAttach_Control_rotateZ.o" "Combot_RigRN.phl[123]";
connectAttr "LeftHandAttach_Control_scaleX.o" "Combot_RigRN.phl[124]";
connectAttr "LeftHandAttach_Control_scaleY.o" "Combot_RigRN.phl[125]";
connectAttr "LeftHandAttach_Control_scaleZ.o" "Combot_RigRN.phl[126]";
connectAttr "LeftHandAttach_Control_visibility.o" "Combot_RigRN.phl[127]";
connectAttr "Spine_Control_rotateX.o" "Combot_RigRN.phl[128]";
connectAttr "Spine_Control_rotateY.o" "Combot_RigRN.phl[129]";
connectAttr "Spine_Control_rotateZ.o" "Combot_RigRN.phl[130]";
connectAttr "Spine_Control_visibility.o" "Combot_RigRN.phl[131]";
connectAttr "Spine_Control_translateX.o" "Combot_RigRN.phl[132]";
connectAttr "Spine_Control_translateY.o" "Combot_RigRN.phl[133]";
connectAttr "Spine_Control_translateZ.o" "Combot_RigRN.phl[134]";
connectAttr "Spine_Control_scaleX.o" "Combot_RigRN.phl[135]";
connectAttr "Spine_Control_scaleY.o" "Combot_RigRN.phl[136]";
connectAttr "Spine_Control_scaleZ.o" "Combot_RigRN.phl[137]";
connectAttr "Torso_Control_rotateX.o" "Combot_RigRN.phl[138]";
connectAttr "Torso_Control_rotateY.o" "Combot_RigRN.phl[139]";
connectAttr "Torso_Control_rotateZ.o" "Combot_RigRN.phl[140]";
connectAttr "Torso_Control_visibility.o" "Combot_RigRN.phl[141]";
connectAttr "Torso_Control_translateX.o" "Combot_RigRN.phl[142]";
connectAttr "Torso_Control_translateY.o" "Combot_RigRN.phl[143]";
connectAttr "Torso_Control_translateZ.o" "Combot_RigRN.phl[144]";
connectAttr "Torso_Control_scaleX.o" "Combot_RigRN.phl[145]";
connectAttr "Torso_Control_scaleY.o" "Combot_RigRN.phl[146]";
connectAttr "Torso_Control_scaleZ.o" "Combot_RigRN.phl[147]";
connectAttr "LeftShoulder_Control_rotateX.o" "Combot_RigRN.phl[148]";
connectAttr "LeftShoulder_Control_rotateY.o" "Combot_RigRN.phl[149]";
connectAttr "LeftShoulder_Control_rotateZ.o" "Combot_RigRN.phl[150]";
connectAttr "LeftShoulder_Control_visibility.o" "Combot_RigRN.phl[151]";
connectAttr "LeftShoulder_Control_translateX.o" "Combot_RigRN.phl[152]";
connectAttr "LeftShoulder_Control_translateY.o" "Combot_RigRN.phl[153]";
connectAttr "LeftShoulder_Control_translateZ.o" "Combot_RigRN.phl[154]";
connectAttr "LeftShoulder_Control_scaleX.o" "Combot_RigRN.phl[155]";
connectAttr "LeftShoulder_Control_scaleY.o" "Combot_RigRN.phl[156]";
connectAttr "LeftShoulder_Control_scaleZ.o" "Combot_RigRN.phl[157]";
connectAttr "RightShoulder_Control_rotateX.o" "Combot_RigRN.phl[158]";
connectAttr "RightShoulder_Control_rotateY.o" "Combot_RigRN.phl[159]";
connectAttr "RightShoulder_Control_rotateZ.o" "Combot_RigRN.phl[160]";
connectAttr "RightShoulder_Control_visibility.o" "Combot_RigRN.phl[161]";
connectAttr "RightShoulder_Control_translateX.o" "Combot_RigRN.phl[162]";
connectAttr "RightShoulder_Control_translateY.o" "Combot_RigRN.phl[163]";
connectAttr "RightShoulder_Control_translateZ.o" "Combot_RigRN.phl[164]";
connectAttr "RightShoulder_Control_scaleX.o" "Combot_RigRN.phl[165]";
connectAttr "RightShoulder_Control_scaleY.o" "Combot_RigRN.phl[166]";
connectAttr "RightShoulder_Control_scaleZ.o" "Combot_RigRN.phl[167]";
connectAttr "Head_Control_rotateX.o" "Combot_RigRN.phl[168]";
connectAttr "Head_Control_rotateY.o" "Combot_RigRN.phl[169]";
connectAttr "Head_Control_rotateZ.o" "Combot_RigRN.phl[170]";
connectAttr "Head_Control_visibility.o" "Combot_RigRN.phl[171]";
connectAttr "Head_Control_translateX.o" "Combot_RigRN.phl[172]";
connectAttr "Head_Control_translateY.o" "Combot_RigRN.phl[173]";
connectAttr "Head_Control_translateZ.o" "Combot_RigRN.phl[174]";
connectAttr "Head_Control_scaleX.o" "Combot_RigRN.phl[175]";
connectAttr "Head_Control_scaleY.o" "Combot_RigRN.phl[176]";
connectAttr "Head_Control_scaleZ.o" "Combot_RigRN.phl[177]";
connectAttr "LeftBackAttach_Control_translateX.o" "Combot_RigRN.phl[178]";
connectAttr "LeftBackAttach_Control_translateY.o" "Combot_RigRN.phl[179]";
connectAttr "LeftBackAttach_Control_translateZ.o" "Combot_RigRN.phl[180]";
connectAttr "LeftBackAttach_Control_rotateX.o" "Combot_RigRN.phl[181]";
connectAttr "LeftBackAttach_Control_rotateY.o" "Combot_RigRN.phl[182]";
connectAttr "LeftBackAttach_Control_rotateZ.o" "Combot_RigRN.phl[183]";
connectAttr "LeftBackAttach_Control_scaleX.o" "Combot_RigRN.phl[184]";
connectAttr "LeftBackAttach_Control_scaleY.o" "Combot_RigRN.phl[185]";
connectAttr "LeftBackAttach_Control_scaleZ.o" "Combot_RigRN.phl[186]";
connectAttr "LeftBackAttach_Control_visibility.o" "Combot_RigRN.phl[187]";
connectAttr "RightBackAttach_Control_translateX.o" "Combot_RigRN.phl[188]";
connectAttr "RightBackAttach_Control_translateY.o" "Combot_RigRN.phl[189]";
connectAttr "RightBackAttach_Control_translateZ.o" "Combot_RigRN.phl[190]";
connectAttr "RightBackAttach_Control_rotateX.o" "Combot_RigRN.phl[191]";
connectAttr "RightBackAttach_Control_rotateY.o" "Combot_RigRN.phl[192]";
connectAttr "RightBackAttach_Control_rotateZ.o" "Combot_RigRN.phl[193]";
connectAttr "RightBackAttach_Control_scaleX.o" "Combot_RigRN.phl[194]";
connectAttr "RightBackAttach_Control_scaleY.o" "Combot_RigRN.phl[195]";
connectAttr "RightBackAttach_Control_scaleZ.o" "Combot_RigRN.phl[196]";
connectAttr "RightBackAttach_Control_visibility.o" "Combot_RigRN.phl[197]";
connectAttr "LeftFoot_Control_rotateX.o" "Combot_RigRN.phl[198]";
connectAttr "LeftFoot_Control_rotateY.o" "Combot_RigRN.phl[199]";
connectAttr "LeftFoot_Control_rotateZ.o" "Combot_RigRN.phl[200]";
connectAttr "LeftFoot_Control_visibility.o" "Combot_RigRN.phl[201]";
connectAttr "LeftFoot_Control_translateX.o" "Combot_RigRN.phl[202]";
connectAttr "LeftFoot_Control_translateY.o" "Combot_RigRN.phl[203]";
connectAttr "LeftFoot_Control_translateZ.o" "Combot_RigRN.phl[204]";
connectAttr "LeftFoot_Control_scaleX.o" "Combot_RigRN.phl[205]";
connectAttr "LeftFoot_Control_scaleY.o" "Combot_RigRN.phl[206]";
connectAttr "LeftFoot_Control_scaleZ.o" "Combot_RigRN.phl[207]";
connectAttr "LeftToes_Control_rotateX.o" "Combot_RigRN.phl[208]";
connectAttr "LeftToes_Control_rotateY.o" "Combot_RigRN.phl[209]";
connectAttr "LeftToes_Control_rotateZ.o" "Combot_RigRN.phl[210]";
connectAttr "LeftToes_Control_visibility.o" "Combot_RigRN.phl[211]";
connectAttr "LeftToes_Control_translateX.o" "Combot_RigRN.phl[212]";
connectAttr "LeftToes_Control_translateY.o" "Combot_RigRN.phl[213]";
connectAttr "LeftToes_Control_translateZ.o" "Combot_RigRN.phl[214]";
connectAttr "LeftToes_Control_scaleX.o" "Combot_RigRN.phl[215]";
connectAttr "LeftToes_Control_scaleY.o" "Combot_RigRN.phl[216]";
connectAttr "LeftToes_Control_scaleZ.o" "Combot_RigRN.phl[217]";
connectAttr "LeftKnee_Control_translateX.o" "Combot_RigRN.phl[218]";
connectAttr "LeftKnee_Control_translateY.o" "Combot_RigRN.phl[219]";
connectAttr "LeftKnee_Control_translateZ.o" "Combot_RigRN.phl[220]";
connectAttr "LeftKnee_Control_visibility.o" "Combot_RigRN.phl[221]";
connectAttr "LeftKnee_Control_rotateX.o" "Combot_RigRN.phl[222]";
connectAttr "LeftKnee_Control_rotateY.o" "Combot_RigRN.phl[223]";
connectAttr "LeftKnee_Control_rotateZ.o" "Combot_RigRN.phl[224]";
connectAttr "LeftKnee_Control_scaleX.o" "Combot_RigRN.phl[225]";
connectAttr "LeftKnee_Control_scaleY.o" "Combot_RigRN.phl[226]";
connectAttr "LeftKnee_Control_scaleZ.o" "Combot_RigRN.phl[227]";
connectAttr "RightFoot_Control_rotateX.o" "Combot_RigRN.phl[228]";
connectAttr "RightFoot_Control_rotateY.o" "Combot_RigRN.phl[229]";
connectAttr "RightFoot_Control_rotateZ.o" "Combot_RigRN.phl[230]";
connectAttr "RightFoot_Control_visibility.o" "Combot_RigRN.phl[231]";
connectAttr "RightFoot_Control_translateX.o" "Combot_RigRN.phl[232]";
connectAttr "RightFoot_Control_translateY.o" "Combot_RigRN.phl[233]";
connectAttr "RightFoot_Control_translateZ.o" "Combot_RigRN.phl[234]";
connectAttr "RightFoot_Control_scaleX.o" "Combot_RigRN.phl[235]";
connectAttr "RightFoot_Control_scaleY.o" "Combot_RigRN.phl[236]";
connectAttr "RightFoot_Control_scaleZ.o" "Combot_RigRN.phl[237]";
connectAttr "RightToes_Control_rotateX.o" "Combot_RigRN.phl[238]";
connectAttr "RightToes_Control_rotateY.o" "Combot_RigRN.phl[239]";
connectAttr "RightToes_Control_rotateZ.o" "Combot_RigRN.phl[240]";
connectAttr "RightToes_Control_visibility.o" "Combot_RigRN.phl[241]";
connectAttr "RightToes_Control_translateX.o" "Combot_RigRN.phl[242]";
connectAttr "RightToes_Control_translateY.o" "Combot_RigRN.phl[243]";
connectAttr "RightToes_Control_translateZ.o" "Combot_RigRN.phl[244]";
connectAttr "RightToes_Control_scaleX.o" "Combot_RigRN.phl[245]";
connectAttr "RightToes_Control_scaleY.o" "Combot_RigRN.phl[246]";
connectAttr "RightToes_Control_scaleZ.o" "Combot_RigRN.phl[247]";
connectAttr "RightKnee_Control_translateX.o" "Combot_RigRN.phl[248]";
connectAttr "RightKnee_Control_translateY.o" "Combot_RigRN.phl[249]";
connectAttr "RightKnee_Control_translateZ.o" "Combot_RigRN.phl[250]";
connectAttr "RightKnee_Control_visibility.o" "Combot_RigRN.phl[251]";
connectAttr "RightKnee_Control_rotateX.o" "Combot_RigRN.phl[252]";
connectAttr "RightKnee_Control_rotateY.o" "Combot_RigRN.phl[253]";
connectAttr "RightKnee_Control_rotateZ.o" "Combot_RigRN.phl[254]";
connectAttr "RightKnee_Control_scaleX.o" "Combot_RigRN.phl[255]";
connectAttr "RightKnee_Control_scaleY.o" "Combot_RigRN.phl[256]";
connectAttr "RightKnee_Control_scaleZ.o" "Combot_RigRN.phl[257]";
connectAttr "AssaultRifle_blendParent2.o" "AssaultRifleRN.phl[1]";
connectAttr "AssaultRifle_visibility.o" "AssaultRifleRN.phl[2]";
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
connectAttr "AssaultRifleRN.phl[11]" "LeftHand_Control_parentConstraint2.tg[0].ts"
		;
connectAttr "AssaultRifle_scaleX.o" "AssaultRifleRN.phl[12]";
connectAttr "AssaultRifle_scaleY.o" "AssaultRifleRN.phl[13]";
connectAttr "AssaultRifle_scaleZ.o" "AssaultRifleRN.phl[14]";
connectAttr "AssaultRifleRN.phl[15]" "LeftHand_Control_parentConstraint2.tg[0].tro"
		;
connectAttr "AssaultRifleRN.phl[16]" "AssaultRifle_parentConstraint1.cro";
connectAttr "AssaultRifleRN.phl[17]" "AssaultRifle_parentConstraint1.cpim";
connectAttr "AssaultRifleRN.phl[18]" "LeftHand_Control_parentConstraint2.tg[0].trp"
		;
connectAttr "AssaultRifleRN.phl[19]" "AssaultRifle_parentConstraint1.crp";
connectAttr "AssaultRifleRN.phl[20]" "LeftHand_Control_parentConstraint2.tg[0].trt"
		;
connectAttr "AssaultRifleRN.phl[21]" "AssaultRifle_parentConstraint1.crt";
connectAttr "AssaultRifleRN.phl[22]" "LeftHand_Control_parentConstraint2.tg[0].tpm"
		;
connectAttr "Extras.di" "AssaultRifleRN.phl[23]";
connectAttr "Magazine_visibility.o" "AssaultRifleRN.phl[24]";
connectAttr "Magazine_translateX.o" "AssaultRifleRN.phl[25]";
connectAttr "Magazine_translateY.o" "AssaultRifleRN.phl[26]";
connectAttr "Magazine_translateZ.o" "AssaultRifleRN.phl[27]";
connectAttr "Magazine_rotateX.o" "AssaultRifleRN.phl[28]";
connectAttr "Magazine_rotateY.o" "AssaultRifleRN.phl[29]";
connectAttr "Magazine_rotateZ.o" "AssaultRifleRN.phl[30]";
connectAttr "Magazine_scaleX.o" "AssaultRifleRN.phl[31]";
connectAttr "Magazine_scaleY.o" "AssaultRifleRN.phl[32]";
connectAttr "Magazine_scaleZ.o" "AssaultRifleRN.phl[33]";
connectAttr "Muzzle_visibility.o" "AssaultRifleRN.phl[34]";
connectAttr "Muzzle_translateX.o" "AssaultRifleRN.phl[35]";
connectAttr "Muzzle_translateY.o" "AssaultRifleRN.phl[36]";
connectAttr "Muzzle_translateZ.o" "AssaultRifleRN.phl[37]";
connectAttr "Muzzle_rotateX.o" "AssaultRifleRN.phl[38]";
connectAttr "Muzzle_rotateY.o" "AssaultRifleRN.phl[39]";
connectAttr "Muzzle_rotateZ.o" "AssaultRifleRN.phl[40]";
connectAttr "Muzzle_scaleX.o" "AssaultRifleRN.phl[41]";
connectAttr "Muzzle_scaleY.o" "AssaultRifleRN.phl[42]";
connectAttr "Muzzle_scaleZ.o" "AssaultRifleRN.phl[43]";
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
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "pairBlend1_inRotateX1.o" "pairBlend1.irx1";
connectAttr "pairBlend1_inRotateY1.o" "pairBlend1.iry1";
connectAttr "pairBlend1_inRotateZ1.o" "pairBlend1.irz1";
connectAttr "LeftHand_Control_parentConstraint2.ctx" "pairBlend2.itx2";
connectAttr "LeftHand_Control_parentConstraint2.cty" "pairBlend2.ity2";
connectAttr "LeftHand_Control_parentConstraint2.ctz" "pairBlend2.itz2";
connectAttr "LeftHand_Control_parentConstraint2.crx" "pairBlend2.irx2";
connectAttr "LeftHand_Control_parentConstraint2.cry" "pairBlend2.iry2";
connectAttr "LeftHand_Control_parentConstraint2.crz" "pairBlend2.irz2";
connectAttr "pairBlend2_inTranslateX1.o" "pairBlend2.itx1";
connectAttr "pairBlend2_inTranslateY1.o" "pairBlend2.ity1";
connectAttr "pairBlend2_inTranslateZ1.o" "pairBlend2.itz1";
connectAttr "pairBlend2_inRotateX1.o" "pairBlend2.irx1";
connectAttr "pairBlend2_inRotateY1.o" "pairBlend2.iry1";
connectAttr "pairBlend2_inRotateZ1.o" "pairBlend2.irz1";
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
// End of Combot_Moving.ma
