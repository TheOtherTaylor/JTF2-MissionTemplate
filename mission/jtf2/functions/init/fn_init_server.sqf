//====================================================================================================
// Server Scripts
if !(isServer) exitWith {};

if (("jtf2_param_add_objects_to_zeus" call BIS_fnc_getParamValue) == 1) then{
    // Give zeus control of preplaced and automatically spawned units
    [[zeusModule1, zeusModule2, zeusModule3, zeusModule4, zeusModule5, zeusAdmin], true] execVM "ADV_zeus.sqf";
};

// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
[civilian, zeusRespawn] call JTF2_fnc_PositionBase;  
if (("jtf2_param_create_spawn" call BIS_fnc_getParamValue) == 1 || !isDedicated) then{
    [west, nato_respawn] call JTF2_fnc_PositionBase;
    [west, opfor_respawn] call JTF2_fnc_PositionBase;
}
else{
    deleteVehicle nato_respawn;
    deleteVehicle opfor_respawn;
};

// Generate frequencies for preset radios
call JTF2_fnc_radio_genFreqs;
