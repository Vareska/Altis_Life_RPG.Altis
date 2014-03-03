while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "fusionsmenu\compensator\activate.sqf";


  waitUntil {!alive player};
};