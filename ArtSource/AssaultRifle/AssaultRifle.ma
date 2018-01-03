//Maya ASCII 2018 scene
//Name: AssaultRifle.ma
//Last modified: Sat, Dec 02, 2017 12:13:46 PM
//Codeset: UTF-8
requires maya "2018";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.12.6";
createNode transform -s -n "persp";
	rename -uid "FE2DDE43-6043-38A8-CE09-7C94B387B9AA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 43.016983071951358 125.09475944325987 464.79862516296731 ;
	setAttr ".r" -type "double3" -14.73835272365063 -1797.4000000005049 359.99999999997334 ;
	setAttr ".rp" -type "double3" -1.7763568394002505e-15 -1.7763568394002505e-15 1.4210854715202004e-14 ;
	setAttr ".rpt" -type "double3" 1.5842264113792092e-14 2.9282442025081912e-15 -1.11971050525276e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "68718766-5B44-ABC3-3A1F-F28494FE7871";
	setAttr -k off ".v" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 496.34815550019255;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.3877787807814457e-16 0 189.8959054481054 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -s -n "top";
	rename -uid "554DE9DE-844E-F13F-1B43-41A5400AB12B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.90505676289480164 118.42949421205908 10.083785422841988 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "5EF223F9-5A48-A0C8-340C-F3A48DA2B69C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 108.25095064440158;
	setAttr ".ow" 109.81355389790292;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 10.178543567657471 -14.855556488037109 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "7CFC302A-5E4D-0647-BA4A-CD934556F753";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2581.0977587171974 9.6474866999099476 108.04472906655452 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 -1.4210854715202004e-14 -2.8421709430404007e-14 ;
	setAttr ".rpt" -type "double3" -1.7763568394002448e-14 0 2.4868995751603693e-14 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3AC20BF5-F342-128A-61BC-178EABD1ED16";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 2581.0977587171969;
	setAttr ".ow" 214.43494452493852;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -5.8342219944051976e-13 15.663025741989522 2573.9340169510419 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "435D69C5-0343-70AE-B467-2DB00795C7A9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 177.81829971791328 -12.587880210478957 23.989880148724307 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2942107C-1E45-B785-1330-1FA338D63A22";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 116.34256264072314;
	setAttr ".ow" 88.69875940636409;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "AssaultRifle";
	rename -uid "E7085033-FF4B-8CBE-BD57-40B30974442A";
createNode mesh -n "AssaultRifleShape" -p "AssaultRifle";
	rename -uid "64ADC4EF-5343-0C16-D221-5CBE98C0282F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.13951992057263851 0.47976550459861755 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
createNode mesh -n "polySurfaceShape1" -p "AssaultRifle";
	rename -uid "5BCF7CEC-B54F-DD5A-C39D-0884F00C47E6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:45]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.29480519890785217 0.47976550459861755 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 97 ".uvst[0].uvsp[0:96]" -type "float2" 0.016011298 0.98321778
		 0.016011298 0.89334679 0.29949182 0.89334679 0.29949182 0.98321778 0.48048386 0.98227489
		 0.48126033 0.89334679 0.57242101 0.89334679 0.64603359 0.89334679 0.81392771 0.10825849
		 0.81392783 0.015543997 0.74190342 0.015543997 0.74190331 0.10825837 0.28272086 0.47333428
		 0.2994917 0.56352311 0.016011298 0.56352311 0.016011298 0.47333428 0.19210738 0.3209694
		 0.26697716 0.32096952 0.23463646 0.42965186 0.19210741 0.42965186 0.016011298 0.63856161
		 0.2994917 0.63856161 0.5735991 0.63400197 0.59693158 0.51863986 0.65909994 0.50643307
		 0.64388537 0.67222834 0.35554162 0.21070705 0.38092923 0.21839449 0.48126033 0.50646025
		 0.48126033 0.63856161 0.51970911 0.21744372 0.98445594 0.10825837 0.95334387 0.015543997
		 0.047704786 0.42965186 0.015544027 0.32096952 0.82005465 0.89334679 0.81980801 0.67222834
		 0.98263407 0.89426696 0.95946681 0.50646025 0.83022845 0.50644183 0.95946681 0.63856161
		 0.54835427 0.63211739 0.58681571 0.49442407 0.49757242 0.63856161 0.49757242 0.50646025
		 0.53582489 0.21744332 0.80282819 0.63856161 0.81324863 0.50644183 0.67526835 0.63856161
		 0.69048291 0.50643307 0.62980449 0.34684145 0.70555937 0.34681305 0.62240022 0.34684145
		 0.71973479 0.34681305 0.3710711 0.1224815 0.38293359 0.21762685 0.51497877 0.21755409
		 0.53034353 0.12233064 0.29949182 0.89334679 0.016011417 0.89334679 0.016011417 0.63856161
		 0.29949182 0.63856161 0.48048386 0.98227489 0.48126033 0.89334679 0.57242125 0.89334679
		 0.57143784 0.98227489 0.64603359 0.89334679 0.64462948 0.98227489 0.82005477 0.89334679
		 0.81834358 0.98227489 0.98263407 0.89426696 0.98036999 0.98227656 0.55935663 0.59272856
		 0.57922226 0.60619956 0.64795303 0.62790215 0 0 1 0 0.91241086 1 0.059051298 1 0
		 0 1 0 0.00022292641 1 0 0 1 0 0.99982482 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr -s 5 ".pt";
	setAttr ".pt[14]" -type "float3" 0 2.0267105 0 ;
	setAttr ".pt[15]" -type "float3" 0 2.0267105 0 ;
	setAttr ".pt[16]" -type "float3" 0 2.0267105 0 ;
	setAttr ".pt[17]" -type "float3" 0 2.0267105 0 ;
	setAttr ".pt[35]" -type "float3" 0 2.0267105 0 ;
	setAttr -s 62 ".vt[0:61]"  4.52773809 15.93804169 60.50943375 4.52773809 15.93804169 32.36403656
		 4.52773809 15.93804169 5.26306677 4.49984169 15.93804169 -32.11571503 4.47194576 3.61123133 -34.11356354
		 2.96856546 -2.42056346 3.62032771 4.52773809 -0.20439339 32.364048 4.52773809 -0.20439339 60.50943375
		 4.5521183 -17.059169769 24.22118378 4.52773809 15.93804169 15.4883461 4.52773809 -0.20439386 15.4883461
		 4.5521183 -17.059169769 10.92338753 2.96856546 -11.7476368 0.98452747 4.47194576 10.020829201 -32.11569214
		 4.52773809 3.40699434 5.26460743 4.52773809 3.40699434 15.4883461 4.52773809 3.40699577 32.364048
		 4.52773809 3.40699577 60.50943375 4.52074003 15.93804169 -3.61430311 2.96856546 -9.82630253 -5.62781811
		 2.96856546 -2.4205637 -3.39959836 4.51374197 10.1292448 -3.61430097 4.51415539 15.93804169 -26.79010391
		 4.5005722 1.78999186 -28.4707756 4.5005722 10.1292448 -26.76210022 0.047819078 -2.95911551 60.50943375
		 0.047819078 -2.95911551 32.79023743 0.047819078 -17.059169769 25.88627625 0.047819078 -17.059169769 9.75946426
		 0.047819078 3.61123133 -34.11356354 0.047819078 10.020829201 -32.11569214 0.047819078 18.7141571 -32.11571503
		 0.047819078 18.68395233 15.4883461 0.047819078 18.68395233 32.36403656 0.047819078 18.68395233 60.50943375
		 0.047819078 3.40699577 60.50943375 0.047819018 -2.42057443 5.34658575 0.047819078 3.4069941 7.65571404
		 0.047819018 3.40699434 14.24047375 0.047819018 -0.20439386 14.24047375 0.047819078 -12.14126587 2.32779765
		 0.047819078 1.092647076 -26.309021 0.047819078 8.25512028 -25.076259613 0.047819018 8.25512028 -3.70606971
		 0.047819018 -2.42056346 -4.86311579 0.047819018 -9.3527813 -7.19301414 0.047819078 18.68395233 5.25990772
		 0.047819078 18.68395233 -3.60202551 0.047819078 18.68395233 -26.79361916 0.047819197 1.73994827 6.9951601
		 2.96857762 2.0025470257 4.86833429 2.96857691 6.77399015 -1.84612989 0.047849178 -15.87032795 -0.39901805
		 0.047849178 -13.94899273 -7.011363506 4.57225132 -12.10591984 2.27075934 4.57225132 -9.47817135 -6.77273703
		 4.57225132 -15.28324604 1.11687231 4.57225132 -12.6554966 -7.9266243 0.047824085 -12.64427376 4.10790777
		 0.047824085 -15.82159996 2.9540205 0.047824144 -8.83055115 -8.91340637 0.047824144 -12.0078773499 -10.067293167;
	setAttr -s 107 ".ed[0:106]"  0 1 1 1 33 1 9 2 1 2 18 1 3 31 0 13 4 0 4 29 0
		 6 7 1 7 25 0 7 17 0 17 35 1 6 16 1 16 17 1 14 50 0 5 20 1 13 24 1 8 6 1 1 9 1 6 10 1
		 10 15 1 15 16 1 11 10 1 3 13 0 2 14 1 9 15 1 15 14 1 1 16 1 0 17 0 14 37 0 10 39 1
		 18 22 1 21 14 1 20 51 1 21 18 1 22 3 1 23 4 0 24 21 1 23 24 1 24 22 1 26 6 0 25 26 0
		 26 27 0 30 13 1 29 30 0 30 31 0 32 9 1 32 33 0 34 0 0 33 34 0 34 35 0 35 25 0 36 5 1
		 36 49 0 38 15 0 37 38 0 38 39 0 39 28 0 41 23 0 42 24 0 41 42 0 43 21 0 42 43 0 44 20 1
		 43 44 0 5 12 1 12 19 0 19 20 1 12 40 0 19 45 0 40 36 0 44 45 0 8 11 0 11 28 0 8 27 0
		 27 28 0 32 46 0 46 2 1 46 47 0 47 18 1 47 48 0 48 22 1 48 31 0 49 37 0 50 5 0 51 21 1
		 49 50 1 50 51 1 51 43 1 52 53 0 12 54 0 19 55 0 54 55 0 52 56 0 54 56 0 53 57 0 56 57 0
		 55 57 0 40 58 0 54 58 0 52 59 0 58 59 0 56 59 0 45 60 0 55 60 0 53 61 0 57 61 0 60 61 0;
	setAttr -s 46 -ch 181 ".fc[0:45]" -type "polyFaces" 
		f 4 47 0 1 48
		mu 0 4 0 1 2 3
		f 4 42 5 6 43
		mu 0 4 8 9 10 11
		f 4 39 7 8 40
		mu 0 4 12 13 14 15
		f 4 50 -9 9 10
		mu 0 4 16 17 18 19
		f 4 -10 -8 11 12
		mu 0 4 20 14 13 21
		f 4 13 86 84 31
		mu 0 4 22 73 74 25
		f 4 -40 41 -74 16
		mu 0 4 13 12 26 27
		f 4 -2 17 -46 46
		mu 0 4 3 2 5 4
		f 4 -12 18 19 20
		mu 0 4 21 13 28 29
		f 4 21 -19 -17 71
		mu 0 4 30 28 13 27
		f 4 -5 22 -43 44
		mu 0 4 31 32 9 8
		f 4 23 -32 33 -4
		mu 0 4 6 22 25 7
		f 4 24 25 -24 -3
		mu 0 4 5 29 22 6
		f 4 26 -21 -25 -18
		mu 0 4 2 21 29 5
		f 4 -11 -28 -48 49
		mu 0 4 16 19 33 34
		f 4 -34 -37 38 -31
		mu 0 4 7 25 36 35
		f 4 -38 35 -6 15
		mu 0 4 36 39 38 40
		f 4 -39 -16 -23 -35
		mu 0 4 35 36 40 37
		f 4 -83 85 -14 28
		mu 0 4 41 72 73 22
		f 4 -55 -29 -26 -54
		mu 0 4 43 41 22 29
		f 4 -56 53 -20 29
		mu 0 4 44 43 29 28
		f 4 -57 -30 -22 72
		mu 0 4 45 44 28 30
		f 4 -60 57 37 -59
		mu 0 4 46 47 39 36
		f 4 -62 58 36 -61
		mu 0 4 48 46 36 25
		f 3 87 60 -85
		mu 0 3 74 48 25
		f 4 -15 64 65 66
		mu 0 4 24 23 50 51
		f 4 -70 -68 -65 -52
		mu 0 4 42 52 50 23
		f 4 68 -71 62 -67
		mu 0 4 51 53 49 24
		f 4 -73 -72 73 74
		mu 0 4 54 55 56 57
		f 4 -1 27 -13 -27
		mu 0 4 58 59 60 61
		f 4 45 2 -77 -76
		mu 0 4 62 63 64 65
		f 4 76 3 -79 -78
		mu 0 4 65 64 66 67
		f 4 78 30 -81 -80
		mu 0 4 67 66 68 69
		f 4 80 34 4 -82
		mu 0 4 69 68 70 71
		f 4 -86 -53 51 -84
		mu 0 4 73 72 42 23
		f 4 -87 83 14 32
		mu 0 4 74 73 23 24
		f 4 -64 -88 -33 -63
		mu 0 4 49 48 74 24
		f 4 -92 93 95 -97
		mu 0 4 85 86 87 88
		f 4 98 100 -102 -94
		mu 0 4 89 90 91 92
		f 4 -104 96 105 -107
		mu 0 4 93 94 95 96
		f 4 -66 89 91 -91
		mu 0 4 75 76 86 85
		f 4 88 94 -96 -93
		mu 0 4 77 78 88 87
		f 4 67 97 -99 -90
		mu 0 4 79 80 90 89
		f 3 92 101 -100
		mu 0 3 81 92 91
		f 4 -69 90 103 -103
		mu 0 4 82 83 94 93
		f 3 104 -106 -95
		mu 0 3 84 96 95;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Magazine" -p "AssaultRifle";
	rename -uid "A8E3B87A-C94D-E6EB-D894-789B2458A4B8";
	setAttr ".rp" -type "double3" -0.049420595169067383 -11.126783776778302 23.373185325163927 ;
	setAttr ".sp" -type "double3" -0.049420595169067383 -11.126783776778302 23.373185325163927 ;
