//Red smokes attatched to jet
// By: [AP] Jonny
//attatches smokes to rear of vehicle 3 in a row (sync'd for jet)

_jet = vehicle player;
//right side
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[1,-6,0]];
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[1,-6,0]];
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[1,-6,0]];


//left side
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[-1,-6,0]];
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[-1,-6,0]];
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[-1,-6,0]];

//Centre attatch
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[0,-6,0]];
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[0,-6,0]];
Smoke = "SmokeShellRed" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[0,-6,0]];