waitUntil {!isNull player};
waitUntil {player == player};
#include "=BTC=_functions.sqf"
BTC_action_cargo   = false;
BTC_l_dragging     = false;
BTC_l_actions_cond = true;


_dlg   = player addaction [("<t color=""#00FF00"">") + ("Check Vehicle") + "</t>",BTC_dir_action,[[],BTC_l_check_vehicle],-7,false,false,"","BTC_l_actions_cond && count (nearestObjects [player, BTC_def_vehicles, 5]) > 0 || {vehicle player isKindOf _x} count BTC_def_vehicles > 0"];
_sel   = player addaction [("<t color=""#00FF00"">") + ("Select") + "</t>",BTC_dir_action,[[],BTC_l_select],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_cargo, 5]) > 0"];
_load  = player addaction [("<t color=""#00FF00"">") + ("Load") + "</t>",BTC_dir_action,[[],BTC_l_load],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && !isNull BTC_cargo_selected && count (nearestObjects [player, BTC_def_vehicles, 5]) > 0"];
_drag  = player addaction [("<t color=""#00FF00"">") + ("Drag") + "</t>",BTC_dir_action,[[],BTC_l_drag],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
_plac  = player addaction [("<t color=""#00FF00"">") + ("Place") + "</t>",BTC_dir_action,[[],BTC_l_placement],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_placement, 5]) > 0"];
_eh = player addEventHandler ["respawn", 
{
	_actions = [] spawn 
	{
		waitUntil {Alive player};
		BTC_action_cargo   = false;
		BTC_l_dragging     = false;
		BTC_l_actions_cond = true;
		_dlg   = player addaction [("<t color=""#00FF00"">") + ("Check Vehicle") + "</t>",BTC_dir_action,[[],BTC_l_check_vehicle],-7,false,false,"","BTC_l_actions_cond && count (nearestObjects [player, BTC_def_vehicles, 5]) > 0 || {vehicle player isKindOf _x} count BTC_def_vehicles > 0"];
		_sel   = player addaction [("<t color=""#00FF00"">") + ("Select") + "</t>",BTC_dir_action,[[],BTC_l_select],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_cargo, 5]) > 0"];
		_load  = player addaction [("<t color=""#00FF00"">") + ("Load") + "</t>",BTC_dir_action,[[],BTC_l_load],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && !isNull BTC_cargo_selected && count (nearestObjects [player, BTC_def_vehicles, 5]) > 0"];
		_drag  = player addaction [("<t color=""#00FF00"">") + ("Drag") + "</t>",BTC_dir_action,[[],BTC_l_drag],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_drag, 5]) > 0"];
		_plac  = player addaction [("<t color=""#00FF00"">") + ("Place") + "</t>",BTC_dir_action,[[],BTC_l_placement],-7,false,false,"","BTC_l_actions_cond && vehicle player == player && count (nearestObjects [player, BTC_def_placement, 5]) > 0"];
	};
}];
BTC_main_cc =
[
	"Motorcycle",1,
	"Car",3,
	"Truck",10,
	"Wheeled_APC",5,
	"Tank",5,
	"Ship",3,
	"Helicopter",6
];
BTC_main_rc =
[
	"ReammoBox_F",2,
	"Strategic",2,
	"Motorcycle",3,
	"Car",11,
	"Truck",15,
	"Wheeled_APC",20,
	"Tank",25,
	"Ship",15,
	"Helicopter",9999
];
/*
BTC_main_c_c =
[
	[
		//Cars
		"cop_car_1",
		"cop_car_2",
		"cop_car_3",
		"cop_car_5",
		"B_MRAP_01_F",
		"B_MRAP_01_gmg_F",
		"B_MRAP_01_hmg_F",
		"O_MRAP_02_F",
		"O_MRAP_02_gmg_F",
		"O_MRAP_02_hmg_F",
		"B_Quadbike_01_F",
		"C_Offroad_01_F",
		"O_Quadbike_01_F",
		"I_Quadbike_01_F",
		"I_MRAP_03_F",
		"I_MRAP_03_gmg_F",
		"I_MRAP_03_hmg_F",		
		//Trucks
		"B_Truck_01_transport_F",
		"B_Truck_01_covered_F",
		"I_Truck_02_covered_F",
		"O_Truck_02_covered_F",
		"I_Truck_02_transport_F",
		"O_Truck_02_transport_F",
		"O_Truck_02_transport_F",
		//Ships
		"B_Boat_Transport_01_F",
		"C_Boat_Civil_01_police_F",
		"B_Boat_Armed_01_minigun_F",
		"B_SDV_01_F",
	]
	,
	[
	
	]
];
*/