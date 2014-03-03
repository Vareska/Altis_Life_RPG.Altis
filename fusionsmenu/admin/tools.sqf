_pathtotools = "fusionsmenu\admin\tools\";
_pathtoweapon = "fusionsmenu\admin\weapons\";
_pathtovehicles = "fusionsmenu\admin\veh\";
_pathtosoldier= "fusionsmenu\admin\spawn\";
_pathtoprovingground= "fusionmenu\admin\proving_ground\"
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtosoldier+'%1"';
_EXECscript9 = 'player execVM "'+_pathtoprovingground+'%1"';


if ((getPlayerUID player) in admins) then { // Admins
		adminmenu =
		[
			["DNS Menu",true],
				["Tools", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Cars", [3], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
				["Weapons", [4], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["Proving Ground", [5], "#USER:ProvingGround", -5, [["expression", ""]], "1", "1"],
				["Global Comp", [6], "#USER:CompMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
} else {
adminmenu =
[
	["",true],
		//["Toggle Debug", [2], "", -5, [["expression", format[_execdebug,"playerstats.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];};
ToolsMenu =
[
	["Tools",true],
        ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["Teleport Player To Me", [3],  "", -5, [["expression", format[_EXECscript1,"tptome.sqf"]]], "1", "1"],		
        ["God Mode", [4],  "", -5, [["expression", format[_EXECscript1,"god.sqf"]]], "1", "1"],
		["Car God Mode", [5],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Self", [6],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		["Heal Player", [7],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Player Tags", [8],  "", -5, [["expression", format[_EXECscript1,"playertags.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["Weapons",true],
	//Add Weapons Here Gave some examples :D
		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
		["MK 200", [3],  "", -5, [["expression", format[_EXECscript3,"mk200.sqf"]]], "1", "1"],
		["LRR", [4],  "", -5, [["expression", format[_EXECscript3,"lrr.sqf"]]], "1", "1"],
		["EBR", [5],  "", -5, [["expression", format[_EXECscript3,"ebr.sqf"]]], "1", "1"],
		["GM6", [6],  "", -5, [["expression", format[_EXECscript3,"gm6.sqf"]]], "1", "1"],
		["P07", [7],  "", -5, [["expression", format[_EXECscript3,"phgun.sqf"]]], "1", "1"],
		["Repair Kit", [8],  "", -5, [["expression", format[_EXECscript3,"repairkit.sqf"]]], "1", "1"],
		["Medkit", [9],  "", -5, [["expression", format[_EXECscript3,"medkit.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
///		["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"], ///Same as Veh 2 menu
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
///WeaponMenu2 = 
///[
///	["Weapons 2",true],
///	//Add Weapons Here Gave another page because it could get a little confusing :P
///		["MX", [2],  "", -5, [["expression", format[_EXECscript3,"mx.sqf"]]], "1", "1"],
///		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
///		
///];

VehicleMenu = 
[
	["Vehicles",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Hunter HMG", [3],  "", -5, [["expression", format[_EXECscript5,"hunter.sqf"]]], "1", "1"],
		["Offroad Truck HMG", [4],  "", -5, [["expression", format[_EXECscript5,"offroad.sqf"]]], "1", "1"],
		["Little Bird Heli", [5],  "", -5, [["expression", format[_EXECscript5,"mh9.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			///["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],///Dont need second menu yet
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
///VehicleMenu2 = 
///[
///	["Vehicles 2",true],
///		["Example", [2],  "", -5, [["expression", format[_EXECscript5,"Example.sqf"]]], "1", "1"],
///		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
///];

compmenu = 
[
	["compensation",true],
		["Global comp 50k", [2],  "", -5, [["expression", format[_EXECscript1,"comp50.sqf"]]], "1", "1"],
		["Global comp -50k", [3],  "", -5, [["expression", format[_EXECscript1,"comp-50.sqf"]]], "1", "1"],
		["Global comp 100k", [4],  "", -5, [["expression", format[_EXECscript1,"comp100.sqf"]]], "1", "1"],
		["Global comp -100k", [5],  "", -5, [["expression", format[_EXECscript1,"comp-100.sqf"]]], "1", "1"],
		["Global comp 10M", [6],  "", -5, [["expression", format[_EXECscript1,"comp10m.sqf"]]], "1", "1"],
		["Global comp -10M", [7],  "", -5, [["expression", format[_EXECscript1,"comp-10m.sqf"]]], "1", "1"],
		["Player Comp", [8],  "", -5, [["expression", format[_EXECscript1,"playercomp.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

provingground =
[
	["Proving Ground",true],
		["Load Proving Ground Menu", [2],  "", -5, [["expression", format[_EXECscript9,"init.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
]
		
showCommandingMenu "#USER:adminmenu";