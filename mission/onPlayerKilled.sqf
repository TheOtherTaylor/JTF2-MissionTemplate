_killedUnit = _this select 0;
if (not local _killedUnit) exitWith {};

_allowSpectator = ("jtf2_param_ace_use_spectator" call BIS_fnc_getParamValue);
if (_allowSpectator > 0) then
{
	// Create variable to track alternating spectator/respawn
	_variableName = "JTF2_Spectator_Status_" + (getPlayerUID player);
	//If player spectator status does not exist, create player at spectator = false
    private _var = missionNamespace getVariable _variableName;
    if (isNil "_var") then
    {
        missionNamespace setVariable [_variableName, 0]; 
    };
};