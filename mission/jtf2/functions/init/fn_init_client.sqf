//====================================================================================================
// Set the group IDs
[] call compile preprocessFileLineNumbers "jtf2\functions\setGroupID\f_setGroupIDs.sqf";

// Preset radios
JTF2_radHandle1 = [JTF2_fnc_radio_waitGear, 0.1, []] call CBA_fnc_addPerFrameHandler;

// Add nametags
//JTF2_core_showTags = [JTF2_fnc_core_showTags, 0, []] call CBA_fnc_addPerFrameHandler;