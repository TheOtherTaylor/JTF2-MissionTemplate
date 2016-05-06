_killedUnit = _this select 0;
if (not local _killedUnit) exitWith {};

_allowSpectator = ("jtf2_param_ace_use_spectator" call BIS_fnc_getParamValue);
if (_allowSpectator > 0 && isClass (configFile >> "CfgPatches" >> "ace_spectator")) then
{
	// retrieve variable to track alternating spectator/respawn. Nil case checked in onPlayerKilled.sqf
	_variableName = "JTF2_Spectator_Status_" + (getPlayerUID player);
    private _var = missionNamespace getVariable _variableName;
    if (_var == 1) 
    then{ 
        missionNamespace setVariable [_variableName, 0];
        [player, true] call ace_spectator_fnc_stageSpectator;
        [true] call ace_spectator_fnc_setSpectator;
    }
    else{ 
        missionNamespace setVariable [_variableName, 1];
        [player, false] call ace_spectator_fnc_stageSpectator;
        [false] call ace_spectator_fnc_setSpectator;
    };
};

[player] call JTF2_fnc_AssignGear;
