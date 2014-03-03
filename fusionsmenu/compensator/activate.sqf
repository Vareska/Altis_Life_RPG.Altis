waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in compensator) then {
;
act = player addaction [("<t color=""#0074E8"">" + ("DNS Comp Tool") +"</t>"),"fusionsmenu\compensator\tools.sqf","",5,false,true,"",""];

};
