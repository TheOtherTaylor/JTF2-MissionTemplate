comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
_uniform = "jtf2_param_indep_uniform_setting" call BIS_fnc_getParamValue;
switch (_uniform) do{
    case 0:{ //"Guerilla Woodland"
        player forceAddUniform "LOP_U_UA_Fatigue_03";
        player addVest "rhsgref_otv_khaki";
        player addHeadgear "LOP_H_Beanie_dpmw";
    };
    case 1:{//"Guerilla Desert"
        player forceAddUniform "LOP_U_AM_Fatigue_01_6";
        player addVest "rhsgref_otv_khaki";
        player addHeadgear "LOP_H_Beanie_tan";
    };
};

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag"; //Preload Magazine
player addWeapon "rhs_weap_m4a1_carryhandle";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";

_limited = "jtf2_param_limited_loadouts" call BIS_fnc_getParamValue;
switch (_limited) do{
    case 0:{ //"Normal Loadouts"
        player linkItem "tf_anprc148jem";
        player linkItem "ItemGPS";
    };
    case 1:{//"Limited Loadouts"
        //Just In Case
        player unlinkItem "NVGoggles";
        player unlinkItem "NVGoggles_OPFOR";
        player unlinkItem "NVGoggles_INDEP";
        player unlinkItem "ACE_NVG_Wide";
        player unlinkItem "ItemGPS";
        player linkItem "ItemRadio";
    };
};

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";