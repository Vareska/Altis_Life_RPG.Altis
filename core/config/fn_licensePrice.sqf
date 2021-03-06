/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1000}; //Drivers License cost
	case "boat": {1000}; //Boating license cost
	case "pilot": {10000}; //Pilot/air license cost
	case "gun": {15000}; //Firearm/gun license cost
	case "dive": {1500}; //Diving license cost
	case "oil": {10000}; //Oil processing license cost
	case "cair": {10000}; //Cop Pilot License cost
	case "swat": {40000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {20000}; //Heroin processing license cost
	case "marijuana": {15000}; //Marijuana processing license cost
	case "medmarijuana": {5000}; //Medical Marijuana processing license cost
	case "gang": {25000}; //Gang license cost
	case "rebel": {90000}; //Rebel license cost
	case "truck": {3000}; //Truck license cost
	case "diamond": {35000};
	case "salt": {12000};
	case "cocaine": {25000};
	case "sand": {14500};
	case "iron": {9500};
	case "copper": {1000};
	case "cement": {4000};
	case "pmc": {250000}; //pmc license cost
};