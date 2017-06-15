//====================================================================================================
// Set the group IDs
[] call compile preprocessFileLineNumbers "jtf2\functions\setGroupID\f_setGroupIDs.sqf";

//Assign gear based on player assignment from char init
if (!isNil (player getVariable ["JTF2_UnitType",nil])) then {
    [(player)] call JTF2_fnc_assignGear;
};

// Preset radios
JTF2_radHandle1 = [JTF2_fnc_radio_waitGear, 0.1, []] call CBA_fnc_addPerFrameHandler;

// Add nametags
//JTF2_core_showTags = [JTF2_fnc_core_showTags, 0, []] call CBA_fnc_addPerFrameHandler;