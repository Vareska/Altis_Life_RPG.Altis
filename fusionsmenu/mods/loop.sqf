while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "fusionsmenu\mods\activate.sqf";


  waitUntil {!alive player};
};