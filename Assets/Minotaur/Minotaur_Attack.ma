//Maya ASCII 2015 scene
//Name: Minotaur_Attack.ma
//Last modified: Mon, Dec 12, 2016 12:59:00 AM
//Codeset: 1252
file -rdi 1 -ns "Minotaur_Rigged_Draft" -rfn "Minotaur_Rigged_DraftRN" -op "v=0;"
		 "C:/Users/Sean/Desktop/LDJam37/Assets/Minotaur/Minotaur_Rigged_Draft.ma";
file -r -ns "Minotaur_Rigged_Draft" -dr 1 -rfn "Minotaur_Rigged_DraftRN" -op "v=0;"
		 "C:/Users/Sean/Desktop/LDJam37/Assets/Minotaur/Minotaur_Rigged_Draft.ma";
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.399044158067053 7.8943912734686323 0.9778658567020303 ;
	setAttr ".r" -type "double3" -27.338352729696521 -270.99999999997726 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 15.827593312098545;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.23234132748925168 0.02895432518013813 0.56906718801101819 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.072751964303035876 100.1 1.4695896789213319 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.149954061369998;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0.6351892743325972 0.40833596207095557 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.9235630902253087;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode reference -n "Minotaur_Rigged_DraftRN";
	setAttr -s 62 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Minotaur_Rigged_DraftRN"
		"Minotaur_Rigged_DraftRN" 0
		"Minotaur_Rigged_DraftRN" 98
		2 "|Minotaur_Rigged_Draft:group1|Minotaur_Rigged_Draft:Body|Minotaur_Rigged_Draft:LeftFBXASC032Horn|Minotaur_Rigged_Draft:LeftFBXASC032HornShape" 
		"uvPivot" " -type \"double2\" 0.32828706130385399 0.49999997019767761"
		2 "|Minotaur_Rigged_Draft:group1|Minotaur_Rigged_Draft:Body|Minotaur_Rigged_Draft:LeftFBXASC032Horn|Minotaur_Rigged_Draft:LeftFBXASC032HornShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"UVChannel_1\""
		2 "|Minotaur_Rigged_Draft:root" "rotate" " -type \"double3\" 25.706566985474584 0 0"
		
		2 "|Minotaur_Rigged_Draft:root" "rotateX" " -av"
		2 "|Minotaur_Rigged_Draft:root" "rotateY" " -av"
		2 "|Minotaur_Rigged_Draft:root" "rotateZ" " -av"
		2 "|Minotaur_Rigged_Draft:root" "segmentScaleCompensate" " 1"
		2 "|Minotaur_Rigged_Draft:root|Minotaur_Rigged_Draft:chest|Minotaur_Rigged_Draft:head|Minotaur_Rigged_Draft:L_horn1|Minotaur_Rigged_Draft:L_horn2|Minotaur_Rigged_Draft:L_horn3" 
		"rotate" " -type \"double3\" -0.41114915109234212 -0.75977408609672603 -0.041670874360929332"
		
		2 "|Minotaur_Rigged_Draft:Hips_Control" "translate" " -type \"double3\" 0 -0.035666146633319684 0.28789317940845793"
		
		2 "|Minotaur_Rigged_Draft:Hips_Control" "translateY" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control" "translateZ" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control" "rotate" " -type \"double3\" 25.706566985474588 0 0"
		
		2 "|Minotaur_Rigged_Draft:Hips_Control" "rotateX" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control" "rotateY" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control" "rotateZ" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl" 
		"rotate" " -type \"double3\" 14.839724042432271 17.313011382837651 0.51448114521649668"
		
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl" 
		"rotateX" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl" 
		"rotateY" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl" 
		"rotateZ" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl" 
		"rotate" " -type \"double3\" 14.839724042432271 -17.313011382837651 0.51448114521649668"
		
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl" 
		"rotateX" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl" 
		"rotateY" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl" 
		"rotateZ" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl" 
		"translate" " -type \"double3\" 0 0 0.0054369721166955595"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl" 
		"translateZ" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl" 
		"rotate" " -type \"double3\" 1.0946737999355192 0 0"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl" 
		"rotateX" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl" 
		"rotateY" " -av"
		2 "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl" 
		"rotateZ" " -av"
		2 "|Minotaur_Rigged_Draft:R_FootControl" "translate" " -type \"double3\" 0 0.074246698503690839 0.22124838589590332"
		
		2 "|Minotaur_Rigged_Draft:R_FootControl" "translateY" " -av"
		2 "|Minotaur_Rigged_Draft:R_FootControl" "translateZ" " -av"
		2 "|Minotaur_Rigged_Draft:L_FootControl" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Minotaur_Rigged_Draft:L_FootControl" "translateY" " -av"
		2 "|Minotaur_Rigged_Draft:L_FootControl" "translateZ" " -av"
		3 "Minotaur_Rigged_Draft:skinCluster3.outputGeometry[0]" "|Minotaur_Rigged_Draft:group1|Minotaur_Rigged_Draft:Body|Minotaur_Rigged_Draft:LeftFBXASC032Horn|Minotaur_Rigged_Draft:LeftFBXASC032HornShape.inMesh" 
		""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:group1|Minotaur_Rigged_Draft:Body|Minotaur_Rigged_Draft:LeftFBXASC032Horn|Minotaur_Rigged_Draft:LeftFBXASC032HornShape.inMesh" 
		"Minotaur_Rigged_DraftRN.placeHolderList[1]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.translateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[2]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.translateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[3]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.translateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[4]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.rotateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[5]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.rotateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[6]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.rotateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[7]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.visibility" 
		"Minotaur_Rigged_DraftRN.placeHolderList[8]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.scaleX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[9]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.scaleY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[10]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control.scaleZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[11]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.rotateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[12]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.rotateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[13]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.rotateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[14]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.visibility" 
		"Minotaur_Rigged_DraftRN.placeHolderList[15]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.translateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[16]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.translateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[17]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.translateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[18]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.scaleX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[19]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.scaleY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[20]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:L_ArmControl.scaleZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[21]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.rotateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[22]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.rotateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[23]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.rotateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[24]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.visibility" 
		"Minotaur_Rigged_DraftRN.placeHolderList[25]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.translateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[26]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.translateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[27]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.translateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[28]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.scaleX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[29]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.scaleY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[30]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:R_ArmControl.scaleZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[31]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.translateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[32]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.translateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[33]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.translateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[34]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.rotateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[35]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.rotateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[36]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.rotateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[37]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.visibility" 
		"Minotaur_Rigged_DraftRN.placeHolderList[38]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.scaleX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[39]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.scaleY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[40]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:Hips_Control|Minotaur_Rigged_Draft:headControl.scaleZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[41]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.translateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[42]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.translateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[43]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.translateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[44]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.visibility" 
		"Minotaur_Rigged_DraftRN.placeHolderList[45]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.rotateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[46]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.rotateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[47]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.rotateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[48]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.scaleX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[49]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.scaleY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[50]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:R_FootControl.scaleZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[51]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.translateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[52]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.translateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[53]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.translateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[54]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.visibility" 
		"Minotaur_Rigged_DraftRN.placeHolderList[55]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.rotateX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[56]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.rotateY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[57]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.rotateZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[58]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.scaleX" 
		"Minotaur_Rigged_DraftRN.placeHolderList[59]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.scaleY" 
		"Minotaur_Rigged_DraftRN.placeHolderList[60]" ""
		5 4 "Minotaur_Rigged_DraftRN" "|Minotaur_Rigged_Draft:L_FootControl.scaleZ" 
		"Minotaur_Rigged_DraftRN.placeHolderList[61]" ""
		5 3 "Minotaur_Rigged_DraftRN" "Minotaur_Rigged_Draft:skinCluster3.outputGeometry[0]" 
		"Minotaur_Rigged_DraftRN.placeHolderList[62]" "Minotaur_Rigged_Draft:LeftFBXASC032HornShape.i";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "L_FootControl_visibility";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  1 1 4 1 10 1 17 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "L_FootControl_translateX";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 17 0;
