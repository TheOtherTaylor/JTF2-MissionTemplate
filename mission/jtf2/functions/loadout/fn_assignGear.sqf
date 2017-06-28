if (!hasInterface) exitWith {};

// Init once only
_unit = _this select 0;

if (not local _unit) exitWith { diag_log "_unit is not local. Aborting gear assignment."; };
if (player != _unit) exitWith { diag_log "_unit is not player. Aborting gear assignment."; };
_hasGearBeenAssignedAlready = _unit getVariable ["JTF2_loadoutAssigned",false];
if (_hasGearBeenAssignedAlready) exitWith { diag_log "Gear already assigned." };

// Get the unit type, overriding if the caller passed in a specific value
_unitType = _unit getVariable ["JTF2_UnitType","B_rifleman"];

if (local _unit) then{
	_loadoutSetting = "jtf2_param_starting_loadouts" call BIS_fnc_getParamValue;
	if (_unitType == "spectator") then{
		// If we're assigning spectator gear, that's a special case that should work regardless of mods.
		_loadoutSetting = 3;
	};
	switch (_loadoutSetting) do{
		case 0: { // Role-specific equipment
			// RHS, ACE and CFB_Skins are required for these loadouts. Otherwise
			// we'll just leave things at the default NATO loadouts.
			if (_unitType == "spectator" || (
					isClass (configFile >> "CfgPatches" >> "rhs_weapons")
					&& isClass (configFile >> "CfgPatches" >> "ACE_Medical")
					&& isClass (configFile >> "CfgPatches" >> "task_force_radio"))) then
			{
				 [] execVM"jtf2\scripts\gear\" + _unitType + ".sqf";
				 missionNamespace setVariable ["JTF2_loadoutAssigned",true];
			};
		};
		case 2: { //Remove All Gear
			removeUniform _unit;
			removeAllWeapons _unit;
			removeBackpack _unit;
			removeAllItems _unit;
			removeVest _unit;
			removeHeadgear _unit;
			_unit unlinkItem "NVGoggles";
			_unit unlinkItem "NVGoggles_OPFOR";
			_unit unlinkItem "NVGoggles_INDEP";
			_unit unlinkItem "ItemGPS";
			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemRadio";
			_unit linkItem "ItemWatch";
			missionNamespace setVariable ["JTF2_loadoutAssigned",true];
		};
		default{
			// Strip all the equipment except for some basic items
			removeAllWeapons _unit;
			removeBackpack _unit;
			removeAllItems _unit;
			removeVest _unit;
			removeHeadgear _unit;
			_unit unlinkItem "NVGoggles";
			_unit unlinkItem "NVGoggles_OPFOR";
			_unit unlinkItem "NVGoggles_INDEP";
			_unit unlinkItem "ItemGPS";
			_unit linkItem "ItemMap";
			_unit linkItem "ItemCompass";
			_unit linkItem "ItemRadio";
			_unit linkItem "ItemWatch";
			missionNamespace setVariable ["JTF2_loadoutAssigned",true];
		};
	};
	diag_log "Assigned starting gear.";
};
