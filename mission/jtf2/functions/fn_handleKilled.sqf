_killedUnit = _this select 0;
if (not local _killedUnit) exitWith {};

player setVariable ["JTF2_Gear_Assigned", false];

_allowSpectator = ("jtf2_param_ace_use_spectator" call BIS_fnc_getParamValue);

if(allowSpectator==0) exitWith{
    missionNamespace setVariable [_varA, false];
};

//get Spectator Status Variable
_varA = "JTF2_Spectator_Status_" + (getPlayerUID player);
_spectatorStatus = missionNamespace getVariable [_varA, true];