createNode animCurveTL -n "L_FootControl_translateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 17 0;
createNode animCurveTL -n "L_FootControl_translateZ";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 17 0;
createNode animCurveTA -n "L_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 17 0;
createNode animCurveTA -n "L_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 17 0;
createNode animCurveTA -n "L_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 0 10 0 17 0;
createNode animCurveTU -n "L_FootControl_scaleX";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 4 1 10 1 17 1;
createNode animCurveTU -n "L_FootControl_scaleY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 4 1 10 1 17 1;
createNode animCurveTU -n "L_FootControl_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 1 4 1 10 1 17 1;
createNode animCurveTU -n "R_FootControl_visibility";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 4 1 10 1 13 1 17 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 9 9;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "R_FootControl_translateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 13 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "R_FootControl_translateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 14 0.14849335717835715 17 0;
createNode animCurveTL -n "R_FootControl_translateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0.38952781618432608 10 0.38952781618432608
		 13 0.066944084252968272 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 -0.15062426030635834 0;
	setAttr -s 5 ".kox[2:4]"  0.24999998509883881 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 -0.20083224773406982 0;
createNode animCurveTA -n "R_FootControl_rotateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 13 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "R_FootControl_rotateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 13 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "R_FootControl_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0 10 0 13 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_FootControl_scaleX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 4 1 10 1 13 1 17 1;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_FootControl_scaleY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 4 1 10 1 13 1 17 1;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "R_FootControl_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 4 1 10 1 13 1 17 1;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.12500002980232239 0.16666662693023682;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.54166662693023682 0.16666662693023682 
		0.16666662693023682;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 17 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Hips_Control_translateX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 17 0;
