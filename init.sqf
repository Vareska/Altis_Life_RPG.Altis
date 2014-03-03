enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
/*
if(isNull player) then 
{
	if(!X_JIP && !isServer) then
	{
		[] spawn (compile PreprocessFileLineNumbers "core\jip.sqf");
	};
	X_JIP = true;
};
*/
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.1";
/*
if(X_Client) then
{
	[] execVM "core\init.sqf";
};
*/
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

if(!StartProgress) then
{
	[8,true,false] execFSM "core\fsm\core_time.fsm";
};

// Admin list
if (isServer) then
{
	_handle = [] execVM "uid\admins.sqf";
	waitUntil {scriptDone _Handle};

	_handle = [] execVM "uid\genericadmin.sqf";
	waitUntil {scriptDone _Handle};

	_handle = [] execVM "uid\pmc.sqf";
	waitUntil {scriptDone _Handle};
};

StartProgress = true;//start antidebug
execVM "fusionsmenu\admin\loop.sqf";

// enable logistics
_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";

//start antidebug
//[] execVM "core\admin\fn_debug.sqf";
[] execVM "core\admin\fn_fieldmanual.sqf";
