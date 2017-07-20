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
        player addBackpack "rhssaf_kitbag_md2camo";
    };
    case 1:{//"Guerilla Desert"
        player forceAddUniform "LOP_U_AM_Fatigue_01_6";
        player addVest "rhsgref_otv_khaki";
        player addHeadgear "LOP_H_Beanie_tan";
        player addBackpack "rhssaf_kitbag_md2camo";
    };
};

comment "Add weapons";
player addItemToVest "9Rnd_45ACP_Mag"; //Preload Magazine
player addItemToVest "rhsusf_20Rnd_762x51_m993_Mag"; //Preload Magazine
player addWeapon "rhs_weap_sr25_ec";
player addPrimaryWeaponItem "rhsusf_acc_SR25S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "optic_AMS";
player addPrimaryWeaponItem "bipod_01_F_blk";
player addWeapon "hgun_ACPC2_F";
player addHandgunItem "muzzle_snds_acp";
player addWeapon "Ace_Vector";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToVest "9Rnd_45ACP_Mag";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_ATragMX";
player addItemToVest "ACE_microDAGR";
for "_i" from 1 to 7 do {player addItemToVest "rhsusf_20Rnd_762x51_m993_Mag";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addItemToBackpack "ACE_HandFlare_Red";
player addItemToBackpack "ACE_HandFlare_Green";
player addItemToBackpack "ACE_SpottingScope";
player addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
player linkItem "ItemMap";
player linkItem "ItemCompass";

_limited = "jtf2_param_limited_loadouts" call BIS_fnc_getParamValue;
switch (_limited) do{
    case 0:{ //"Normal Loadouts"
        player linkItem "tf_microdagr";
        player linkItem "tf_anprc148jem";
    };
    case 1:{//"Limited Loadouts"
        //Just In Case
        player unlinkItem "NVGoggles";
        player unlinkItem "NVGoggles_OPFOR";
        player unlinkItem "NVGoggles_INDEP";
        player unlinkItem "ACE_NVG_Wide";
        player unlinkItem "ItemGPS";
        player linkItem "tf_anprc148jem";
    };
};


[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";