createNode animCurveTL -n "Hips_Control_translateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 -0.20111227972042833 6 -0.19491257786438493
		 10 -0.067037285607032898 17 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 0.3007998570270195 6 0.54430450319174961
		 10 0.4220587202208454 17 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  0.026843337342143059 0.083333328366279602 
		0.1666666567325592 0.2916666567325592;
	setAttr -s 5 ".kiy[1:4]"  0.425528883934021 0 -0.19792890548706055 
		0;
	setAttr -s 5 ".kox[1:4]"  0.017895545810461044 0.1666666567325592 
		0.2916666567325592 0.2916666567325592;
	setAttr -s 5 ".koy[1:4]"  0.28368574380874634 0 -0.34637558460235596 
		0;
createNode animCurveTA -n "Hips_Control_rotateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 4 39.539473684210535 6 50 10 37.848226899913058
		 17 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 17 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 10 0 17 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 17 1;
createNode animCurveTU -n "Hips_Control_scaleY";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 17 1;
createNode animCurveTU -n "Hips_Control_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 10 1 17 1;
createNode animCurveTU -n "L_ArmControl_visibility";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_ArmControl_translateX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 17 0;
createNode animCurveTL -n "L_ArmControl_translateY";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 17 0;
createNode animCurveTL -n "L_ArmControl_translateZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 17 0;
createNode animCurveTA -n "L_ArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 -10 8 25.454491928673168 17 0;
createNode animCurveTA -n "L_ArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 -25 8 29.696907250118699 17 0;
createNode animCurveTA -n "L_ArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 5 8 1.6969661285782116 17 0;
createNode animCurveTU -n "L_ArmControl_scaleX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
createNode animCurveTU -n "L_ArmControl_scaleY";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
createNode animCurveTU -n "L_ArmControl_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
createNode animCurveTU -n "R_ArmControl_visibility";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_ArmControl_translateX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 17 0;
createNode animCurveTL -n "R_ArmControl_translateY";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 17 0;
createNode animCurveTL -n "R_ArmControl_translateZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 0 8 0 17 0;
createNode animCurveTA -n "R_ArmControl_rotateX";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 -10 8 25.454491928673168 17 0;
createNode animCurveTA -n "R_ArmControl_rotateY";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 25 8 -29.696907250118699 17 0;
createNode animCurveTA -n "R_ArmControl_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  1 0 4 5 8 1.6969661285782116 17 0;
createNode animCurveTU -n "R_ArmControl_scaleX";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
createNode animCurveTU -n "R_ArmControl_scaleY";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
createNode animCurveTU -n "R_ArmControl_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  1 1 8 1 17 1;
createNode animCurveTU -n "headControl_visibility";
	setAttr ".tan" 5;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 12 1 17 1;
	setAttr -s 5 ".kit[0:4]"  9 9 1 9 9;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
