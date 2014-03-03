waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in mods) then {
;
act = player addaction [("<t color=""#0074E8"">" + ("DNS Mod Tool") +"</t>"),"fusionsmenu\mods\tools.sqf","",5,false,true,"",""];

};