createNode mesh -n "MagazineShape" -p "Magazine";
	rename -uid "F3E00A8D-0E43-A248-C4A5-62849FF222BF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.18745744228363037 0.11233295500278473 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".sdt" 0;
	setAttr ".ugsdt" no;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -0.61617434 0 0 -0.61617434 
		0 0 2.2744011e-06 0 0 2.2744011e-06 0 0 0.61617434 0 0 0.61617434 0 0 -0.61617434 
		0 0 -0.61617434 0 0 2.2744011e-06 0 0 2.2744011e-06 0 0 0.61617434 0 0 0.61617434 
		0 0 -0.42950758 0 0 -0.42950758 0 0 2.1075625e-06 0 0 2.0389491e-06 0 0 0.4295077 
		0 0 0.4295077 0 0 -0.42950758 0 0 -0.42950758 0 0 2.1075625e-06 0 0 2.0389491e-06 
		0 0 0.4295077 0 0 0.4295077 0 0 -0.69532287 0 0 -0.69532287 0 0 -0.69532287 0 0 -0.69532287 
		0 0 2.5664556e-06 0 0 2.5664556e-06 0 0 2.5664556e-06 0 0 2.5664556e-06 0 0 0.69532263 
		0 0 0.69532263 0 0 0.69532263 0 0 0.69532263 0 0;
createNode mesh -n "polySurfaceShape2" -p "Magazine";
	rename -uid "05D0168F-C749-198B-7A82-AE8444E26E27";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:21]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.11920768022537231 0.10749569535255432 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.090734243 0.033896111
		 0.093898237 0.044794619 0.13004585 0.16930966 0.13457212 0.18490091 0.13004585 0.16930966
		 0.093898237 0.044794619 0.10700721 0.040988989 0.14315484 0.16550404 0.14768112 0.18109527
		 0.10384327 0.030090481 0.14315484 0.16550404 0.10700721 0.040988989 0.36097717 0.15793693
		 0.33046952 0.052849412 0.32826403 0.045252442 0.36413223 0.16880488 0.36097717 0.15793693
		 0.33046952 0.052849352 0.10997313 0.051205743 0.14048089 0.15629332 0.10776782 0.043608874
		 0.14363594 0.16716129 0.14048089 0.15629333 0.10997325 0.051205717 0.053179204 0.19457543
		 0.095576048 0.18389735 0.095576048 0.061901033 0.053179204 0.046625137 0.010782659
		 0.061901033 0.010782659 0.18389735;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ugsdt" no;
	setAttr -s 24 ".pt[0:23]" -type "float3"  1.3203735 -6.5778761 6.9489484 
		1.3203735 -6.5778761 3.1495779 -4.839897e-06 -6.5778761 7.4246893 -4.839897e-06 -6.5778761 
		2.817028 -1.3203735 -6.5778761 6.9489484 -1.3203735 -6.5778761 3.1495779 1.3203735 
		-4.8758726 3.1495779 1.3203735 -4.8758726 6.9489484 -4.839897e-06 -4.8758726 7.4246893 
		-4.839897e-06 -4.8758726 2.817028 -1.3203735 -4.8758726 6.9489484 -1.3203735 -4.8758726 
		3.1495779 0.9203735 -4.8758726 3.4613256 0.9203735 -4.8758726 6.6678991 -4.4822691e-06 
		-4.8758726 3.2295198 -4.3347477e-06 -4.8758726 6.999517 -0.92037356 -4.8758726 6.6679001 
		-0.92037356 -4.8758726 3.4613252 0.9203735 1.3158203 5.3089728 0.9203735 1.3158203 
		8.5155458 -4.4822691e-06 1.3158203 5.0771666 -4.3347477e-06 1.3158203 8.8471642 -0.92037356 
		1.3158203 8.5155468 -0.92037356 1.3158203 5.3089719;
	setAttr -s 24 ".vt[0:23]"  3.251513 -13.18512154 17.3008461 3.251513 -13.18512154 7.80241966
		 -0.049432814 -13.18512154 18.49019814 -0.049432814 -13.18512154 6.97104502 -3.35035443 -13.18512154 17.3008461
		 -3.35035443 -13.18512154 7.80241966 3.251513 -12.18512154 7.80241966 3.251513 -12.18512154 17.3008461
		 -0.049432814 -12.18512154 18.49019814 -0.049432814 -12.18512154 6.97104502 -3.35035443 -12.18512154 17.3008461
		 -3.35035443 -12.18512154 7.80241966 2.251513 -12.18512154 8.58178902 2.251513 -12.18512154 16.59822273
		 -0.04943192 -12.18512154 8.0022745132 -0.049431551 -12.18512154 17.42726707 -2.35035467 -12.18512154 16.59822464
		 -2.35035467 -12.18512154 8.58178806 2.251513 3.29411125 13.20090675 2.251513 3.29411125 21.21734047
		 -0.04943192 3.29411125 12.6213913 -0.049431551 3.29411125 22.046384811 -2.35035467 3.29411125 21.21734238
		 -2.35035467 3.29411125 13.20090485;
	setAttr -s 44 ".ed[0:43]"  0 2 0 2 3 0 2 4 0 4 5 0 6 7 0 0 1 0 1 6 0
		 7 8 0 0 7 0 1 3 0 3 9 1 8 10 0 2 8 0 10 11 0 4 10 0 3 5 0 5 11 0 6 9 0 9 11 0 6 12 0
		 7 13 0 12 13 0 9 14 0 12 14 0 8 15 0 13 15 0 10 16 0 15 16 0 11 17 0 14 17 0 16 17 0
		 12 18 0 13 19 0 18 19 0 14 20 1 18 20 0 15 21 0 21 20 0 19 21 0 16 22 0 21 22 0 17 23 0
		 20 23 0 22 23 0;
	setAttr -s 84 ".n[0:83]" -type "float3"  1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20
		 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20 1e+20;
	setAttr -s 22 -ch 88 ".fc[0:21]" -type "polyFaces" 
		f 4 -10 -6 0 1
		mu 0 4 24 25 26 27
		f 4 -2 2 3 -16
		mu 0 4 24 27 28 29
		f 4 6 4 -9 5
		mu 0 4 1 6 7 2
		f 4 8 7 -13 -1
		mu 0 4 2 7 8 3
		f 4 10 -18 -7 9
		mu 0 4 0 9 6 1
		f 4 12 11 -15 -3
		mu 0 4 3 8 10 4
		f 4 14 13 -17 -4
		mu 0 4 4 10 11 5
		f 4 16 -19 -11 15
		mu 0 4 5 11 9 0
		f 4 -34 35 -38 -39
		mu 0 4 12 13 14 15
		f 4 -41 37 42 -44
		mu 0 4 16 15 14 17
		f 4 -5 19 21 -21
		mu 0 4 7 6 18 19
		f 4 17 22 -24 -20
		mu 0 4 6 9 20 18
		f 4 -8 20 25 -25
		mu 0 4 8 7 19 21
		f 4 -12 24 27 -27
		mu 0 4 10 8 21 22
		f 4 18 28 -30 -23
		mu 0 4 9 11 23 20
		f 4 -14 26 30 -29
		mu 0 4 11 10 22 23
		f 4 -22 31 33 -33
		mu 0 4 19 18 13 12
		f 4 23 34 -36 -32
		mu 0 4 18 20 14 13
		f 4 -26 32 38 -37
		mu 0 4 21 19 12 15
		f 4 -28 36 40 -40
		mu 0 4 22 21 15 16
		f 4 29 41 -43 -35
		mu 0 4 20 23 17 14
		f 4 -31 39 43 -42
		mu 0 4 23 22 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Muzzle" -p "AssaultRifle";
	rename -uid "5797704A-4647-6026-3115-A48882D5442D";
	setAttr ".t" -type "double3" 0 16.112238925630741 73.68979861575238 ;
createNode nurbsCurve -n "MuzzleShape" -p "Muzzle";
	rename -uid "BF83F5BE-B74B-49A8-096B-2A8D746449F3";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode displayLayer -n "Weapon";
	rename -uid "1A17E695-9A49-1E73-3BFB-02B30D8FDCBC";
	setAttr ".do" 2;
createNode displayLayerManager -n "layerManager";
	rename -uid "E9D31D1D-CF4A-B4D1-FDAA-6BA80587164D";
	setAttr ".cdl" 5;
	setAttr -s 7 ".dli[1:6]"  2 1 3 4 5 6;
	setAttr -s 2 ".dli";
createNode materialInfo -n "materialInfo38";
	rename -uid "14B791C2-EC47-064F-BA6D-91A817698329";
createNode shadingEngine -n "Rifle_MarkISG";
	rename -uid "8A5CB7F8-7F4B-A8F4-0B25-44B7E9C7AD2D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode lambert -n "Mat_AssaultRifle";
	rename -uid "3B585C57-B94F-2C6D-EC16-71BDA076C202";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "01621E56-B241-B936-213F-79898BE2303A";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayer -n "defaultLayer";
	rename -uid "1F29F7E4-454F-637C-F261-15B78C60DB3D";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "32BA276F-CE42-3CA3-3AD7-1C93969E70BD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5DBE7E13-D546-2872-DB3C-139BD39E1542";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6BC54AF6-C046-B142-A96F-B4B8C831E23D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 0\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 449\n            -height 289\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 0\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 449\n            -height 288\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 449\n            -height 288\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 1\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 0\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 0\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 905\n            -height 621\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 0\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 905\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 1\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 0\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 0\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 905\\n    -height 621\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "18A33E56-D94C-EF11-29A4-40B756546B86";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 19 -ast 0 -aet 48 ";
	setAttr ".st" 6;
createNode file -n "file1";
	rename -uid "DB7D5E8E-DD40-FE90-20A8-05B7D032C8E6";
	setAttr ".ftn" -type "string" "/Users/kdx347/Unity/DropZone/Assets/Textures/AssaultRifle.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "49C01CFF-E64F-5BC2-F7D7-2C98F7CF4230";
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo1";
	rename -uid "02ECBC9C-044A-7E07-5902-7EA64E98ED59";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo2";
	rename -uid "9D47EFAD-2B4B-A8D2-54BF-F0B20B3BF4CE";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo3";
	rename -uid "B0DEFA6C-DD44-94FF-F19A-36BF85CF0897";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo4";
	rename -uid "3B1C273E-F747-216A-7E85-FCB61A5ADD3F";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo5";
	rename -uid "82D6D0B5-434D-07CA-F1DE-0BBCA01D1CF0";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo6";
	rename -uid "05712977-FD49-FF22-E379-FCBCFB9CE3DA";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo7";
	rename -uid "B9E061CE-C443-2E83-E5E5-E3951F6EA51E";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo8";
	rename -uid "88C4F308-4D45-725A-C6FA-FFA434BC2BFA";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo9";
	rename -uid "B6CCF939-1D49-5A93-C94D-ABA895E229CD";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo10";
	rename -uid "BD7E340B-3841-E6E3-D62A-598341B70324";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo11";
	rename -uid "77F8E10D-0D4A-00A6-24EA-C68A4D1A08D6";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo12";
	rename -uid "46339D2E-1B4A-6BEF-3B3F-37A7EDD986EB";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo13";
	rename -uid "80C9A03F-C846-B257-1234-FAB40EA269BD";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo14";
	rename -uid "3CE513F6-F44D-3BDF-F61A-2393F01FD90E";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode nodeGraphEditorBookmarkInfo -n "nodeGraphEditorBookmarkInfo15";
	rename -uid "502F981A-CC4F-1E88-B581-0BBF33992D7A";
	setAttr -s 19 ".ni";
	setAttr ".ni[0].nvs" 1760;
	setAttr ".ni[1].nvs" 1872;
	setAttr ".ni[2].nvs" 1760;
	setAttr ".ni[3].nvs" 1680;
	setAttr ".ni[4].nvs" 1760;
	setAttr ".ni[5].nvs" 1824;
	setAttr ".ni[6].nvs" 1760;
	setAttr ".ni[7].nvs" 1760;
	setAttr ".ni[8].nvs" 1952;
	setAttr ".ni[9].nvs" 2528;
	setAttr ".ni[10].nvs" 1648;
	setAttr ".ni[11].nvs" 1648;
	setAttr ".ni[12].nvs" 1984;
	setAttr ".ni[13].nvs" 2480;
	setAttr ".ni[14].nvs" 1984;
	setAttr ".ni[15].nvs" 2480;
	setAttr ".ni[17].nvs" 1648;
	setAttr ".ni[18].nvs" 2304;
	setAttr ".ni[19].nvs" 1760;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "E0A7DA0B-0444-DA83-EF10-869D5AD9111B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A231FBC9-CC48-DCCA-D6E2-E48756661F44";
createNode polyMirror -n "polyMirror1";
	rename -uid "7E836B93-F846-93CD-8789-5990C5243C00";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 24.157428741455078;
	setAttr ".fnf" 46;
	setAttr ".lnf" 91;
