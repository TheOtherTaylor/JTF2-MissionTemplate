// Setup the pools for reinforcements if CFB_Skins is running.
[] execVM "Ares_AddCfbReinforcementPools.sqf";
//MCC_path = ""; // Keeps specatator script from freaking out.
// TODO enable when this is complete.
// [] execVM "Ares_addClassRestrictedArsenalModule.sqf";
// [] execVM "Ares_addRespawnTicketModules.sqf";

//enableSaving [false, false]; //Don't allow saving
enableSentences false; // Keep the commander units from saying things automatically

////TFAR settings (currently all commented out, will fix in future)
//if (isClass (configFile >> "CfgPatches" >> "task_force_radio")) then {

//    #include "\task_force_radio\functions\common.sqf";

//    //Serious mode settings (Set in server userconfig, alter below to override)
//    //tf_radio_channel_name = "TaskForceRadio";
//    //tf_radio_channel_password = "123";

//    //Encoding
//    //tf_west_radio_code = "_bluefor"; //Default: _bluefor
//    //tf_east_radio_code = "_opfor";   //Default: _opfor
//    //tf_guer_rado_code = "_independent" //Default: _independent or encoding of friendly faction.

//    if (isSever) then {   
//        //Basic Settings (Set in server userconfig, alter below to override)
//        //tf_no_auto_long_range_radio = true;
//        //tf_give_personal_radio_to_regular_soldier = false;
//        //TF_give_microdagr_to_soldier = false;
//        //tf_same_sw_frequencies_for_side = true;
//        //tf_same_lr_frequencies_for_side = true;
//        //tf_terrain_interception_coefficient = 7.0;

//        //ARRAY: Settings [ 0: NUMBER - Active channel, 
//        //                  1: NUMBER - Volume, 
//        //                  2: ARRAY - Frequencies for channels (9 elements), 
//        //                  3: NUMBER - Stereo setting (0: L&R*, 1:L, 2:R), 
//        //                  4: STRING - Encryption code,
//        //                  5: NUMBER - Additional active channel, 
//        //                  6: NUMBER - Additional active channel stereo mode (0: L&R*, 1:L, 2:R), 
//        //                  7: OBJECT - Owner, 
//        //                  8: NUMBER - Speaker mode]
//        //EX:   tf_freq_west = [0,7,["47.1","48.2","49.3","50.4","51.5","52.6","53.7","54.8","80.1"],0,"brk2014",-1,0];

//        //Generate Defaults
//        _settingsSw = call TFAR_fnc_generateSwSettings;
//        //Active Channel (Need to imrpove so not all squad starts with same active channel)
//        _settingsSW set [0,0];
//        //Generic Channels (Placeholder, need to improve)
//        _settingsSw set [2,["101", "102", "103", "104", "105", "106", "107", "108", "100"]];
//        //Set Primary Channel to left ear 
//        _settingsSw set [3,1];
//        //Set alternate Channel (Need to improve so not all squads have same alternate channel)
//        _settingsSW set [5,8];
//        //Set alternate Channel to right ear
//        _settingsSW set [6,2];
//        //Push Settings
//        tf_freq_west = _settingsSw;

//        _settingsLr = call TFAR_fnc_generateLrSettings;
//        //Set default channel to 77.7
//        _settingsLr set[2, "77.7"];
//        //Push Settings
//        tf_freq_west_lr = _settingsLr;
//
//        publicVariable tf_freq_west;
//        publicVariable tf_freq_west_lr;
//    };
//};

if (isServer && ("jtf2_param_add_objects_to_zeus" call BIS_fnc_getParamValue) == 1) then{
	// Give zeus control of preplaced and automatically spawned units
	[[zeusModule1, zeusModule2, zeusModule3, zeusModule4, zeusModule5, zeusAdmin], true] execVM "ADV_zeus.sqf";
};

if (isServer) then{
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
};

// Everyone is enemies with everyone else.
switch ("jtf2_param_independent_friendly_setting" call BIS_fnc_getParamValue) do{
    case 0: {
        west setFriend [resistance, 1];
        resistance setFriend [west, 1];
        east setFriend [resistance, 1];
        resistance setFriend [east, 1];
    };    
    case 1: {
        west setFriend [resistance, 0];
        resistance setFriend [west, 0];
        east setFriend [resistance, 1];
        resistance setFriend [east, 1];
    };   
    case 2: {
        west setFriend [resistance, 1];
        resistance setFriend [west, 1];
        east setFriend [resistance, 0];
        resistance setFriend [east, 0];
    };   
    case 3: {
        west setFriend [resistance, 0];
        resistance setFriend [west, 0];
        east setFriend [resistance, 0];
        resistance setFriend [east, 0];
    };
};

switch ("jtf2_param_allow_grass_changes" call BIS_fnc_getParamValue) do{
	case 0: { tawvd_disableGrassChanges = true; };
	case 1: { tawvd_disablenone = true; };
};

if (!isDedicated) then{
	// Register the MP event handlers.
	[] spawn{
		sleep 1;  waitUntil { sleep 0.1; !isNull player; }; 
		player addMpEventHandler
			[
				"MPRespawn",
				{
					[_this select 0] spawn{
						waitUntil { sleep 0.1; !isNull player; };
						[_this select 0] call JTF2_fnc_handleRespawn;
					};
				}
			];
		player addMpEventHandler
			[
				"MPKilled",
				{
					[_this select 0] spawn{
						waitUntil { sleep 0.1; !isNull player; };
						[_this select 0] call JTF2_fnc_handleKilled;
					};
				}
			];
	};
};

//Add Disconnect event handler
addMissionEventHandler ["HandleDisconnect",
{
    _unit = _this select 0;
    _uid = _this select 2;
    //deleteVehicle _unit;
    _variableName = "JTF2_Spectator_Status_" + _uid;
    missionNamespace setVariable [_variableName, 1]; //make sure player spawns in correctly on reconnect
}];
