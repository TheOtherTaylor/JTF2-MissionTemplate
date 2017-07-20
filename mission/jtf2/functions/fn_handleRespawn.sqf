_respawnUnit = _this select 0;
if (not local _respawnUnit) exitWith {};

//Handle Spectator
_allowSpectator = ("jtf2_param_ace_use_spectator" call BIS_fnc_getParamValue);
_varA = "JTF2_Spectator_Status_" + (getPlayerUID player);
_spectatorStatus = missionNamespace getVariable [_varA, true];

if (_allowSpectator > 0 && isClass (configFile >> "CfgPatches" >> "ace_spectator")) then{
    if (_spectatorStatus) then{ 
        missionNamespace setVariable [_varA, false];
        [player, false] call ace_spectator_fnc_stageSpectator;
        [false] call ace_spectator_fnc_setSpectator;
    }else{ 
        missionNamespace setVariable [_varA, true];
        [player, true] call ace_spectator_fnc_stageSpectator;
        [true] call ace_spectator_fnc_setSpectator;
        ["ace_spectator_showIcons", 0] call ace_common_fnc_setParameter; 
    };
};

//Handle Loadout
[player] call JTF2_fnc_assignGear;