createNode groupParts -n "groupParts1";
	rename -uid "0CE83B59-7846-3BD3-5A25-7584267B361B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:45]";
	setAttr ".gi" 136;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "7344B7A7-2F4F-4FA1-8DE4-A683AA4F5322";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[30]" "e[36]" "e[61]" "e[79]" "e[142]" "e[144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.075410105288028717;
	setAttr ".re" 30;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "CA9BFFFC-0D41-1CFF-3584-7B95EEB4E577";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[0]" "e[7]" "e[12]" "e[40]" "e[48]" "e[108]" "e[113]" "e[118]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.88842666149139404;
	setAttr ".dr" no;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "BC8DF6C0-9C4C-31AD-1D99-40B5BB1D9159";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[7]" "e[12]" "e[48]" "e[113]" "e[118]" "e[193]" "e[196]" "e[202]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.4779278039932251;
	setAttr ".dr" no;
	setAttr ".re" 193;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "B5759FC3-7848-4978-7FD5-FEB8D6DAE5BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[46]" "e[48]" "e[75]" "e[77]" "e[79]" "e[81]" "e[182]" "e[194]" "e[210]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "2FBB99B9-3D42-3FF7-D446-A7BB07EEB161";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[3]" -type "float3" -1.3765169 -0.16188377 1.5491574 ;
	setAttr ".tk[4]" -type "float3" 0 1.378113 1.7987496 ;
	setAttr ".tk[13]" -type "float3" -1.3679829 0.57735765 1.549154 ;
	setAttr ".tk[22]" -type "float3" -1.3808956 -0.16188377 0.88382506 ;
	setAttr ".tk[23]" -type "float3" 0 1.605642 1.0937922 ;
	setAttr ".tk[24]" -type "float3" -1.37674 0.56381321 0.88032657 ;
	setAttr ".tk[29]" -type "float3" 0 1.378113 1.7987496 ;
	setAttr ".tk[30]" -type "float3" 0 0.57735765 1.549154 ;
	setAttr ".tk[31]" -type "float3" 0 -0.5087055 1.5491574 ;
	setAttr ".tk[41]" -type "float3" 0 1.6927615 0.82372296 ;
	setAttr ".tk[42]" -type "float3" 0 0.79794896 0.6697132 ;
	setAttr ".tk[48]" -type "float3" 0 -0.50493205 0.88426417 ;
	setAttr ".tk[65]" -type "float3" 1.3765169 -0.16188377 1.5491574 ;
	setAttr ".tk[74]" -type "float3" 1.3679829 0.57735765 1.549154 ;
	setAttr ".tk[83]" -type "float3" 1.3808956 -0.16188377 0.88382506 ;
	setAttr ".tk[84]" -type "float3" 1.37674 0.56381321 0.88032657 ;
	setAttr ".tk[91]" -type "float3" -1.382758 -0.16188341 -1.7932032 ;
	setAttr ".tk[92]" -type "float3" 0 -0.50493205 -1.7945887 ;
	setAttr ".tk[93]" -type "float3" 1.382758 -0.16188341 -1.7932032 ;
	setAttr ".tk[94]" -type "float3" 1.380465 0.56381321 -1.7934673 ;
	setAttr ".tk[95]" -type "float3" 0 0.79794896 -1.7987496 ;
	setAttr ".tk[96]" -type "float3" -1.380465 0.56381321 -1.7934673 ;
	setAttr ".tk[105]" -type "float3" -0.5481016 -0.97758788 0.024294047 ;
	setAttr ".tk[106]" -type "float3" 0 -1.309992 0.024294047 ;
	setAttr ".tk[107]" -type "float3" 0.5481016 -0.97758788 0.024294047 ;
	setAttr ".tk[108]" -type "float3" 0.5481016 0.29400572 0.024292704 ;
	setAttr ".tk[109]" -type "float3" 0.5481016 0.97652131 0.024292704 ;
	setAttr ".tk[110]" -type "float3" 0 1.3099918 -0.024294047 ;
	setAttr ".tk[111]" -type "float3" -0.5481016 0.97652131 0.024292704 ;
	setAttr ".tk[112]" -type "float3" -0.5481016 0.29400572 0.024292704 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "2A7066E5-8C41-2FAB-06CC-80B26533CDC4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[39:40]" "e[177]" "e[190]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit1";
	rename -uid "B3B303F5-5941-83FB-A584-13AF789FAA7D";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483638 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "9012DB4A-2F45-9195-AED8-09B6E147907D";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483540 -2147483542;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "738F7282-B74F-6E6F-2C2C-76BC3D1B326E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[44]" "e[129]" "e[275]" "e[279]" "e[283]" "e[285]" "e[293:294]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplit -n "polySplit3";
	rename -uid "95E17516-024C-DAC1-EB55-EDBF8FD316F6";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483371 -2147483369;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "751AA215-FA49-FB81-BF39-7B98E99F2C21";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483362 -2147483356;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "C8F33D09-E24F-2CF6-DD2E-D5AF7561249F";
	setAttr ".ics" -type "componentList" 2 "vtx[139]" "vtx[141:144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "3250B2A3-2944-A998-E5EA-B0A1ED4489EC";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[139]" -type "float3" -0.45889622 0.42753026 -0.060116291 ;
	setAttr ".tk[141]" -type "float3" -0.15772033 0.43967557 0.96372873 ;
	setAttr ".tk[142]" -type "float3" -0.15773916 -0.24378014 1.6952581 ;
	setAttr ".tk[143]" -type "float3" -0.15773916 -1.2096786 0.35625458 ;
	setAttr ".tk[144]" -type "float3" -0.15773916 -0.24378014 -1.1106968 ;
	setAttr ".tk[146]" -type "float3" 0 -0.20964384 1.1020734 ;
	setAttr ".tk[148]" -type "float3" 0.56245714 -0.41572335 0.8625865 ;
	setAttr ".tk[152]" -type "float3" 0.52737689 -0.41430879 0.98184186 ;
	setAttr ".tk[155]" -type "float3" 0 0.41572332 -1.1020734 ;
	setAttr ".tk[158]" -type "float3" -0.23174565 0.35067248 -1.0926898 ;
	setAttr ".tk[161]" -type "float3" 0.23174565 0.35067248 -1.0926898 ;
	setAttr ".tk[164]" -type "float3" -0.52160197 0.16314885 -1.055566 ;
	setAttr ".tk[167]" -type "float3" 0.52160197 0.16314885 -1.055566 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "F3B968B6-2549-3949-ECB1-44BFAC90149F";
	setAttr ".ics" -type "componentList" 1 "vtx[144:148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "592351A3-5F40-C552-F58C-53AC2C4C1006";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[144:148]" -type "float3"  -0.10356092 0.84325361 -0.92270279
		 0.15773916 -0.24378014 -1.11069679 0.15773916 -1.20967865 0.35625458 0.15773916 -0.24378014
		 1.69525814 -0.36965656 0.85398436 -0.018113136;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "19275A79-DF41-B79B-05E8-938C80A64244";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[215]" -type "float2" -0.012337951 0.00021967164 ;
	setAttr ".uvtk[245]" -type "float2" -0.00017516661 -0.0053547113 ;
	setAttr ".uvtk[246]" -type "float2" -0.00017389546 -0.0054074861 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "7B56F583-7E4C-4FCC-6A6C-C69074F461C9";
	setAttr ".ics" -type "componentList" 1 "vtx[141:142]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "1AE06170-4E4A-D5B1-9C37-2080A944FFE7";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[13]" -type "float3" 0 -0.079000041 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[61]" -type "float3" 0 -0.079000041 0 ;
	setAttr ".tk[62]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[63]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.079001471 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.37300447 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.37300447 0 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[95]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[139]" -type "float3" 0 0.1647754 -0.17812708 ;
	setAttr ".tk[140]" -type "float3" 0 0 0.17812636 ;
	setAttr ".tk[141]" -type "float3" 0 -0.24828553 1.3601303 ;
	setAttr ".tk[142]" -type "float3" 0 0.37522465 -0.68791181 ;
	setAttr ".tk[144]" -type "float3" 0 0.16477737 -0.17812636 ;
	setAttr ".tk[145]" -type "float3" 0 0 0.17812636 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "44F0CA48-AE4A-0593-458B-038CC71306B1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[222]" -type "float2" -0.0020203132 -0.0016478706 ;
	setAttr ".uvtk[250]" -type "float2" 0.0027434889 -0.015548989 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "F2E3F4CC-AB4B-AFE9-A5FF-3785CCB025B0";
	setAttr ".ics" -type "componentList" 1 "vtx[157:158]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "918C532C-084A-C6C1-FA10-FA84E97C14F4";
	setAttr ".uopa" yes;
	setAttr ".tk[158]" -type "float3"  -0.57239461 -0.98451155 0.4721756;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "0724637F-174F-9850-0C13-118E9E593891";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[230]" -type "float2" 0.00036239976 -0.0016258234 ;
	setAttr ".uvtk[248]" -type "float2" 0.004481317 -0.020146243 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "34685599-F646-5780-F3FE-64AFDF4591DF";
	setAttr ".ics" -type "componentList" 1 "vtx[151:152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "94F573DC-CA4F-134C-5040-7196A14B946C";
	setAttr ".uopa" yes;
	setAttr ".tk[152]" -type "float3"  -0.2317456 -1.2087307 0.55353165;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "908BD2D8-364F-39FC-1870-F1AAA3CE30B2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[228]" -type "float2" 0.0031298329 0.01059171 ;
	setAttr ".uvtk[245]" -type "float2" 0.0044800448 -0.01795545 ;
	setAttr ".uvtk[246]" -type "float2" 0.0042644297 -0.018342219 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "028BCEF6-8947-DB0B-FB88-2C91E9FDB3DF";
	setAttr ".ics" -type "componentList" 1 "vtx[145:146]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "747E0506-844B-FFD4-77EC-779FFFAE3FA6";
	setAttr ".uopa" yes;
	setAttr ".tk[146]" -type "float3"  0 -1.25730324 0.5753746;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "87ED7A38-8645-24D4-F6D9-619948F53A22";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[232]" -type "float2" 0.00096322072 -0.0024188028 ;
	setAttr ".uvtk[245]" -type "float2" 0.0056498144 -0.01982197 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "B5919452-FB4F-8426-81FA-22950EF905FB";
	setAttr ".ics" -type "componentList" 1 "vtx[148:149]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "25E49A5F-DC41-2C89-13C6-B2AAE6C9BA95";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[148:149]" -type "float3"  0.2317456 -1.2087307 0.55353165
		 0 0 0;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "0D73BAE2-FC41-288A-82BE-529927C7FCFE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[214]" -type "float2" -0.0020618411 -0.0017070646 ;
	setAttr ".uvtk[245]" -type "float2" 0.0020808615 -0.015409959 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "BE22C4A6-024B-4E7F-DB0D-DBA73C80059F";
	setAttr ".ics" -type "componentList" 1 "vtx[152:153]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "391219DE-FA42-FE88-8B61-ABB679257759";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[152:153]" -type "float3"  0.57239461 -0.98451155 0.4721756
		 0 0 0;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "EBF2E1FC-0B40-B0CB-58E6-27857DE9A9B2";
	setAttr ".ics" -type "componentList" 1 "e[311:312]";
	setAttr ".cv" yes;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "7C62350F-1A4C-A329-0D17-5C8BEC8690F2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[218]" -type "float2" 0.00085693452 0.061345335 ;
	setAttr ".uvtk[224]" -type "float2" -0.00016539037 -0.00053524069 ;
	setAttr ".uvtk[243]" -type "float2" 0.001031421 0.085210711 ;
	setAttr ".uvtk[244]" -type "float2" -0.00017434954 0.00096801837 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "7E557F82-4045-710E-B503-DFA6A299790B";
	setAttr ".ics" -type "componentList" 4 "vtx[29]" "vtx[57]" "vtx[142]" "vtx[144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "F1B33F56-CA40-5310-EAC0-C3AD435DC6E5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[29]" -type "float3" 0 2.1983604 0 ;
	setAttr ".tk[57]" -type "float3" 0 4.1588917 0 ;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "A3AC72C9-074B-E6DC-9875-6EAA1AD4722C";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[211]" -type "float2" -0.00016519387 -0.00017265983 ;
	setAttr ".uvtk[213]" -type "float2" 0.00098766689 0.086440697 ;
	setAttr ".uvtk[218]" -type "float2" -0.00065804715 0.0070294668 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "D1C38C7D-EF4C-E06F-F4AF-A181515E7902";
	setAttr ".ics" -type "componentList" 3 "vtx[9]" "vtx[29]" "vtx[140]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "16DA155D-E441-6257-F5BD-4491552C68DE";
	setAttr ".uopa" yes;
	setAttr ".tk[9]" -type "float3"  0 4.15889168 0;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "6F4D5506-1446-DE93-187E-91AFD0409A1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[269]" "e[272]" "e[275]" "e[278:279]" "e[281]" "e[283]" "e[287]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.51273512840270996;
	setAttr ".re" 283;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	rename -uid "20CED98A-9B45-D92B-FF5B-A8B0D371AAC4";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0 1.0013111 ;
	setAttr ".tk[9]" -type "float3" 0 -0.86891937 0 ;
	setAttr ".tk[13]" -type "float3" 0 0 1.0013112 ;
	setAttr ".tk[28]" -type "float3" 0 -0.1241414 0.2310718 ;
	setAttr ".tk[29]" -type "float3" 0 -0.86891937 0 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.2310718 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.2310718 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.0013111 ;
	setAttr ".tk[57]" -type "float3" 0 -0.86891937 0 ;
	setAttr ".tk[61]" -type "float3" 0 0 1.0013112 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.2310718 ;
	setAttr ".tk[102]" -type "float3" 0 0 1.0013111 ;
	setAttr ".tk[103]" -type "float3" 0 0 1.0013111 ;
	setAttr ".tk[104]" -type "float3" 0 0 1.0013111 ;
	setAttr ".tk[140]" -type "float3" 0 0.1241414 0 ;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "E3903228-B247-49EA-8EEA-D4B7B1FBB4E1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[155]" -type "float2" -0.016497348 0.026928877 ;
	setAttr ".uvtk[176]" -type "float2" 1.9418974e-06 8.9523371e-07 ;
	setAttr ".uvtk[177]" -type "float2" 1.9423385e-06 8.9523371e-07 ;
	setAttr ".uvtk[178]" -type "float2" 2.2033193e-08 1.8071954e-07 ;
	setAttr ".uvtk[179]" -type "float2" 0.0008146101 1.5063263e-07 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "FDFB2D91-4B4A-51E7-C780-84BDAEC3489F";
	setAttr ".ics" -type "componentList" 2 "vtx[118]" "vtx[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "7011EBBB-B646-677C-1BAD-699B37B036A4";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.37883726 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.37882426 ;
	setAttr ".tk[50]" -type "float3" 0 0 0.37883726 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.37882426 ;
	setAttr ".tk[81]" -type "float3" 0 0 -0.076870702 ;
	setAttr ".tk[82]" -type "float3" 0 0 -0.076870702 ;
	setAttr ".tk[83]" -type "float3" 0 0 -0.076885186 ;
	setAttr ".tk[84]" -type "float3" 0 0 -0.076885186 ;
	setAttr ".tk[85]" -type "float3" 0 0 -0.076885186 ;
	setAttr ".tk[86]" -type "float3" 0 0 -0.076885186 ;
	setAttr ".tk[87]" -type "float3" 0 0 0.12877019 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.12877019 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.12876405 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.12876405 ;
	setAttr ".tk[91]" -type "float3" 0 0 0.12876405 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.12876405 ;
	setAttr ".tk[96]" -type "float3" 0 0 0.37883726 ;
	setAttr ".tk[97]" -type "float3" 0 0 0.37883726 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.37883726 ;
	setAttr ".tk[99]" -type "float3" 0 0 0.12877019 ;
	setAttr ".tk[100]" -type "float3" 0 0 0.12877019 ;
	setAttr ".tk[101]" -type "float3" 0 0 0.12877019 ;
	setAttr ".tk[120]" -type "float3" 0 1.0510082 0 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.40062913 ;
	setAttr ".tk[123]" -type "float3" 0 0 -0.16423438 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.076870702 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.28949094 ;
	setAttr ".tk[130]" -type "float3" 0 0 -0.51638293 ;
	setAttr ".tk[131]" -type "float3" 0 0 -0.84741646 ;
	setAttr ".tk[136]" -type "float3" 0 0 -0.047641378 ;
	setAttr ".tk[137]" -type "float3" 0 0 -0.12877019 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.047641378 ;
	setAttr ".tk[148]" -type "float3" 0 0 -0.22478941 ;
	setAttr ".tk[151]" -type "float3" 0 0 -0.22478941 ;
	setAttr ".tk[152]" -type "float3" -0.44138214 1.4901161e-08 -0.6027087 ;
	setAttr ".tk[153]" -type "float3" -0.19839829 0 -0.63002294 ;
	setAttr ".tk[154]" -type "float3" 0 -8.9406967e-08 -0.63511878 ;
	setAttr ".tk[155]" -type "float3" 0.19839829 0 -0.63002294 ;
	setAttr ".tk[156]" -type "float3" 0.44138214 1.4901161e-08 -0.6027087 ;
	setAttr ".tk[157]" -type "float3" 0.44342625 8.9406967e-08 0.53860193 ;
	setAttr ".tk[158]" -type "float3" 0 2.9802322e-08 0.63511884 ;
	setAttr ".tk[159]" -type "float3" -0.44342625 0 0.53860193 ;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "304888E8-0D48-D095-408E-36A4ACA37166";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[197]" -type "float2" 0.010802778 0.028287183 ;
	setAttr ".uvtk[201]" -type "float2" -0.0016325602 1.0328098e-06 ;
	setAttr ".uvtk[202]" -type "float2" -0.00022837443 1.0328083e-06 ;
	setAttr ".uvtk[203]" -type "float2" -1.0968911e-06 7.0231926e-07 ;
	setAttr ".uvtk[204]" -type "float2" -1.0968911e-06 7.0231908e-07 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "D91F77CC-354F-8648-24DF-62BAEED6CFBB";
	setAttr ".ics" -type "componentList" 2 "vtx[125]" "vtx[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "40D48462-7143-5A65-C714-068424057A8D";
	setAttr ".uopa" yes;
	setAttr ".tk[127]" -type "float3"  0 -1.33681226 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "2655E3B2-9D4A-BF8E-947E-FFA1CC081BA0";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 11.76408 60.509434 ;
	setAttr ".rs" 1388814748;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.527738094329834 5.3547048568725586 60.509433746337891 ;
	setAttr ".cbx" -type "double3" 4.527738094329834 18.173454284667969 60.509433746337891 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "112FF93F-204C-BB3C-A424-5F8E102634F8";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 11.76408 62.339504 ;
	setAttr ".rs" 901290917;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.527738094329834 5.3547048568725586 62.339504241943359 ;
	setAttr ".cbx" -type "double3" 4.527738094329834 18.173454284667969 62.339504241943359 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak15";
	rename -uid "5203094A-8C42-1918-973F-BB9E7E318E5F";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[158:165]" -type "float3"  0 0 1.83007109 0 0 1.83007109
		 0 0 1.83007109 0 0 1.83007109 0 0 1.83007109 0 0 1.83007109 0 0 1.83007109 0 0 1.83007109;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "5B2E9021-FA45-AB40-E024-B0AFCD85A273";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 11.76408 62.339504 ;
	setAttr ".rs" 1826817219;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4012985229492188 6.9492692947387695 62.339504241943359 ;
	setAttr ".cbx" -type "double3" 3.4012985229492188 16.578889846801758 62.339504241943359 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak16";
	rename -uid "2EB80B46-9F4C-1939-57BF-AFA97F1A98E2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[166:173]" -type "float3"  -1.12643945 1.59456444 0 0
		 1.59456444 0 -1.12643945 -1.038424969 0 -0.3884815 -1.48597038 0 0 -1.59456444 0
		 0.3884815 -1.48597038 0 1.12643945 -1.038424969 0 1.12643945 1.59456444 0;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "FFF1150B-0E46-30A8-FED5-098A102168CF";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[199]" -type "float2" 0.016992802 0.029535545 ;
	setAttr ".uvtk[205]" -type "float2" -0.0011431797 0.019611593 ;
	setAttr ".uvtk[225]" -type "float2" 0.0003771084 -0.0050971396 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "2804983F-3745-9500-5B77-D79A84A4DEB0";
	setAttr ".ics" -type "componentList" 2 "vtx[131]" "vtx[133]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak17";
	rename -uid "8700F0DB-1A46-D759-5FB6-ED8A826DC600";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[56]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".tk[57]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".tk[131]" -type "float3" 0 0 1.614315 ;
	setAttr ".tk[174]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[175]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[176]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[177]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[178]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[179]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[180]" -type "float3" 0 0 -1.3923457 ;
	setAttr ".tk[181]" -type "float3" 0 0 -1.3923457 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "AC6BD1ED-604C-FAB3-5F4D-FB941F757261";
	setAttr ".ics" -type "componentList" 2 "f[19]" "f[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -17.05917 17.635218 ;
	setAttr ".rs" 1194339130;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5521183013916016 -17.059169769287109 9.7594642639160156 ;
	setAttr ".cbx" -type "double3" 4.5521183013916016 -17.059169769287109 25.510971069335938 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "74E19BDF-664E-1E5E-6933-73B8A1C310FF";
	setAttr ".ics" -type "componentList" 2 "f[19]" "f[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -17.05917 17.635218 ;
	setAttr ".rs" 414728565;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.623039722442627 -17.059169769287109 10.668770790100098 ;
	setAttr ".cbx" -type "double3" 3.623039722442627 -17.059169769287109 24.601665496826172 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak18";
	rename -uid "6EA9F84F-2F43-3E0C-AC18-DFA1A88A3D89";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[181:188]" -type "float3"  -0.92907852 0 0.7749238 0
		 0 0.90930617 -0.92907852 0 -0.76039195 -0.40607733 0 -0.86861169 0 0 -0.90930617
		 0.40607733 0 -0.86861169 0.92907852 0 -0.76039195 0.92907852 0 0.7749238;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "57220D33-EB41-7340-FC7F-E2B627F1328D";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5241983 60.509434 ;
	setAttr ".rs" 702607153;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.527738094329834 -2.3063082695007324 60.509433746337891 ;
	setAttr ".cbx" -type "double3" 4.527738094329834 5.3547048568725586 60.509433746337891 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak19";
	rename -uid "F2716410-AA41-8EF1-DE17-47AFE599D71B";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[189:196]" -type "float3"  0 5.9991436 1.96846867 0 5.9991436
		 1.96846867 0 5.9991436 1.96846867 0 5.9991436 1.96846867 0 5.9991436 1.96846867 0
		 5.9991436 1.96846867 0 5.9991436 1.96846867 0 5.9991436 1.96846867;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "3E3F45E7-6B43-68DA-5542-B2BE27871CCF";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5241983 60.509434 ;
	setAttr ".rs" 281213688;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.6742017269134521 -1.5842088460922241 60.509433746337891 ;
	setAttr ".cbx" -type "double3" 3.6742017269134521 4.6326055526733398 60.509433746337891 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak20";
	rename -uid "9410A2AE-114F-D479-7272-E59303A51D50";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[197:204]" -type "float3"  0 -0.72209942 0 0 0.72209942
		 0 -0.37506875 0.61696625 0 -0.85353637 0.32586163 0 -0.85353637 -0.72209942 0 0.85353637
		 -0.72209942 0 0.85353637 0.32586163 0 0.37506875 0.61696625 0;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "8E8931D2-7B46-D0C2-8F5A-8A8440A2F00E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[28]" "e[41]" "e[103]" "e[138:139]" "e[194]" "e[196]" "e[233]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.052130632102489471;
	setAttr ".re" 196;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak21";
	rename -uid "4EC72505-D845-2933-1FEE-20BB7402E860";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[76]" -type "float3" 0 0 2.7827611 ;
	setAttr ".tk[77]" -type "float3" 0 0 2.7827611 ;
	setAttr ".tk[78]" -type "float3" 0 0 2.7809122 ;
	setAttr ".tk[79]" -type "float3" 0 0 2.7439134 ;
	setAttr ".tk[80]" -type "float3" 0 0 2.7809122 ;
	setAttr ".tk[108]" -type "float3" 0 0 2.7778888 ;
	setAttr ".tk[109]" -type "float3" 0 0 2.7757516 ;
	setAttr ".tk[110]" -type "float3" 0 0 2.7778888 ;
	setAttr ".tk[205]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[206]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[207]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[208]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[209]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[210]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[211]" -type "float3" 0 0 1.2911497 ;
	setAttr ".tk[212]" -type "float3" 0 0 1.2911497 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "4681251A-0748-AFC9-4CF1-23BB55AF9A0C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[138:139]" "e[196]" "e[233]" "e[426]" "e[430]" "e[432]" "e[434]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.44419828057289124;
	setAttr ".re" 196;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "49C1C899-A641-8925-7BA1-A285C3C1DFF4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak22";
	rename -uid "8FD81F71-BF47-EDA5-020F-9AB05FD84BC7";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[76]" -type "float3" -0.32517329 -0.25842252 -0.025842778 ;
	setAttr ".tk[77]" -type "float3" 0.32517329 -0.25842252 -0.025842778 ;
	setAttr ".tk[78]" -type "float3" 0.32463416 0.26839682 -0.025842827 ;
	setAttr ".tk[79]" -type "float3" 0 0.43836737 -0.025842827 ;
	setAttr ".tk[80]" -type "float3" -0.32463416 0.26839682 -0.025842827 ;
	setAttr ".tk[108]" -type "float3" -0.16183662 -0.383515 -0.025842827 ;
	setAttr ".tk[109]" -type "float3" 0 -0.4383674 -0.025842778 ;
	setAttr ".tk[110]" -type "float3" 0.16183662 -0.383515 -0.025842827 ;
	setAttr ".tk[221]" -type "float3" -0.16183662 -0.38351095 0.02584115 ;
	setAttr ".tk[222]" -type "float3" 0 -0.4383648 0.025842827 ;
	setAttr ".tk[223]" -type "float3" 0.16183662 -0.38351095 0.0258411 ;
	setAttr ".tk[224]" -type "float3" 0.32516313 -0.25842252 0.025837492 ;
	setAttr ".tk[225]" -type "float3" 0.32461384 0.26839682 0.025778584 ;
	setAttr ".tk[226]" -type "float3" 0 0.43836737 0.02223813 ;
	setAttr ".tk[227]" -type "float3" -0.32461384 0.26839682 0.025778584 ;
	setAttr ".tk[228]" -type "float3" -0.32516313 -0.25842252 0.025837492 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "D03443E7-6044-E0AD-F448-CB87C47E6714";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 116 "e[6:7]" "e[18]" "e[21]" "e[25]" "e[40]" "e[51:53]" "e[63]" "e[67]" "e[70]" "e[73]" "e[75]" "e[77]" "e[82:83]" "e[90]" "e[93]" "e[97]" "e[101]" "e[111:112]" "e[114]" "e[126]" "e[128]" "e[130:133]" "e[141]" "e[143]" "e[145:146]" "e[150]" "e[152]" "e[155:156]" "e[160]" "e[162]" "e[165:166]" "e[171]" "e[174]" "e[179]" "e[182]" "e[189]" "e[191]" "e[193]" "e[195]" "e[206]" "e[210:212]" "e[215:216]" "e[218]" "e[220]" "e[222:223]" "e[225:226]" "e[235:237]" "e[239]" "e[241]" "e[243]" "e[245:250]" "e[258:259]" "e[261:262]" "e[264:265]" "e[268]" "e[270]" "e[272:274]" "e[276:277]" "e[280]" "e[282]" "e[291]" "e[294]" "e[296]" "e[298]" "e[300]" "e[302]" "e[304]" "e[306:307]" "e[310]" "e[312]" "e[314]" "e[316]" "e[318]" "e[320]" "e[322:323]" "e[326]" "e[328]" "e[330]" "e[332]" "e[334]" "e[336]" "e[338:339]" "e[344]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[371:372]" "e[393]" "e[395]" "e[397:398]" "e[400]" "e[402]" "e[404:405]" "e[410]" "e[412]" "e[414:415]" "e[417]" "e[419]" "e[421:422]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]" "e[435]" "e[437:438]" "e[441]" "e[443]" "e[445]" "e[447]" "e[449]" "e[451]" "e[453:454]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "70DAC377-454B-0133-8200-79A74A0B8197";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[20]" "e[23]" "e[40]" "e[57:59]" "e[87]" "e[89]" "e[109:110]" "e[114:115]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak23";
	rename -uid "DE7A2D7D-8245-F7BA-0BFA-60B059EA38E1";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[33]" -type "float3" 0 0.47926524 0.095853053 ;
	setAttr ".tk[36]" -type "float3" 0 0.92911208 -0.08848685 ;
	setAttr ".tk[37]" -type "float3" 0 2.3891449 0.39819083 ;
	setAttr ".tk[38]" -type "float3" 0 0.83689588 0.39455411 ;
	setAttr ".tk[70]" -type "float3" 0 2.3891449 0.39819083 ;
	setAttr ".tk[71]" -type "float3" 0 0.83689588 0.39455411 ;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "43A20865-EA40-27BE-6B4F-9BAC37B4F310";
	setAttr ".dc" -type "componentList" 6 "f[0]" "f[9]" "f[13]" "f[33]" "f[42]" "f[46]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "F3097CC2-5D46-940F-18A8-FC9A1FCF4081";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10]" "e[27]" "e[32]" "e[73]" "e[98]" "e[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 9.873064 -27.486542 ;
	setAttr ".rs" 1923941608;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.1238322257995605 9.0530691146850586 -30.566537857055664 ;
	setAttr ".cbx" -type "double3" 3.1238322257995605 10.693058013916016 -24.406545639038086 ;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "899210C5-0149-E7BE-F064-DF8EE36D6090";
	setAttr ".ics" -type "componentList" 5 "e[448]" "e[450]" "e[452]" "e[454]" "e[456:457]";
createNode polyTweak -n "polyTweak24";
	rename -uid "BA5748BE-EE44-6CAE-8D06-D3BE5AA63F26";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[225:230]" -type "float3"  0 -5.52725554 -1.7454493 0
		 -5.52725554 -1.7454493 0 -5.52725554 -1.7454493 0 -5.52725554 -1.7454493 0 -5.52725554
		 -1.7454493 0 -5.52725554 -1.7454493;
createNode groupId -n "groupId9";
	rename -uid "89282725-0E43-9B0C-83AB-30A8ABB2C729";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "AD9A1DB1-8A4F-0CA8-41B9-0C8812B60C8D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:228]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "360EBA5F-F84B-3C57-815C-30AF6A930AFC";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[143]" -type "float2" 0.031036923 -0.026394626 ;
	setAttr ".uvtk[160]" -type "float2" -4.4028266e-06 -7.4774755e-07 ;
	setAttr ".uvtk[161]" -type "float2" -4.4028266e-06 -7.4728121e-07 ;
	setAttr ".uvtk[162]" -type "float2" 5.8617825e-05 8.4778054e-05 ;
	setAttr ".uvtk[163]" -type "float2" 5.8632704e-05 8.4765132e-05 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "5551A2C4-574A-7F6C-D062-3EBC1342F18A";
	setAttr ".ics" -type "componentList" 2 "vtx[108]" "vtx[110]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak25";
	rename -uid "CD43A368-FD4A-BE96-5D2F-A28AAF475A6C";
	setAttr ".uopa" yes;
	setAttr ".tk[110]" -type "float3"  0 0.88277817 -3.8146973e-06;
createNode polySplit -n "polySplit5";
	rename -uid "E840ED93-584F-AB0B-FFE6-5CBC5861438F";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483199 -2147483201;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "09777521-3545-202F-6DB3-D896FA01FD5A";
	setAttr ".ics" -type "componentList" 7 "e[429]" "e[431]" "e[433]" "e[435]" "e[437]" "e[439]" "e[441:442]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "785E72C5-9646-0E34-8ECC-4AB185ABD06B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0.90629077 -0.90629077 ;
	setAttr ".tk[75]" -type "float3" 0 0.90629077 0 ;
	setAttr ".tk[213]" -type "float3" 0 0.90629077 0 ;
	setAttr ".tk[221]" -type "float3" 0 0.90629077 0 ;
	setAttr ".tk[224]" -type "float3" 0 0 0.66312546 ;
	setAttr ".tk[225]" -type "float3" 0 -1.165231 -0.19420516 ;
	setAttr ".tk[226]" -type "float3" 0 0 0.66312546 ;
	setAttr ".tk[227]" -type "float3" 0 0.25894022 -0.90629077 ;
	setAttr ".tk[228]" -type "float3" 0 0 0.66312546 ;
	setAttr ".tk[229]" -type "float3" 0 -1.165231 -0.19420516 ;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "EC16DBC3-B141-B57A-22A8-5E8B04C9B929";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[34]" "e[417]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.85;
	setAttr ".sg" 2;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak27";
	rename -uid "9640B973-F448-06B8-6F0D-42BCC5A4EA61";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[18]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[20]" -type "float3" 0 1.2797283 0 ;
	setAttr ".tk[62]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.2797283 0 ;
	setAttr ".tk[73]" -type "float3" 0 1.4302844 0 ;
	setAttr ".tk[74]" -type "float3" 0 1.4302844 0 ;
	setAttr ".tk[210]" -type "float3" 0 1.2797283 0 ;
	setAttr ".tk[211]" -type "float3" 0 1.2797283 0 ;
	setAttr ".tk[220]" -type "float3" 0 0.45166895 0 ;
	setAttr ".tk[222]" -type "float3" 0 0.45166895 0 ;
	setAttr ".tk[223]" -type "float3" 0 0.45166895 0 ;
	setAttr ".tk[225]" -type "float3" 0 0.45166895 0 ;
	setAttr ".tk[227]" -type "float3" 0 0.48930803 0 ;
	setAttr ".tk[229]" -type "float3" 0 0.48930803 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E391A5D5-8947-7BDE-7D95-DE8456C895CF";
	setAttr ".dc" -type "componentList" 2 "e[437:439]" "e[454]";
createNode polySplit -n "polySplit6";
	rename -uid "2D9C77D1-AB47-24D2-A1F0-2CA49A704036";
	setAttr -s 3 ".e[0:2]"  0 0.51020598 0;
	setAttr -s 3 ".d[0:2]"  -2147483601 -2147483616 -2147483212;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "0FFB570E-0243-F92E-8AF0-AEBB05B6F3BB";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483204 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "E1BF28FB-F641-E342-DFB4-58AB0D16E8F4";
	setAttr -s 3 ".e[0:2]"  1 0.495222 0;
	setAttr -s 3 ".d[0:2]"  -2147483520 -2147483546 -2147483545;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "26AE1798-CF4C-747C-9026-A98EE8128172";
	setAttr ".ics" -type "componentList" 1 "f[2:7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.049420595 -18.411995 17.851479 ;
	setAttr ".rs" 1185048638;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.6707277297973633 -19.762996673583984 9.7880725860595703 ;
	setAttr ".cbx" -type "double3" 4.5718865394592285 -17.060993194580078 25.914886474609375 ;
	setAttr ".raf" no;
createNode groupId -n "groupId10";
	rename -uid "CDDE8FEE-F843-181F-56BF-9A8AAFB516F7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "1AE49461-FF4B-A0A5-9323-E39113326105";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:21]";
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "BD9569E9-4C42-BE85-07CC-F88B6D80B149";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[3]" "e[10]" "e[13]" "e[24]" "e[27:28]" "e[71]" "e[84:85]" "e[96:97]" "e[179:180]" "e[182:184]" "e[419:426]" "e[428]" "e[430:431]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak28";
	rename -uid "401D1542-A747-8DAD-54EE-EEAF16BC147A";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[3]" -type "float3" -0.49457845 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.49151242 0 0 ;
	setAttr ".tk[18]" -type "float3" 0 1.1364188 0 ;
	setAttr ".tk[19]" -type "float3" -0.49615178 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.49465883 0 0 ;
	setAttr ".tk[47]" -type "float3" 0.49457845 0 0 ;
	setAttr ".tk[55]" -type "float3" 0.49151242 0 0 ;
	setAttr ".tk[62]" -type "float3" 0 1.1364188 0 ;
	setAttr ".tk[63]" -type "float3" 0.49615178 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.49465883 0 0 ;
	setAttr ".tk[71]" -type "float3" -0.44532967 0 0 ;
	setAttr ".tk[72]" -type "float3" 0.44532967 0 0 ;
	setAttr ".tk[73]" -type "float3" 0.44459149 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.44459149 0 0 ;
	setAttr ".tk[102]" -type "float3" -0.22163768 0 0 ;
	setAttr ".tk[104]" -type "float3" 0.22163768 0 0 ;
	setAttr ".tk[105]" -type "float3" 0.24726447 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.24726447 0 0 ;
	setAttr ".tk[108]" -type "float3" -0.24726447 0 0 ;
	setAttr ".tk[110]" -type "float3" 0.24726447 0 0 ;
	setAttr ".tk[124]" -type "float3" 0 0 0.35558128 ;
	setAttr ".tk[132]" -type "float3" 0 0 0.35558128 ;
	setAttr ".tk[206]" -type "float3" -0.24726447 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.24726447 0 0 ;
	setAttr ".tk[209]" -type "float3" 0.49678591 0 0 ;
	setAttr ".tk[210]" -type "float3" 0.49592754 0 0 ;
	setAttr ".tk[211]" -type "float3" -0.49592754 0 0 ;
	setAttr ".tk[212]" -type "float3" -0.49678591 0 0 ;
	setAttr ".tk[213]" -type "float3" -0.49151242 0 0 ;
	setAttr ".tk[214]" -type "float3" -0.49465883 0 0 ;
	setAttr ".tk[215]" -type "float3" 0 -1.3493897 0 ;
	setAttr ".tk[216]" -type "float3" 0 -1.3493897 0 ;
	setAttr ".tk[217]" -type "float3" 0.49151242 0 0 ;
	setAttr ".tk[218]" -type "float3" 0.49465883 0 0 ;
	setAttr ".tk[220]" -type "float3" -0.24771303 0 0 ;
	setAttr ".tk[222]" -type "float3" 0.24771303 0 0 ;
	setAttr ".tk[223]" -type "float3" 0.24761999 0 0 ;
	setAttr ".tk[224]" -type "float3" -4.6037643e-05 0 0 ;
	setAttr ".tk[225]" -type "float3" -0.24780172 0 0 ;
	setAttr ".tk[227]" -type "float3" -0.24771303 0 0 ;
	setAttr ".tk[228]" -type "float3" 0.24771303 0 0 ;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "77380CC8-4843-E1F7-87F8-63972EBF26D7";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[303]" -type "float2" -5.0354163e-05 -0.22546722 ;
	setAttr ".uvtk[321]" -type "float2" 5.0357921e-05 -0.22546722 ;
	setAttr ".uvtk[324]" -type "float2" 3.7725222e-05 1.4702861e-05 ;
	setAttr ".uvtk[325]" -type "float2" -3.7725342e-05 1.4702861e-05 ;
	setAttr ".uvtk[326]" -type "float2" 0.0051103197 1.1566321e-05 ;
	setAttr ".uvtk[327]" -type "float2" 0.0051077567 1.3082152e-05 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "A1CB932A-194E-ACC9-09CF-148A7BCB6F92";
	setAttr ".ics" -type "componentList" 2 "vtx[219]" "vtx[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak29";
	rename -uid "81621226-AB45-C327-2CE2-2DA5849271B2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[11]" -type "float3" 0 1.3550063 0 ;
	setAttr ".tk[22]" -type "float3" 0 1.3550063 0 ;
	setAttr ".tk[55]" -type "float3" 0 1.3550063 0 ;
	setAttr ".tk[213]" -type "float3" 0 0 0.18819538 ;
	setAttr ".tk[217]" -type "float3" 0 0 0.18819538 ;
	setAttr ".tk[219]" -type "float3" 0 1.6929455 0.28006554 ;
createNode polySplit -n "polySplit9";
	rename -uid "525745A4-E440-3D0F-2141-5A9241008665";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483213 -2147483221;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "45D207CA-304B-442C-67A1-F5B1C9AB96B0";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483216 -2147483228;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "382C0C61-D943-668D-1ED2-6D82C296D988";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[427]" "e[429]" "e[431]" "e[433]" "e[435]" "e[456]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge6";
	rename -uid "EFB1CA29-6F43-98CB-5AF7-3F887AFDA2A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[420]" "e[424]" "e[431:432]" "e[434]" "e[457]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge7";
	rename -uid "046D51B0-DC47-F4EA-B64E-77A127CD76D0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[420]" "e[424]" "e[427]" "e[429]" "e[432:435]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge8";
	rename -uid "B65449AD-3E48-AC31-9A67-ECBFC9B22FDC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[25]" "e[93]" "e[176]" "e[403:404]" "e[408]" "e[413]" "e[437]" "e[439:440]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge9";
	rename -uid "281B6537-3149-8DB5-366B-88B6503E90C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[3]" "e[13]" "e[26]" "e[84:85]" "e[94]" "e[179]" "e[181]" "e[183]" "e[185]" "e[199]" "e[206]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge10";
	rename -uid "1F6B95E0-384B-D8D8-7A02-8F931122F98D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[24]" "e[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak30";
	rename -uid "FA15E0D5-424B-6685-0D84-DA9AD8B96478";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[75]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[77]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[78]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[80]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[81]" -type "float3" 0.3459529 0.61081475 -0.24281366 ;
	setAttr ".tk[82]" -type "float3" -0.3459529 0.61081475 -0.24281366 ;
	setAttr ".tk[83]" -type "float3" -0.3459529 -0.2242201 -0.2428133 ;
	setAttr ".tk[84]" -type "float3" -0.3459529 -0.62258726 -0.2428133 ;
	setAttr ".tk[85]" -type "float3" 0.3459529 -0.62258726 -0.2428133 ;
	setAttr ".tk[86]" -type "float3" 0.3459529 -0.2242201 -0.2428133 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[91]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[92]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[93]" -type "float3" 0.13574293 0.73829955 -0.24281366 ;
	setAttr ".tk[94]" -type "float3" 0 0.77624476 -0.24281366 ;
	setAttr ".tk[95]" -type "float3" -0.13574293 0.73829955 -0.24281366 ;
	setAttr ".tk[114]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[115]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[116]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.72843993 ;
	setAttr ".tk[126]" -type "float3" -0.17295915 -0.7278384 -0.2428133 ;
	setAttr ".tk[127]" -type "float3" 0 -0.77624476 -0.24281301 ;
	setAttr ".tk[128]" -type "float3" 0.17295915 -0.7278384 -0.2428133 ;
	setAttr ".tk[138]" -type "float3" 0 0 0.36421996 ;
	setAttr ".tk[141]" -type "float3" 0 0 0.36421996 ;
createNode polySoftEdge -n "polySoftEdge11";
	rename -uid "0F600AED-5C49-00C6-A244-BC9957D0F5CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10]" "e[24]" "e[96:97]" "e[180]" "e[182]" "e[184]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "47339AB9-2C4E-D815-1307-F68DBC90A163";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0]" "e[70]" "e[133]" "e[135]" "e[137:138]" "e[187]" "e[189]" "e[191]" "e[218]" "e[220]" "e[231]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.65160512924194336;
	setAttr ".dr" no;
	setAttr ".re" 138;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "D9929ACF-6F45-3CE9-0126-5EB090C7E3F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[133]" "e[135]" "e[137:138]" "e[189]" "e[218]" "e[463]" "e[465]" "e[471]" "e[475]" "e[477]" "e[479]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.77552664279937744;
	setAttr ".dr" no;
	setAttr ".re" 138;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "CE862E82-534C-5BC3-D704-69A20592DC8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[133]" "e[135]" "e[137:138]" "e[189]" "e[218]" "e[487]" "e[489]" "e[495]" "e[499]" "e[501]" "e[503]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.69924753904342651;
	setAttr ".dr" no;
	setAttr ".re" 138;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "E161BDFC-5D41-84F6-EAF2-238691F2CC35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[133]" "e[135]" "e[137:138]" "e[189]" "e[218]" "e[511]" "e[513]" "e[519]" "e[523]" "e[525]" "e[527]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.59505069255828857;
	setAttr ".dr" no;
	setAttr ".re" 138;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "0AE9973A-5C4D-4FBA-E958-F2BCF0FC508B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[0]" "e[70]" "e[187]" "e[191]" "e[220]" "e[231]" "e[458:459]" "e[461]" "e[467]" "e[469]" "e[473]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.66720128059387207;
	setAttr ".dr" no;
	setAttr ".re" 0;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "E51FC801-2344-C3C7-30DA-44A55C6966C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[133]" "e[135]" "e[137:138]" "e[189]" "e[218]" "e[535]" "e[537]" "e[543]" "e[547]" "e[549]" "e[551]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.48801562190055847;
	setAttr ".re" 549;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "8850E28E-994A-8CE9-908A-C19A0B2CB9DA";
	setAttr ".ics" -type "componentList" 6 "f[1]" "f[30]" "f[105:106]" "f[109:110]" "f[254:259]" "f[283:288]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.5233836 45.993679 ;
	setAttr ".rs" 1386195314;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5277385711669922 -2.3079376220703125 37.477546691894531 ;
	setAttr ".cbx" -type "double3" 4.5277385711669922 5.3547048568725586 54.509811401367188 ;
	setAttr ".raf" no;
createNode polySoftEdge -n "polySoftEdge12";
	rename -uid "EB125F97-B849-D603-6564-6B97FAF57F67";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "e[587:588]" "e[590]" "e[592]" "e[595:596]" "e[598]" "e[600]" "e[603]" "e[605]" "e[608:609]" "e[613]" "e[615]" "e[620:621]" "e[623]" "e[625]" "e[628]" "e[630]" "e[633]" "e[635]" "e[638]" "e[640]" "e[643]" "e[645]" "e[648:649]" "e[653:654]" "e[656]" "e[658]" "e[661]" "e[663]" "e[666]" "e[668]" "e[671]" "e[673]" "e[676]" "e[678]" "e[681]" "e[683]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak31";
	rename -uid "87E3060E-3845-DEB7-0817-54B9D05B1D35";
	setAttr ".uopa" yes;
	setAttr -s 114 ".tk[230:343]" -type "float3"  0 0 -0.62157899 0 0 -0.62157899
		 0 0 -0.62157899 0 0 -0.62157899 0 0 -0.62157899 0 0 -0.62157899 0 0 -0.62157899 0
		 0 -0.62157899 0 0 -0.62157899 0 0 -0.62157899 0 0 -0.62157899 0 0 -0.62157899 0 0
		 -0.062157929 0 0 -0.062157929 0 0 -0.062157929 0 0 -0.062157929 0 0 -0.062157929
		 0 0 -0.062157929 0 0 -0.062157929 0 0 -0.062157929 0 0 -0.062157929 0 0 -0.062157929
		 0 0 -0.062157929 0 0 -0.062157929 0 0 0.80805254 0 0 0.80805254 0 0 0.80805254 0
		 0 0.80805254 0 0 0.80805254 0 0 0.80805254 0 0 0.80805254 0 0 0.80805254 0 0 0.80805254
		 0 0 0.80805254 0 0 0.80805254 0 0 0.80805254 0 0 1.42963123 0 0 1.42963123 0 0 1.42963123
		 0 0 1.42963123 0 0 1.42963123 0 0 1.42963123 0 0 1.42963123 0 0 1.42963123 0 0 1.42963123
		 0 0 1.42963123 0 0 1.42963123 -2.2351742e-08 2.9802322e-08 1.42963123 5.9604645e-08
		 -2.2351742e-08 -0.62157899 -2.9802322e-08 4.4703484e-08 -0.62157917 5.9604645e-08
		 -2.2351742e-08 -0.62157917 5.9604645e-08 4.4703484e-08 -0.62157899 5.9604645e-08
		 4.4703484e-08 -0.62157917 -5.9604645e-08 4.4703484e-08 -0.62157899 -5.9604645e-08
		 -2.2351742e-08 -0.62157899 -5.9604645e-08 -2.2351742e-08 -0.62157899 -5.9604645e-08
		 4.4703484e-08 -0.62157899 2.2351742e-08 0 -0.62157899 2.2351742e-08 2.9802322e-08
		 -0.62157899 -2.4815418e-24 -2.9802322e-08 -0.62157899 8.2718061e-25 0 0.87021047
		 -2.2351742e-08 0 0.87021047 5.9604645e-08 -2.2351742e-08 0.87021047 5.9604645e-08
		 4.4703484e-08 0.87021047 -5.9604645e-08 4.4703484e-08 0.87021047 -5.9604645e-08 -2.2351742e-08
		 0.87021047 -5.9604645e-08 -2.2351742e-08 0.87021065 -5.9604645e-08 4.4703484e-08
		 0.87021065 2.9802322e-08 4.4703484e-08 0.87021053 2.9802322e-08 -1.4901161e-08 0.87021047
		 -1.6543612e-24 -2.9802322e-08 0.87021047 3.3087225e-24 -4.4703484e-08 0.87021065
		 -0.44410294 -0.37579456 0.90513921 -0.44410294 0.16946875 0.90513933 -0.44410285
		 0.16946867 1.44282222 -0.44410285 -0.37579456 1.4428221 0.44410297 -0.37579453 1.44282222
		 0.44410297 -0.37579453 0.90513921 0.44410291 0.1694687 1.44282198 0.44410291 0.1694687
		 0.90513921 -0.1947827 0.32115763 1.44282126 -0.19482517 0.3211318 0.90513885 0.19482517
		 0.3211318 0.90513921 0.1947827 0.32115763 1.44282198 -3.4399646e-17 0.3757762 0.90513921
		 -3.8869263e-17 0.37579459 1.44282198 -0.44410291 -0.37579456 -0.57842135 -0.44410291
		 0.1694687 -0.57842135 -0.44410291 0.1694687 1.32414687 -0.44410291 -0.37579456 1.32414687
		 -0.1948843 0.32109559 1.32414687 -0.19494714 0.32105771 -0.57842135 -2.154675e-17
		 0.37572348 -0.57842135 -2.816683e-17 0.37575045 1.32414687 0.19494714 0.32105771
		 -0.57842135 0.1948843 0.32109559 1.32414687 0.44410291 0.1694687 1.32414687 0.44410291
		 0.1694687 -0.57842135 0.44410291 -0.37579456 1.32414687 0.44410291 -0.37579456 -0.57842135
		 0.44410288 -0.37579456 -1.1777724 0.44410288 0.1694687 -1.1777724 0.44410288 -0.37579456
		 -0.11258781 0.44410288 0.1694687 -0.11258781 0.19500749 0.32102081 -0.11258781 0.19505538
		 0.32099178 -1.1777724 -1.0125135e-17 0.37567639 -1.1777724 -1.517554e-17 0.37569746
		 -0.11258781 -0.19505538 0.32099178 -1.1777724 -0.19500749 0.32102081 -0.11258781
		 -0.44410288 0.1694687 -0.11258781 -0.44410288 0.1694687 -1.1777724 -0.44410288 -0.37579456
		 -1.1777724 -0.44410288 -0.37579456 -0.11258781;
createNode polySoftEdge -n "polySoftEdge13";
	rename -uid "9D18CB7D-2544-C184-849D-4481EB26B51E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[19]" "e[100]" "e[244]" "e[248]" "e[253]" "e[257]" "e[262]" "e[271]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282]" "e[284]" "e[286:287]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge14";
	rename -uid "800614F9-3E45-F7B9-157F-4C8EBCBBCE75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[318]" "e[322]" "e[324]" "e[326]" "e[328]" "e[331]" "e[333]" "e[335:336]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak32";
	rename -uid "C7A08278-B24F-4693-3E48-E79A1FC67735";
	setAttr ".uopa" yes;
	setAttr -s 208 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[4]" -type "float3" -0.46057531 -0.17802119 -0.78895736 ;
	setAttr ".tk[7]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[8]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[10]" -type "float3" -0.46057531 1.2690815 -0.38001108 ;
	setAttr ".tk[13]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[16]" -type "float3" -0.46057531 0.97098482 0.64589959 ;
	setAttr ".tk[17]" -type "float3" -0.46057531 -0.17802118 0.30018952 ;
	setAttr ".tk[18]" -type "float3" 0 -1.2430806 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.17801948 -1.056788 ;
	setAttr ".tk[26]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[27]" -type "float3" 0 1.3301533 -0.58842057 ;
	setAttr ".tk[28]" -type "float3" 0 -1.9087198 0.33286712 ;
	setAttr ".tk[29]" -type "float3" 0 -0.17802119 0.52725548 ;
	setAttr ".tk[30]" -type "float3" 0 0.89751768 0.88874102 ;
	setAttr ".tk[31]" -type "float3" 0 -0.96768051 -1.3346876 ;
	setAttr ".tk[32]" -type "float3" -0.46057725 -1.2349483 -1.0802171 ;
	setAttr ".tk[33]" -type "float3" -0.46057689 -1.7344084 -0.0020477006 ;
	setAttr ".tk[34]" -type "float3" 0 1.9087198 -0.16535287 ;
	setAttr ".tk[35]" -type "float3" 0 1.6106236 0.86055791 ;
	setAttr ".tk[36]" -type "float3" -0.7093882 1.3246691 -0.57957089 ;
	setAttr ".tk[37]" -type "float3" -0.7093882 0.91697216 0.82353479 ;
	setAttr ".tk[38]" -type "float3" -0.7093882 1.8176337 -0.40054452 ;
	setAttr ".tk[39]" -type "float3" -0.7093882 1.4099367 1.002561 ;
	setAttr ".tk[40]" -type "float3" 0 1.4081955 -0.86460614 ;
	setAttr ".tk[41]" -type "float3" 0 1.90116 -0.68557948 ;
	setAttr ".tk[42]" -type "float3" 0 0.81649327 1.155661 ;
	setAttr ".tk[43]" -type "float3" 0 1.309458 1.3346876 ;
	setAttr ".tk[45]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[48]" -type "float3" 0.46057531 -0.17802119 -0.78895736 ;
	setAttr ".tk[51]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[52]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[54]" -type "float3" 0.46057531 1.2690815 -0.38001108 ;
	setAttr ".tk[57]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[60]" -type "float3" 0.46057531 0.97098482 0.64589959 ;
	setAttr ".tk[61]" -type "float3" 0.46057531 -0.17802118 0.30018952 ;
	setAttr ".tk[62]" -type "float3" 0 -1.2430806 0 ;
	setAttr ".tk[65]" -type "float3" 0.46057725 -1.2349483 -1.0802171 ;
	setAttr ".tk[66]" -type "float3" 0.46057689 -1.7344084 -0.0020477006 ;
	setAttr ".tk[67]" -type "float3" 0.7093882 1.3246691 -0.57957089 ;
	setAttr ".tk[68]" -type "float3" 0.7093882 0.91697216 0.82353479 ;
	setAttr ".tk[69]" -type "float3" 0.7093882 1.8176337 -0.40054452 ;
	setAttr ".tk[70]" -type "float3" 0.7093882 1.4099367 1.002561 ;
	setAttr ".tk[75]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[76]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[77]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[78]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[79]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[80]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[81]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[82]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[83]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[84]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[85]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[86]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[87]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[88]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[89]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[90]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[91]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[92]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[93]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[94]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[95]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[114]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[115]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[116]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[120]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[121]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[122]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[126]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[127]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[128]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[129]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[130]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[131]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[132]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[133]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[134]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[135]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[136]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[137]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[138]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[139]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[140]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[141]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[142]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[143]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[144]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[145]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[146]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[147]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[148]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[149]" -type "float3" 0 0 1.4180473 ;
	setAttr ".tk[230]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[231]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[232]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[233]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[234]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[235]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[236]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[237]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[238]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[239]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[240]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[241]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[242]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[243]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[244]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[245]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[246]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[247]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[248]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[249]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[250]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[251]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[252]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[253]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[254]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[255]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[256]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[257]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[258]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[259]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[260]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[261]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[262]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[263]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[264]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[265]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[266]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[267]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[268]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[269]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[270]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[271]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[272]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[273]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[274]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[275]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[276]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[277]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[278]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[279]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[280]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[281]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[282]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[283]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[284]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[285]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[286]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[287]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[288]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[289]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[290]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[291]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[292]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[293]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[294]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[295]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[296]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[297]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[298]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[299]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[300]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[301]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[302]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[303]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[304]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[305]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[306]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[307]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[308]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[309]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[310]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[311]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[312]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[313]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[314]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[315]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[316]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[317]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[318]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[319]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[320]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[321]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[322]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[323]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[324]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[325]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[326]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[327]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[328]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[329]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[330]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[331]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[332]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[333]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[334]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[335]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[336]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[337]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[338]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[339]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[340]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[341]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[342]" -type "float3" 0 0 -2.4815822 ;
	setAttr ".tk[343]" -type "float3" 0 0 -2.4815822 ;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "CC5B0185-7747-A55B-7BD8-8CA64DFB7BC0";
	setAttr ".txf" -type "matrix" 1.2054110889286835 0 0 0 0 1.2054110889286835 0 0
		 0 0 1.2054110889286835 0 0 0 0 1;
createNode polyTweak -n "polyTweak33";
	rename -uid "BEBF3938-D147-8590-4B92-C8BA209FEB66";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[24:35]" -type "float3"  0.59361213 0.30262262 -0.88624638
		 0.59361213 -0.30262262 -0.88624638 0.59361213 -0.30262262 0.82187045 0.59361213 0.30262262
		 0.82187045 -2.191091e-06 -0.30262262 1.035753489 -2.191091e-06 0.30262262 1.035753489
		 -2.191091e-06 0.30262262 -1.035753608 -2.191091e-06 -0.30262262 -1.035753608 -0.59361213
		 -0.30262262 0.82187045 -0.59361213 0.30262262 0.82187045 -0.59361213 -0.30262262
		 -0.88624638 -0.59361213 0.30262262 -0.88624638;
createNode transformGeometry -n "transformGeometry2";
	rename -uid "4B779CDF-744E-16B3-824B-2DBDDBCC2D3A";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -3.5502511744681211 3.5502511744681264 1;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "C65CE042-234C-2E6D-A660-2AB8BFD7E561";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[194]" -type "float2" 0.0028355818 -0.003083183 ;
	setAttr ".uvtk[214]" -type "float2" -0.0011693778 0.0013945604 ;
	setAttr ".uvtk[219]" -type "float2" 0.0025374417 -0.010659698 ;
	setAttr ".uvtk[220]" -type "float2" 0.00063291879 -0.021485277 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "25AE4CE8-1640-7D7B-B3DC-01ACC60FFE90";
	setAttr ".ics" -type "componentList" 3 "vtx[52]" "vtx[140]" "vtx[146:147]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak34";
	rename -uid "6208DA0D-4B40-5412-F765-46AC29EDAFE0";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[146:147]" -type "float3"  -0.65568781 -1.0064907074
		 -0.0017585754 -0.63200235 -1.40244675 -0.64923859;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "47D5B240-B647-7784-9FB9-26A8DC525FDA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[194]" -type "float2" 0.0051824725 -0.0046358169 ;
	setAttr ".uvtk[201]" -type "float2" 0.00090978103 -0.00022420287 ;
	setAttr ".uvtk[218]" -type "float2" 0.0064635631 -0.011390083 ;
createNode polyMergeVert -n "polyMergeVert17";
	rename -uid "D2656DE3-7249-F8D5-303E-5CBD012634A9";
	setAttr ".ics" -type "componentList" 3 "vtx[136]" "vtx[140]" "vtx[145]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak35";
	rename -uid "05A27FCD-3945-B7F2-05C2-5F96B2EA2A80";
	setAttr ".uopa" yes;
	setAttr ".tk[145]" -type "float3"  -0.23915172 -0.97762084 -0.013870239;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "C663FAFA-1D4A-BDF8-5173-569D8AB7F3A0";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[199]" -type "float2" -0.00077361654 0.001090683 ;
	setAttr ".uvtk[201]" -type "float2" 0.0013846621 -0.0053285677 ;
	setAttr ".uvtk[217]" -type "float2" 0.0050753746 -0.01291897 ;
createNode polyMergeVert -n "polyMergeVert18";
	rename -uid "02CAA9BC-4748-1CA0-45D1-F5886CFA0943";
	setAttr ".ics" -type "componentList" 3 "vtx[132]" "vtx[136]" "vtx[144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak36";
	rename -uid "C3AE6CCE-B04B-0D6B-BC08-50A7E69355AD";
	setAttr ".uopa" yes;
	setAttr ".tk[144]" -type "float3"  0 -0.95511293 0.44300079;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "47D50D21-974C-05D4-687C-B0A3508EFDF2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[199]" -type "float2" 0.0023107601 0.0054881237 ;
	setAttr ".uvtk[203]" -type "float2" -5.5582666e-05 -0.0011877831 ;
	setAttr ".uvtk[216]" -type "float2" 0.0062541482 -0.012021462 ;
createNode polyMergeVert -n "polyMergeVert19";
	rename -uid "A18364FF-D443-672A-F8B6-AA968FB70E02";
	setAttr ".ics" -type "componentList" 3 "vtx[132]" "vtx[135]" "vtx[143]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak37";
	rename -uid "B7718B4D-BF46-41F8-FD1B-BFA324E98B89";
	setAttr ".uopa" yes;
	setAttr ".tk[143]" -type "float3"  0.23915172 -0.97762084 -0.013870239;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "5830C7BA-4849-621F-CA84-FA8368F7F244";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[184]" -type "float2" -0.0011716201 0.0013248742 ;
	setAttr ".uvtk[186]" -type "float2" 0.0030591011 -0.0032046332 ;
	setAttr ".uvtk[215]" -type "float2" 0.0034466945 -0.010718786 ;
	setAttr ".uvtk[217]" -type "float2" 0.0013674881 -0.021904264 ;
createNode polyMergeVert -n "polyMergeVert20";
	rename -uid "CBC5A9D0-F84D-FF25-5FEE-D9AB7CE6D907";
	setAttr ".ics" -type "componentList" 4 "vtx[8]" "vtx[139]" "vtx[142]" "vtx[144]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak38";
	rename -uid "D2349F33-2D4F-B1ED-D394-68BE7A3939A6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[142]" -type "float3" 0.65568781 -1.0064907 -0.0017585754 ;
	setAttr ".tk[144]" -type "float3" 0.63200283 -1.4024458 -0.64923859 ;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "276F365B-724A-AF12-09B4-EC88A223E11E";
	setAttr ".uopa" yes;
	setAttr -s 4 ".uvtk";
	setAttr ".uvtk[184]" -type "float2" -0.0032043862 0.0013794629 ;
	setAttr ".uvtk[190]" -type "float2" 0.0012118514 -0.0031083766 ;
	setAttr ".uvtk[215]" -type "float2" 0.0038992621 -0.014747907 ;
createNode polyMergeVert -n "polyMergeVert21";
	rename -uid "D17E5634-4A45-7E1B-A1A2-EE88A0917674";
	setAttr ".ics" -type "componentList" 3 "vtx[8]" "vtx[26]" "vtx[142]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak39";
	rename -uid "2BEEC78B-5A41-103F-5BAB-AE8F431C9793";
	setAttr ".uopa" yes;
	setAttr ".tk[142]" -type "float3"  0 -1.33364451 -0.77937889;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "8B1E4025-5A46-6512-EA16-7B893913E801";
	setAttr ".ics" -type "componentList" 2 "e[237]" "e[240]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak40";
	rename -uid "CED269F5-1446-89CC-6FAF-39AC34C838C7";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[1]" -type "float3" -0.90965068 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.90965068 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.93903905 0 0 ;
	setAttr ".tk[7]" -type "float3" -0.90965068 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.90965068 -3.9772897 0 ;
	setAttr ".tk[9]" -type "float3" -0.93903905 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.90965068 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.90965068 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.90121502 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.89278013 0 0 ;
	setAttr ".tk[26]" -type "float3" 0 -1.5979502 -0.14852324 ;
	setAttr ".tk[45]" -type "float3" 0.79254454 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.79254454 0 0 ;
	setAttr ".tk[50]" -type "float3" 0.82193273 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.79254383 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.79254383 -3.9772897 0 ;
	setAttr ".tk[53]" -type "float3" 0.82193273 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.79254454 0 0 ;
	setAttr ".tk[57]" -type "float3" 0.79254454 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.78410882 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.77567369 0 0 ;
	setAttr ".tk[129]" -type "float3" -0.71951187 0 0 ;
	setAttr ".tk[131]" -type "float3" 0.60240537 0 0 ;
	setAttr ".tk[132]" -type "float3" 0 1.8279648 0 ;
	setAttr ".tk[135]" -type "float3" 0 1.9350476 0 ;
	setAttr ".tk[136]" -type "float3" 0 1.9350476 0 ;
	setAttr ".tk[138]" -type "float3" -0.66995072 0 0 ;
	setAttr ".tk[139]" -type "float3" -0.91108841 0.9821701 -0.68222404 ;
	setAttr ".tk[140]" -type "float3" 0.79398233 0.9821701 -0.68222404 ;
	setAttr ".tk[141]" -type "float3" 0.55284435 0 0 ;
createNode polySoftEdge -n "polySoftEdge15";
	rename -uid "0172C384-5B4E-5DE0-FEBB-9BB862657DF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[19]" "e[100]" "e[240]" "e[244]" "e[247]" "e[251]" "e[256]" "e[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "C8B7D8DD-8942-A390-366C-B9B48B8C6F74";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[19]" "e[100]" "e[240]" "e[244]" "e[247]" "e[251]" "e[256]" "e[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.7;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "560A83B2-3B4E-FD9A-18B3-E9A511B98FC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[122:123]" "e[125]" "e[170]" "e[172]" "e[193]" "e[200]" "e[394]" "e[400]" "e[403]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak41";
	rename -uid "0318AA29-324F-A9FF-530C-82B322EF53AE";
	setAttr ".uopa" yes;
	setAttr -s 116 ".tk";
	setAttr ".tk[0]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[1]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[2]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[3]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[6]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".tk[7]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[10]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[14]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[18]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[19]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[21]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[42]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[43]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[44]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[45]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[49]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[50]" -type "float3" 0 0 1.1920929e-07 ;
	setAttr ".tk[52]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[56]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[60]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[61]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[68]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[69]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[72]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[73]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[78]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[79]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[84]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[85]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[86]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[87]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[88]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[89]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[90]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[91]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[92]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[93]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[94]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[95]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[96]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[97]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[98]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[99]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[100]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[101]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[102]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[103]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[104]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[105]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[106]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[107]" -type "float3" 0 3.3408861 5.3825369 ;
	setAttr ".tk[108]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[109]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[110]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[111]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[112]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[113]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[136]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[137]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[138]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[139]" -type "float3" 0 3.3408861 1.1920929e-07 ;
	setAttr ".tk[140]" -type "float3" 0 3.3408861 1.1920929e-07 ;
	setAttr ".tk[144]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[145]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[146]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[147]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[148]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[152]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[153]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[154]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[155]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[156]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[190]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[191]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[192]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[193]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[196]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[197]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[198]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[199]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[200]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[201]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[202]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[203]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[204]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[205]" -type "float3" 0 0 5.3825369 ;
	setAttr ".tk[221]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[222]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[223]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[224]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[225]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[233]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[234]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[235]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[236]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[237]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[245]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[246]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[247]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[248]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[249]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[257]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[258]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[259]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[260]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[261]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[262]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[263]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[264]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[265]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[266]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[274]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[275]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[276]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[277]" -type "float3" 0 3.3408861 0 ;
	setAttr ".tk[285]" -type "float3" 0 3.3408861 0 ;
createNode polySoftEdge -n "polySoftEdge16";
	rename -uid "E3F6B116-3A45-10A9-5EE5-6BA73FE5CBCF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[654]" "e[656]" "e[659]" "e[662]" "e[665]" "e[667]" "e[669]" "e[672]" "e[675]" "e[677]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak42";
	rename -uid "9447E919-8346-FB56-3CBA-66A1BFC10311";
	setAttr ".uopa" yes;
	setAttr -s 54 ".tk";
	setAttr ".tk[3]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[10]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[18]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[19]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[21]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[45]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[52]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[60]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[61]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[95]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[96]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[97]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[98]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[99]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[100]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[183]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[184]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[185]" -type "float3" 0.051246919 0.13062367 -0.30668968 ;
	setAttr ".tk[186]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[187]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[188]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[189]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[190]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[191]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[192]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[193]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[194]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[195]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[196]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[197]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[198]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[199]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[200]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[201]" -type "float3" 0.051246919 -0.18387274 -0.30668968 ;
	setAttr ".tk[334]" -type "float3" 0.39775181 -0.015277863 -0.2318666 ;
	setAttr ".tk[335]" -type "float3" 0 0 -0.32473654 ;
	setAttr ".tk[336]" -type "float3" 0.23035049 0.36807919 -0.23570371 ;
	setAttr ".tk[337]" -type "float3" 0 0 -0.32473665 ;
	setAttr ".tk[338]" -type "float3" 0 0 -0.32473665 ;
	setAttr ".tk[339]" -type "float3" 0.37149525 0.25065899 -0.19798827 ;
	setAttr ".tk[340]" -type "float3" -0.38447309 -0.023017883 -0.23522878 ;
	setAttr ".tk[341]" -type "float3" 0 0 -0.32473654 ;
	setAttr ".tk[342]" -type "float3" 0 0 -0.32473654 ;
	setAttr ".tk[343]" -type "float3" -0.21114993 0.378582 -0.24000096 ;
	setAttr ".tk[344]" -type "float3" 0 -0.2732811 -0.26175177 ;
	setAttr ".tk[345]" -type "float3" 0 0 -0.32473689 ;
	setAttr ".tk[346]" -type "float3" 0.090602398 -0.27848053 -0.25385439 ;
	setAttr ".tk[347]" -type "float3" 0 0 -0.32473689 ;
	setAttr ".tk[348]" -type "float3" 0 0 -0.32473689 ;
	setAttr ".tk[349]" -type "float3" -0.090594292 -0.27845848 -0.25386202 ;
	setAttr ".tk[350]" -type "float3" 0 0 -0.32473689 ;
	setAttr ".tk[351]" -type "float3" -0.3723824 0.24542713 -0.19975054 ;
	setAttr ".tk[352]" -type "float3" 0 0 -0.32473689 ;
	setAttr ".tk[353]" -type "float3" 0.00014567375 0.45259285 -0.20312512 ;
createNode polySoftEdge -n "polySoftEdge17";
	rename -uid "52AEDFCF-114C-1D74-81BD-B2B792EC7D5D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[689:692]" "e[695:696]" "e[698:701]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polySoftEdge -n "polySoftEdge18";
	rename -uid "D5B92736-C848-9D8A-A4C3-80800CDDB222";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[348:349]" "e[351:352]" "e[354:355]" "e[374]" "e[377:379]" "e[655]" "e[657:658]" "e[660:661]" "e[663:664]" "e[666]" "e[668]" "e[670:671]" "e[673:674]" "e[676]" "e[678:683]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge19";
	rename -uid "21CF1901-0C44-9978-BBCE-11BBCD62E54B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[357]" "e[364]" "e[368]" "e[384:385]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak43";
	rename -uid "41D1BD67-5A48-B26B-3A4A-8299C8099B12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[19]" -type "float3" 0 0 -0.89700341 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.89700341 ;
	setAttr ".tk[191]" -type "float3" 0 0 -0.89700341 ;
	setAttr ".tk[195]" -type "float3" 0 0 -0.89700341 ;
createNode polySoftEdge -n "polySoftEdge20";
	rename -uid "220F6D0F-B543-3B1E-5B8C-E0827BB7B69C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4:6]" "e[68:70]" "e[197]" "e[199]" "e[231]" "e[244]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak44";
	rename -uid "BD9F017C-664E-890C-5A58-E490AED0AE69";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[3]" -type "float3" -0.002750295 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.016892796 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.012829348 0 0 ;
	setAttr ".tk[19]" -type "float3" -0.0032644148 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.0027501972 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.016892893 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.012829356 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.0032643999 0 0 ;
	setAttr ".tk[186]" -type "float3" 0.016892893 0 0 ;
	setAttr ".tk[187]" -type "float3" 0.01139232 0 0 ;
	setAttr ".tk[188]" -type "float3" -0.011392375 0 0 ;
	setAttr ".tk[189]" -type "float3" -0.016892796 0 0 ;
	setAttr ".tk[190]" -type "float3" 0.016892796 0 0 ;
	setAttr ".tk[191]" -type "float3" -0.0032644148 0 0 ;
	setAttr ".tk[194]" -type "float3" -0.016892893 0 0 ;
	setAttr ".tk[195]" -type "float3" 0.0032643999 0 0 ;
createNode makeNurbsSquare -n "makeNurbsSquare1";
	rename -uid "98725551-4048-7F2C-5F5B-0D9C68959525";
	setAttr ".nr" -type "double3" 0 1 0 ;
createNode transformGeometry -n "transformGeometry3";
	rename -uid "0DE96AD8-E24C-F012-9125-B59336C91270";
	setAttr ".txf" -type "matrix" 1.1102230246251565e-12 0 -5000 0 0 1 0 0 1 0 2.2204460492503131e-16 0
		 -5.5500049001011575e-13 0 2688.9004399898677 1;
createNode transformGeometry -n "transformGeometry4";
	rename -uid "485868EF-7A4E-3558-E462-89829B16F9D8";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.5 0 -188.89590454101562 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av -k on ".unw";
	setAttr -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -k on ".ihi";
	setAttr ".etmr" no;
	setAttr ".tmr" 4096;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".mbe";
	setAttr -k on ".mbsof";
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
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
	setAttr -s 5 ".s";
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
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr -cb on ".ep" 1;
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
	setAttr -av -k on ".w" 640;
	setAttr -av -k on ".h" 480;
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1.3333332538604736;
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
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
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
	setAttr -s 4 ".sol";
connectAttr "Weapon.di" "AssaultRifle.do";
connectAttr "groupId9.id" "AssaultRifleShape.iog.og[0].gid";
connectAttr "Rifle_MarkISG.mwc" "AssaultRifleShape.iog.og[0].gco";
connectAttr "polySoftEdge20.out" "AssaultRifleShape.i";
connectAttr "polyTweakUV19.uvtk[0]" "AssaultRifleShape.uvst[0].uvtw";
connectAttr "groupId10.id" "MagazineShape.iog.og[0].gid";
connectAttr "Rifle_MarkISG.mwc" "MagazineShape.iog.og[0].gco";
connectAttr "transformGeometry2.og" "MagazineShape.i";
connectAttr "transformGeometry4.og" "MuzzleShape.cr";
connectAttr "layerManager.dli[5]" "Weapon.id";
connectAttr "Rifle_MarkISG.msg" "materialInfo38.sg";
connectAttr "Mat_AssaultRifle.msg" "materialInfo38.m";
connectAttr "file1.msg" "materialInfo38.t" -na;
connectAttr "Mat_AssaultRifle.oc" "Rifle_MarkISG.ss";
connectAttr "AssaultRifleShape.iog.og[0]" "Rifle_MarkISG.dsm" -na;
connectAttr "MagazineShape.iog.og[0]" "Rifle_MarkISG.dsm" -na;
connectAttr "groupId9.msg" "Rifle_MarkISG.gn" -na;
connectAttr "groupId10.msg" "Rifle_MarkISG.gn" -na;
connectAttr "file1.oc" "Mat_AssaultRifle.c";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Rifle_MarkISG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Rifle_MarkISG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo1.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo1.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo1.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo1.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo1.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo1.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo1.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo1.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo1.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo1.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo1.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo1.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo1.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo1.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo1.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo1.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo1.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo1.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo2.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo2.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo2.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo2.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo2.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo2.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo2.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo2.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo2.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo2.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo2.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo2.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo2.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo2.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo2.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo2.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo2.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo2.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo3.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo3.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo3.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo3.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo3.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo3.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo3.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo3.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo3.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo3.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo3.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo3.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo3.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo3.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo3.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo3.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo3.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo3.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo4.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo4.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo4.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo4.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo4.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo4.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo4.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo4.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo4.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo4.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo4.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo4.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo4.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo4.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo4.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo4.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo4.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo4.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo5.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo5.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo5.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo5.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo5.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo5.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo5.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo5.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo5.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo5.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo5.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo5.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo5.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo5.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo5.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo5.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo5.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo5.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo6.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo6.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo6.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo6.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo6.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo6.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo6.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo6.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo6.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo6.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo6.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo6.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo6.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo6.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo6.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo6.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo6.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo6.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo7.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo7.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo7.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo7.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo7.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo7.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo7.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo7.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo7.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo7.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo7.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo7.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo7.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo7.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo7.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo7.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo7.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo7.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo8.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo8.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo8.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo8.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo8.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo8.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo8.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo8.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo8.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo8.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo8.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo8.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo8.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo8.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo8.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo8.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo8.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo8.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo9.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo9.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo9.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo9.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo9.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo9.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo9.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo9.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo9.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo9.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo9.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo9.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo9.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo9.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo9.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo9.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo9.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo9.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo10.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo10.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo10.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo10.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo10.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo10.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo10.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo10.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo10.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo10.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo10.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo10.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo10.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo10.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo10.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo10.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo10.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo10.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo11.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo11.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo11.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo11.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo11.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo11.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo11.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo11.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo11.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo11.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo11.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo11.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo11.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo11.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo11.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo11.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo11.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo11.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo12.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo12.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo12.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo12.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo12.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo12.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo12.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo12.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo12.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo12.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo12.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo12.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo12.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo12.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo12.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo12.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo12.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo12.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo13.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo13.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo13.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo13.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo13.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo13.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo13.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo13.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo13.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo13.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo13.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo13.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo13.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo13.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo13.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo13.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo13.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo13.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo14.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo14.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo14.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo14.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo14.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo14.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo14.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo14.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo14.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo14.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo14.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo14.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo14.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo14.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo14.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo14.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo14.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo14.ni[18].dn";
connectAttr ":persp.msg" "nodeGraphEditorBookmarkInfo15.ni[0].dn";
connectAttr ":perspShape.msg" "nodeGraphEditorBookmarkInfo15.ni[1].dn";
connectAttr ":top.msg" "nodeGraphEditorBookmarkInfo15.ni[2].dn";
connectAttr ":topShape.msg" "nodeGraphEditorBookmarkInfo15.ni[3].dn";
connectAttr ":front.msg" "nodeGraphEditorBookmarkInfo15.ni[4].dn";
connectAttr ":frontShape.msg" "nodeGraphEditorBookmarkInfo15.ni[5].dn";
connectAttr ":side.msg" "nodeGraphEditorBookmarkInfo15.ni[6].dn";
connectAttr ":sideShape.msg" "nodeGraphEditorBookmarkInfo15.ni[7].dn";
connectAttr "defaultLayer.msg" "nodeGraphEditorBookmarkInfo15.ni[8].dn";
connectAttr "defaultRenderLayer.msg" "nodeGraphEditorBookmarkInfo15.ni[9].dn";
connectAttr "uiConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo15.ni[10].dn"
		;
connectAttr "sceneConfigurationScriptNode.msg" "nodeGraphEditorBookmarkInfo15.ni[11].dn"
		;
connectAttr "AssaultRifle.msg" "nodeGraphEditorBookmarkInfo15.ni[12].dn";
connectAttr "AssaultRifleShape.msg" "nodeGraphEditorBookmarkInfo15.ni[13].dn";
connectAttr "Magazine.msg" "nodeGraphEditorBookmarkInfo15.ni[14].dn";
connectAttr "MagazineShape.msg" "nodeGraphEditorBookmarkInfo15.ni[15].dn";
connectAttr "file1.msg" "nodeGraphEditorBookmarkInfo15.ni[17].dn";
connectAttr "place2dTexture1.msg" "nodeGraphEditorBookmarkInfo15.ni[18].dn";
connectAttr "groupParts1.og" "polyMirror1.ip";
connectAttr "AssaultRifle.sp" "polyMirror1.sp";
connectAttr "AssaultRifleShape.wm" "polyMirror1.mp";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "polyMirror1.out" "polySplitRing1.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing3.mp";
connectAttr "polyTweak1.out" "polyBevel1.ip";
connectAttr "AssaultRifleShape.wm" "polyBevel1.mp";
connectAttr "polySplitRing3.out" "polyTweak1.ip";
connectAttr "polyBevel1.out" "polyBevel2.ip";
connectAttr "AssaultRifleShape.wm" "polyBevel2.mp";
connectAttr "polyBevel2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyBevel3.ip";
connectAttr "AssaultRifleShape.wm" "polyBevel3.mp";
connectAttr "polyBevel3.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert1.mp";
connectAttr "polySplit4.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyMergeVert2.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak3.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV1.ip";
connectAttr "polyTweak4.out" "polyMergeVert3.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV1.out" "polyTweak4.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV2.ip";
connectAttr "polyTweak5.out" "polyMergeVert4.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV2.out" "polyTweak5.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV3.ip";
connectAttr "polyTweak6.out" "polyMergeVert5.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV3.out" "polyTweak6.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV4.ip";
connectAttr "polyTweak7.out" "polyMergeVert6.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV4.out" "polyTweak7.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV5.ip";
connectAttr "polyTweak8.out" "polyMergeVert7.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV5.out" "polyTweak8.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV6.ip";
connectAttr "polyTweak9.out" "polyMergeVert8.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV6.out" "polyTweak9.ip";
connectAttr "polyMergeVert8.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyTweakUV7.ip";
connectAttr "polyTweak10.out" "polyMergeVert9.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV7.out" "polyTweak10.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV8.ip";
connectAttr "polyTweak11.out" "polyMergeVert10.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV8.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing4.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing4.mp";
connectAttr "polyMergeVert10.out" "polyTweak12.ip";
connectAttr "polySplitRing4.out" "polyTweakUV9.ip";
connectAttr "polyTweak13.out" "polyMergeVert11.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV9.out" "polyTweak13.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV10.ip";
connectAttr "polyTweak14.out" "polyMergeVert12.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV10.out" "polyTweak14.ip";
connectAttr "polyMergeVert12.out" "polyExtrudeFace1.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak15.out" "polyExtrudeFace2.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace3.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace3.out" "polyTweakUV11.ip";
connectAttr "polyTweak17.out" "polyMergeVert13.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV11.out" "polyTweak17.ip";
connectAttr "polyMergeVert13.out" "polyExtrudeFace4.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace5.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyExtrudeFace6.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace7.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak20.ip";
connectAttr "polyTweak21.out" "polySplitRing5.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak21.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing6.mp";
connectAttr "polyTweak22.out" "polySoftEdge1.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge1.mp";
connectAttr "polySplitRing6.out" "polyTweak22.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge2.mp";
connectAttr "polyTweak23.out" "polySoftEdge3.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge3.mp";
connectAttr "polySoftEdge2.out" "polyTweak23.ip";
connectAttr "polySoftEdge3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak24.out" "polyCloseBorder1.ip";
connectAttr "polyExtrudeEdge1.out" "polyTweak24.ip";
connectAttr "polyCloseBorder1.out" "groupParts2.ig";
connectAttr "groupId9.id" "groupParts2.gi";
connectAttr "groupParts2.og" "polyTweakUV12.ip";
connectAttr "polyTweak25.out" "polyMergeVert14.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV12.out" "polyTweak25.ip";
connectAttr "polyMergeVert14.out" "polySplit5.ip";
connectAttr "polyTweak26.out" "polyDelEdge2.ip";
connectAttr "polySplit5.out" "polyTweak26.ip";
connectAttr "polyDelEdge2.out" "polyBevel4.ip";
connectAttr "AssaultRifleShape.wm" "polyBevel4.mp";
connectAttr "polyBevel4.out" "polyTweak27.ip";
connectAttr "polyTweak27.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "groupParts3.og" "polyExtrudeFace8.ip";
connectAttr "MagazineShape.wm" "polyExtrudeFace8.mp";
connectAttr "polySurfaceShape2.o" "groupParts3.ig";
connectAttr "groupId10.id" "groupParts3.gi";
connectAttr "polyTweak28.out" "polySoftEdge4.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge4.mp";
connectAttr "polySplit8.out" "polyTweak28.ip";
connectAttr "polySoftEdge4.out" "polyTweakUV13.ip";
connectAttr "polyTweak29.out" "polyMergeVert15.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV13.out" "polyTweak29.ip";
connectAttr "polyMergeVert15.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySoftEdge5.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "polySoftEdge6.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge6.mp";
connectAttr "polySoftEdge6.out" "polySoftEdge7.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge7.mp";
connectAttr "polySoftEdge7.out" "polySoftEdge8.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge8.mp";
connectAttr "polySoftEdge8.out" "polySoftEdge9.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge9.mp";
connectAttr "polyTweak30.out" "polySoftEdge10.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge10.mp";
connectAttr "polySoftEdge9.out" "polyTweak30.ip";
connectAttr "polySoftEdge10.out" "polySoftEdge11.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge11.mp";
connectAttr "polySoftEdge11.out" "polySplitRing7.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "AssaultRifleShape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polyExtrudeFace9.ip";
connectAttr "AssaultRifleShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak31.out" "polySoftEdge12.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge12.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak31.ip";
connectAttr "polySoftEdge12.out" "polySoftEdge13.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge13.mp";
connectAttr "polySoftEdge13.out" "polySoftEdge14.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge14.mp";
connectAttr "polySoftEdge14.out" "polyTweak32.ip";
connectAttr "polyTweak32.out" "transformGeometry1.ig";
connectAttr "polyExtrudeFace8.out" "polyTweak33.ip";
connectAttr "polyTweak33.out" "transformGeometry2.ig";
connectAttr "transformGeometry1.og" "polyTweakUV14.ip";
connectAttr "polyTweak34.out" "polyMergeVert16.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV14.out" "polyTweak34.ip";
connectAttr "polyMergeVert16.out" "polyTweakUV15.ip";
connectAttr "polyTweak35.out" "polyMergeVert17.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert17.mp";
connectAttr "polyTweakUV15.out" "polyTweak35.ip";
connectAttr "polyMergeVert17.out" "polyTweakUV16.ip";
connectAttr "polyTweak36.out" "polyMergeVert18.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert18.mp";
connectAttr "polyTweakUV16.out" "polyTweak36.ip";
connectAttr "polyMergeVert18.out" "polyTweakUV17.ip";
connectAttr "polyTweak37.out" "polyMergeVert19.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert19.mp";
connectAttr "polyTweakUV17.out" "polyTweak37.ip";
connectAttr "polyMergeVert19.out" "polyTweakUV18.ip";
connectAttr "polyTweak38.out" "polyMergeVert20.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert20.mp";
connectAttr "polyTweakUV18.out" "polyTweak38.ip";
connectAttr "polyMergeVert20.out" "polyTweakUV19.ip";
connectAttr "polyTweak39.out" "polyMergeVert21.ip";
connectAttr "AssaultRifleShape.wm" "polyMergeVert21.mp";
connectAttr "polyTweakUV19.out" "polyTweak39.ip";
connectAttr "polyTweak40.out" "polyDelEdge3.ip";
connectAttr "polyMergeVert21.out" "polyTweak40.ip";
connectAttr "polyDelEdge3.out" "polySoftEdge15.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge15.mp";
connectAttr "polySoftEdge15.out" "polyBevel5.ip";
connectAttr "AssaultRifleShape.wm" "polyBevel5.mp";
connectAttr "polyTweak41.out" "polyBevel6.ip";
connectAttr "AssaultRifleShape.wm" "polyBevel6.mp";
connectAttr "polyBevel5.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polySoftEdge16.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge16.mp";
connectAttr "polyBevel6.out" "polyTweak42.ip";
connectAttr "polySoftEdge16.out" "polySoftEdge17.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge17.mp";
connectAttr "polySoftEdge17.out" "polySoftEdge18.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge18.mp";
connectAttr "polyTweak43.out" "polySoftEdge19.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge19.mp";
connectAttr "polySoftEdge18.out" "polyTweak43.ip";
connectAttr "polyTweak44.out" "polySoftEdge20.ip";
connectAttr "AssaultRifleShape.wm" "polySoftEdge20.mp";
connectAttr "polySoftEdge19.out" "polyTweak44.ip";
connectAttr "makeNurbsSquare1.oc1" "transformGeometry3.ig";
connectAttr "transformGeometry3.og" "transformGeometry4.ig";
connectAttr "Rifle_MarkISG.pa" ":renderPartition.st" -na;
connectAttr "Mat_AssaultRifle.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
// End of AssaultRifle.ma
