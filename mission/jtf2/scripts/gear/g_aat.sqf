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
        player addBackpack "rhs_rpg_empty";
        player addHeadgear "LOP_H_Beanie_dpmw";
    };
    case 1:{//"Guerilla Desert"
        player forceAddUniform "LOP_U_AM_Fatigue_01_6";
        player addVest "rhsgref_otv_khaki";
        player addBackpack "rhs_rpg_empty";
        player addHeadgear "LOP_H_Beanie_tan";
    };
};

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag"; //Preload Mag
player addWeapon "rhs_weap_m16a4_carryhandle";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_rpg7_PG7V_mag";};
player addItemToBackpack "rhs_rpg7_OG7V_mag";
player addItemToBackpack "rhs_rpg7_PG7VL_mag";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

_limited = "jtf2_param_limited_loadouts" call BIS_fnc_getParamValue;
switch (_limited) do{
    case 0:{ //"Normal Loadouts"
        player linkItem "tf_anprc148jem";
    };
    case 1:{//"Limited Loadouts"
        //Just In Case
        player unlinkItem "NVGoggles";
        player unlinkItem "NVGoggles_OPFOR";
        player unlinkItem "NVGoggles_INDEP";
        player unlinkItem "ACE_NVG_Wide";
        player unlinkItem "ItemGPS";
        player unlinkItem "tf_anprc148jem";
    };
};

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";