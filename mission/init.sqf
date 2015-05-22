// Setup the pools for reinforcements if CFB_Skins is running.
[] execVM "Ares_AddCfbReinforcementPools.sqf";
MCC_path = ""; // Keeps specatator script from freaking out.
[] execVM "Ares_addClassRestrictedArsenalModule.sqf";
[] execVM "Ares_addRespawnTicketModules.sqf";

enableSaving [false, false]; //Don't allow saving
enableSentences false; // Keep the commander units from saying things automatically

if (isServer && ("jtf2_param_add_objects_to_zeus" call BIS_fnc_getParamValue) == 1) then
{
	// Give zeus control of preplaced and automatically spawned units
	[[zeusModule1, zeusModule2, zeusModule3, zeusModule4, zeusModule5, zeusAdmin], true] execVM "ADV_zeus.sqf";
};

if (isServer) then
{
	// Generate a random respawn point for the Zeus players. This will put them someplace on the map.
	[civilian, zeusRespawn] call JTF2_fnc_PositionBase;
	
	if (("jtf2_param_create_spawn" call BIS_fnc_getParamValue) == 1 || !isDedicated) then
	{
		[west, nato_respawn] call JTF2_fnc_PositionBase;
		[west, opfor_respawn] call JTF2_fnc_PositionBase;
	}
	else
	{
		deleteVehicle nato_respawn;
		deleteVehicle opfor_respawn;
	};
};

// Everyone is enemies with everyone else.
 west setFriend [resistance, 0];
 resistance setFriend [west, 0];
 east setFriend [resistance, 0];
 resistance setFriend [east, 0];

 switch ("jtf2_param_allow_grass_changes" call BIS_fnc_getParamValue) do
 {
	case 0: { tawvd_disableGrassChanges = true; };
	case 1: { tawvd_disablenone = true; };
 };
