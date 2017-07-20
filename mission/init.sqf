if (isServer) then {JTF2_fnc_init_server call CBA_fnc_directCall;};

enableSentences false; // Keep the commander units from saying things automatically

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

if (!isDedicated) then{
	// Register the MP event handlers.
	[] spawn{
		waitUntil { sleep 0.5; !isNull player; }; 
		player addMpEventHandler["MPRespawn", {
			[_this select 0] spawn{
				waitUntil { sleep 0.1; !isNull player; };
				[_this select 0] call JTF2_fnc_handleRespawn;
			};
		}];
		player addMpEventHandler["MPKilled", {
			[_this select 0] spawn{
				waitUntil { sleep 0.1; !isNull player; };
				[_this select 0] call JTF2_fnc_handleKilled;
			};
		}];
	};
};

// Setup the pools for reinforcements if CFB_Skins is running.
[] execVM "Ares_AddCfbReinforcementPools.sqf";
// TODO enable when this is complete.
// [] execVM "Ares_addClassRestrictedArsenalModule.sqf";
// [] execVM "Ares_addRespawnTicketModules.sqf";

switch ("jtf2_param_allow_grass_changes" call BIS_fnc_getParamValue) do{
    case 0: { tawvd_disableGrassChanges = true; };
    case 1: { tawvd_disablenone = true; };
};

//Init Players
if (hasInterface) then {
    // Make sure init isn't called until player is ready
    [{!isNull player}, {call JTF2_fnc_init_client;}, []] call CBA_fnc_waitUntilAndExecute;
};