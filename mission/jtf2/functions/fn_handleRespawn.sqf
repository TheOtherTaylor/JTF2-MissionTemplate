_respawnUnit = _this select 0;
if (not local _respawnUnit) exitWith {};

//Handle Loadout
[player] call JTF2_fnc_assignGear;