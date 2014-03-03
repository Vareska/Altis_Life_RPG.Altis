waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in 
admins) then {
;
act = player addaction [("<t color=""#0074E8"">" + ("DNS Admin Tool") +"</t>"),"fusionsmenu\admin\tools.sqf","",5,false,true,"",""];

};
