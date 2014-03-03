/*
	File: fn_clothing_bruce.sqf
	Author: Tonic edited by Jonny
	
	Description:
	Master configuration file for pmc clothing
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"PMC Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_Competitor","PMC Uniform",5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_blk_ION","PMC Headgear",300]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Tactical_Clear",nil,25]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_blk",nil,10000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_TacticalPack_blk",nil,7500]
		];
	};
};