createNode animCurveTL -n "headControl_translateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 7 0 12 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "headControl_translateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 7 0 12 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTL -n "headControl_translateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0.0061548575888899044 7 0.0075568526131766208
		 12 0.0054369721166955595 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 -0.0037784266751259565 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 -0.0037784259766340256 0;
createNode animCurveTA -n "headControl_rotateX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 40.326768124105847 7 14.574626238281292
		 12 1.0946737999355192 17 0;
createNode animCurveTA -n "headControl_rotateY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 7 0 12 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "headControl_rotateZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 0 5 0 7 0 12 0 17 0;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "headControl_scaleX";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 12 1 17 1;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "headControl_scaleY";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 12 1 17 1;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "headControl_scaleZ";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  1 1 5 1 7 1 12 1 17 1;
	setAttr -s 5 ".kit[2:4]"  1 18 18;
	setAttr -s 5 ".kot[2:4]"  1 18 18;
	setAttr -s 5 ".kix[2:4]"  0.125 0.2083333432674408 0.20833331346511841;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  0.1666666716337204 0.20833331346511841 
		0.20833331346511841;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 17 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 12;
	setAttr ".unw" 12;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
connectAttr "polyNormal1.out" "Minotaur_Rigged_DraftRN.phl[1]";
connectAttr "Hips_Control_translateX.o" "Minotaur_Rigged_DraftRN.phl[2]";
connectAttr "Hips_Control_translateY.o" "Minotaur_Rigged_DraftRN.phl[3]";
connectAttr "Hips_Control_translateZ.o" "Minotaur_Rigged_DraftRN.phl[4]";
connectAttr "Hips_Control_rotateX.o" "Minotaur_Rigged_DraftRN.phl[5]";
connectAttr "Hips_Control_rotateY.o" "Minotaur_Rigged_DraftRN.phl[6]";
connectAttr "Hips_Control_rotateZ.o" "Minotaur_Rigged_DraftRN.phl[7]";
connectAttr "Hips_Control_visibility.o" "Minotaur_Rigged_DraftRN.phl[8]";
connectAttr "Hips_Control_scaleX.o" "Minotaur_Rigged_DraftRN.phl[9]";
connectAttr "Hips_Control_scaleY.o" "Minotaur_Rigged_DraftRN.phl[10]";
connectAttr "Hips_Control_scaleZ.o" "Minotaur_Rigged_DraftRN.phl[11]";
connectAttr "L_ArmControl_rotateX.o" "Minotaur_Rigged_DraftRN.phl[12]";
connectAttr "L_ArmControl_rotateY.o" "Minotaur_Rigged_DraftRN.phl[13]";
connectAttr "L_ArmControl_rotateZ.o" "Minotaur_Rigged_DraftRN.phl[14]";
connectAttr "L_ArmControl_visibility.o" "Minotaur_Rigged_DraftRN.phl[15]";
connectAttr "L_ArmControl_translateX.o" "Minotaur_Rigged_DraftRN.phl[16]";
connectAttr "L_ArmControl_translateY.o" "Minotaur_Rigged_DraftRN.phl[17]";
connectAttr "L_ArmControl_translateZ.o" "Minotaur_Rigged_DraftRN.phl[18]";
connectAttr "L_ArmControl_scaleX.o" "Minotaur_Rigged_DraftRN.phl[19]";
connectAttr "L_ArmControl_scaleY.o" "Minotaur_Rigged_DraftRN.phl[20]";
connectAttr "L_ArmControl_scaleZ.o" "Minotaur_Rigged_DraftRN.phl[21]";
connectAttr "R_ArmControl_rotateX.o" "Minotaur_Rigged_DraftRN.phl[22]";
connectAttr "R_ArmControl_rotateY.o" "Minotaur_Rigged_DraftRN.phl[23]";
connectAttr "R_ArmControl_rotateZ.o" "Minotaur_Rigged_DraftRN.phl[24]";
connectAttr "R_ArmControl_visibility.o" "Minotaur_Rigged_DraftRN.phl[25]";
connectAttr "R_ArmControl_translateX.o" "Minotaur_Rigged_DraftRN.phl[26]";
connectAttr "R_ArmControl_translateY.o" "Minotaur_Rigged_DraftRN.phl[27]";
connectAttr "R_ArmControl_translateZ.o" "Minotaur_Rigged_DraftRN.phl[28]";
connectAttr "R_ArmControl_scaleX.o" "Minotaur_Rigged_DraftRN.phl[29]";
connectAttr "R_ArmControl_scaleY.o" "Minotaur_Rigged_DraftRN.phl[30]";
connectAttr "R_ArmControl_scaleZ.o" "Minotaur_Rigged_DraftRN.phl[31]";
connectAttr "headControl_translateX.o" "Minotaur_Rigged_DraftRN.phl[32]";
connectAttr "headControl_translateY.o" "Minotaur_Rigged_DraftRN.phl[33]";
connectAttr "headControl_translateZ.o" "Minotaur_Rigged_DraftRN.phl[34]";
connectAttr "headControl_rotateX.o" "Minotaur_Rigged_DraftRN.phl[35]";
connectAttr "headControl_rotateY.o" "Minotaur_Rigged_DraftRN.phl[36]";
connectAttr "headControl_rotateZ.o" "Minotaur_Rigged_DraftRN.phl[37]";
connectAttr "headControl_visibility.o" "Minotaur_Rigged_DraftRN.phl[38]";
connectAttr "headControl_scaleX.o" "Minotaur_Rigged_DraftRN.phl[39]";
connectAttr "headControl_scaleY.o" "Minotaur_Rigged_DraftRN.phl[40]";
connectAttr "headControl_scaleZ.o" "Minotaur_Rigged_DraftRN.phl[41]";
connectAttr "R_FootControl_translateX.o" "Minotaur_Rigged_DraftRN.phl[42]";
connectAttr "R_FootControl_translateY.o" "Minotaur_Rigged_DraftRN.phl[43]";
connectAttr "R_FootControl_translateZ.o" "Minotaur_Rigged_DraftRN.phl[44]";
connectAttr "R_FootControl_visibility.o" "Minotaur_Rigged_DraftRN.phl[45]";
connectAttr "R_FootControl_rotateX.o" "Minotaur_Rigged_DraftRN.phl[46]";
connectAttr "R_FootControl_rotateY.o" "Minotaur_Rigged_DraftRN.phl[47]";
connectAttr "R_FootControl_rotateZ.o" "Minotaur_Rigged_DraftRN.phl[48]";
connectAttr "R_FootControl_scaleX.o" "Minotaur_Rigged_DraftRN.phl[49]";
connectAttr "R_FootControl_scaleY.o" "Minotaur_Rigged_DraftRN.phl[50]";
connectAttr "R_FootControl_scaleZ.o" "Minotaur_Rigged_DraftRN.phl[51]";
connectAttr "L_FootControl_translateX.o" "Minotaur_Rigged_DraftRN.phl[52]";
connectAttr "L_FootControl_translateY.o" "Minotaur_Rigged_DraftRN.phl[53]";
connectAttr "L_FootControl_translateZ.o" "Minotaur_Rigged_DraftRN.phl[54]";
connectAttr "L_FootControl_visibility.o" "Minotaur_Rigged_DraftRN.phl[55]";
connectAttr "L_FootControl_rotateX.o" "Minotaur_Rigged_DraftRN.phl[56]";
connectAttr "L_FootControl_rotateY.o" "Minotaur_Rigged_DraftRN.phl[57]";
connectAttr "L_FootControl_rotateZ.o" "Minotaur_Rigged_DraftRN.phl[58]";
connectAttr "L_FootControl_scaleX.o" "Minotaur_Rigged_DraftRN.phl[59]";
connectAttr "L_FootControl_scaleY.o" "Minotaur_Rigged_DraftRN.phl[60]";
connectAttr "L_FootControl_scaleZ.o" "Minotaur_Rigged_DraftRN.phl[61]";
connectAttr "Minotaur_Rigged_DraftRN.phl[62]" "polyNormal1.ip";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"Minotaur_Rigged_DraftRN\" \"\" \"C:/Users/Sean/Desktop/LDJam37/Assets/Minotaur/Minotaur_Rigged_Draft.ma\" 1435433301 \"C:/Users/Sean/Desktop/LDJam37/Assets/Minotaur/Minotaur_Rigged_Draft.ma\" \"FileRef\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of Minotaur_Attack.ma
