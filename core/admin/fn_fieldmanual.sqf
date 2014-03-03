/*
Field manual blocker

stops fucking script kiddy nob twat faggot freaky fucking shit wankers shits getting to field manual for hacking purposes

generally removes all the fucking shitty manual

XXX: what?

*/

{
while {true} do
{
waitUntil {!isNull (findDisplay 49)};
((findDisplay 49) displayCtrl 122) ctrlEnable false;
((findDisplay 49) displayCtrl 122) ctrlShow false;
waitUntil {isNull (findDisplay 49)};
};
};