/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop", //no donator
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_Mk20_F",nil,40000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,150],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,75],
						["SmokeShellBlue",nil,2500],
						["optic_Holosight",nil,5000],
						["optic_Aco",nil,5000],
						["optic_DMS",nil,15000],
						["acc_flashlight",nil,500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,450],
						["NVGoggles",nil,2500]
						
					]
				];
			};
			case (__GETC__(life_donator) == 1):
			{
				["Donator Tier 1", //Donator Tier 1 cop shop
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_Mk20_F",nil,40000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,150],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,75],
						["launch_NLAW_F",nil,200000],
						["NLAW_F",nil,5000],
						["SmokeShellBlue",nil,2500],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,5000],
						["optic_Aco",nil,5000],
						["optic_DMS",nil,10000],
						["acc_flashlight",nil,500],
						["Binocular",nil,15],
						["ItemGPS",nil,10],
						["ToolKit",nil,25],
						["FirstAidKit",nil,50],
						["Medikit",nil,250],
						["NVGoggles",nil,500]
						
					]
				];
			};
			case (__GETC__(life_donator) == 2):
			{
				["Donator Tier 2", //Donator Tier 3 cop shop
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_Mk20_F",nil,40000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,150],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,50],
						["srifle_EBR_F",nil,85000],
						["20Rnd_762x51_Mag",nil,75],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["arifle_MX_SW_pointer_F",nil,75000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,475],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,75],
						["launch_NLAW_F",nil,200000],
						["NLAW_F",nil,5000],
						["launch_B_Titan_short_F",nil,250000],
					      ["Titan_AT",nil,15000],
						["SmokeShellBlue",nil,2500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,15000],
						["optic_Nightstalker",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRD",nil,2500],
						["optic_Holosight",nil,5000],
						["optic_Aco",nil,5000],
						["optic_DMS",nil,10000],
						["acc_flashlight",nil,500],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0]
						
					]
				];
			};
			case (__GETC__(life_donator) == 3):
			{
				["Donator Tier 3", //Donator Tier 3 cop shop
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_Mk20_F",nil,40000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,150],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,50],
						["srifle_EBR_F",nil,85000],
						["20Rnd_762x51_Mag",nil,75],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["arifle_MX_SW_pointer_F",nil,75000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,475],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,75],
						["launch_NLAW_F",nil,200000],
						["NLAW_F",nil,5000],
						["launch_B_Titan_short_F",nil,250000],
					      ["Titan_AT",nil,15000],
						["SmokeShellBlue",nil,2500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,15000],
						["optic_Nightstalker",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRD",nil,2500],
						["optic_Holosight",nil,5000],
						["optic_Aco",nil,5000],
						["optic_DMS",nil,10000],
						["acc_flashlight",nil,500],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0]
					]
				];
			};
			case (__GETC__(life_donator) == 4):
			{
				["Donator Tier 4", //Donator Tier 3 cop shop
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_Mk20_F",nil,40000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,150],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,50],
						["srifle_EBR_F",nil,85000],
						["20Rnd_762x51_Mag",nil,75],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["arifle_MX_SW_pointer_F",nil,75000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,475],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,75],
						["launch_NLAW_F",nil,200000],
						["NLAW_F",nil,5000],
						["launch_B_Titan_short_F",nil,250000],
					      ["Titan_AT",nil,15000],
						["SmokeShellBlue",nil,2500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,15000],
						["optic_Nightstalker",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRD",nil,2500],
						["optic_Holosight",nil,5000],
						["optic_Aco",nil,5000],
						["optic_DMS",nil,10000],
						["acc_flashlight",nil,500],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0]
					]
				];
			};
			case (__GETC__(life_donator) == 5):
			{
				["Donator Tier 5", //Donator Tier 3 cop shop
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["arifle_MX_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_Mk20_F",nil,40000],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,150],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,50],
						["srifle_EBR_F",nil,85000],
						["20Rnd_762x51_Mag",nil,75],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box_Tracer",nil,500],
						["arifle_MX_SW_pointer_F",nil,75000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,475],
						["srifle_GM6_F",nil,150000],
						["5Rnd_127x108_Mag",nil,1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,10000],
						["11Rnd_45ACP_Mag",nil,75],
						["launch_NLAW_F",nil,200000],
						["NLAW_F",nil,5000],
						["launch_B_Titan_short_F",nil,250000],
					      ["Titan_AT",nil,15000],
						["SmokeShellBlue",nil,2500],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,15000],
						["optic_Nightstalker",nil,5000],
						["optic_NVS",nil,5000],
						["optic_MRD",nil,2500],
						["optic_Holosight",nil,5000],
						["optic_Aco",nil,5000],
						["optic_DMS",nil,10000],
						["acc_flashlight",nil,500],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["srifle_EBR_F",nil,30000],
						["20Rnd_762x51_Mag",nil,500],
						["hgun_PDW2000_F",nil,5000],
						["30Rnd_9x21_Mag",nil,200],
						["launch_RPG32_F",nil,150000],
						["RPG32_HE_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["6Rnd_45ACP_Cylinder",nil,60],
						["HandGrenade",nil,1000],
						["SmokeShellRed",nil,1500],
						["DemoCharge_Remote_Mag",nil,25000],
						["APERSTripMine_Wire_Mag",nil,30000],
						["APERSBoundingMine_Range_Mag",nil,30000],
						["optic_ACO_grn",nil,5000],
						["acc_flashlight",nil,1000],
						["optic_MRCO",nil,5000],
						["HandGrenade_Stone","Decoy Explosion",500],
						["apple","Apple",50]
						
					
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,2500],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_PDW2000_F",nil,10000],
						["30Rnd_9x21_Mag",nil,75],
						["hgun_ACPC2_snds_F",nil,3500],
						["9Rnd_45ACP_Mag",nil,45],
						["SMG_01_F",nil,20000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,50],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,5000],
						["muzzle_snds_L",nil,10000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_acp",nil,10000]
						
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Tier 1 Donator Shop", //£5 donator teir 1
					[
						["LMG_Zafir_pointer_F",nil,35000],
						["150Rnd_762x51_Box",nil,150],
						["srifle_EBR_ACO_F",nil,25000],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,20000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_PDW2000_F",nil,6500],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["arifle_Mk20C_plain_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,125],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["optic_DMS",nil,12000],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25]
						
					]
				];
			};
			
			case (__GETC__(life_donator) == 2):
			{
				["Donator Shop Tier 2",
					[
					      ["srifle_LRR_F",nil,50000],
					      ["7Rnd_408_Mag",nil,100],
					      ["LMG_Mk200_F",nil,35000],
					      ["200Rnd_65x39_cased_Box_Tracer",nil,250],
					      ["LMG_Zafir_pointer_F",nil,35000],
						["150Rnd_762x51_Box",nil,150],
						["arifle_TRG21_F",nil,20000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["arifle_Katiba_GL_Nstalker_pointer_F",nil,20000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["srifle_DMR_01_F",nil,25000],
						["10Rnd_762x51_Mag",nil,75],
						["srifle_EBR_ACO_F",nil,25000],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,20000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_PDW2000_F",nil,6500],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["arifle_Mk20C_plain_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,125],
						["launch_B_Titan_short_F",nil,200000],
						["Titan_AT",nil,20000],
						["Titan_AP",nil,20000],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Yorris",nil,7500],
						["optic_NVS",nil,5000],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["SatchelCharge_Remote_Mag",nil,45000],
                                    ["SmokeShell",nil,1000],
 						["SmokeShellRed",nil,1000],
						["SmokeShellGreen",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue",nil,1000],
						["SmokeShellOrange",nil,1000],
						["Chemlight_green",nil,1000],
						["Chemlight_red",nil,1000],
						["Chemlight_yellow",nil,1000],
						["Chemlight_blue",nil,1000]
					]
				];
			};

			case (__GETC__(life_donator) == 3):
			{
				["Donator Shop Tier 3",
					[
						["srifle_LRR_F",nil,50000],
					      ["7Rnd_408_Mag",nil,100],
					      ["LMG_Mk200_F",nil,35000],
					      ["200Rnd_65x39_cased_Box_Tracer",nil,250],
					      ["LMG_Zafir_pointer_F",nil,35000],
						["150Rnd_762x51_Box",nil,150],
						["arifle_TRG21_F",nil,20000],
						["30Rnd_556x45_Stanag_Tracer_Yellow",nil,50],
						["arifle_Katiba_GL_Nstalker_pointer_F",nil,20000],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,50],
						["srifle_DMR_01_F",nil,25000],
						["10Rnd_762x51_Mag",nil,75],
						["srifle_EBR_ACO_F",nil,25000],
						["20Rnd_762x51_Mag",nil,100],
						["hgun_Rook40_F",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["SMG_02_F",nil,20000],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_PDW2000_F",nil,6500],
						["30Rnd_9x21_Mag",nil,55],
						["hgun_ACPC2_F",nil,5000],
						["9Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["6Rnd_45ACP_Cylinder",nil,40],
						["arifle_Mk20C_plain_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,125],
						["launch_B_Titan_short_F",nil,200000],
						["Titan_AT",nil,20000],
						["Titan_AP",nil,20000],
						["optic_Holosight",nil,2500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,3500],
						["optic_DMS",nil,5000],
						["optic_Yorris",nil,7500],
						["optic_NVS",nil,5000],
						["optic_tws",nil,15000],
						["optic_tws_mg",nil,15000],
						["muzzle_snds_H",nil,3000],
						["muzzle_snds_L",nil,3000],
						["muzzle_snds_M",nil,3000],
						["muzzle_snds_B",nil,3000],
						["muzzle_snds_H_MG",nil,3000],
						["muzzle_snds_acp",nil,3000],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["FirstAidKit",nil,0],
						["NVGoggles",nil,0],
						["Rangefinder",nil,0],
						["MineDetector",nil,0],
						["SatchelCharge_Remote_Mag",nil,45000],
						["SmokeShell",nil,1000],
 						["SmokeShellRed",nil,1000],
						["SmokeShellGreen",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue",nil,1000],
						["SmokeShellOrange",nil,1000],
						["Chemlight_green",nil,1000],
						["Chemlight_red",nil,1000],
						["Chemlight_yellow",nil,1000],
						["Chemlight_blue",nil,1000]
					]
				];
			};
		};
	};

	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};