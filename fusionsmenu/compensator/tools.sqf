_pathtotools = "fusionsmenu\admin\tools\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';

if ((getPlayerUID player) in compensator) then { // Compensators
		adminmenu =
		[
			["DNS Comp Menu",true],
				["Player Compensation", [6], "#USER:CompMenu", -5, [["expression", ""]], "1", "1"],
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

compmenu = 
[
	["compensation",true],
		["Player Comp", [2],  "", -5, [["expression", format[_EXECscript1,"playercomp.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
		
showCommandingMenu "#USER:adminmenu";