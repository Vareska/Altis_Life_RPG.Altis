//white smokes attatched vehicle (probs jet yolo)
// By: [AP] Jonny
//attatches smokes to rear of vehicle 3 in a row (sync'd for jet)


_jet = vehicle player;
//right side
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[1,-6,0]];
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[1,-6,0]];
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[1,-6,0]];



//left side
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[-1,-6,0]];
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[-1,-6,0]];
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[-1,-6,0]];


//Centre attatch
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[0,-6,0]];
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[0,-6,0]];
Smoke = "SmokeShell" createVehicle [getPos _jet select 0, getPos _jet select 1,1]; Smoke attachTo [_jet,[0,-6,0]];
