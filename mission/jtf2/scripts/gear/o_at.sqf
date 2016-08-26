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
_uniform = "jtf2_param_opfor_uniform_setting" call BIS_fnc_getParamValue;
switch (_uniform) do{
    case 0:{ //"EMR-Summer"
        player forceAddUniform "rhs_uniform_emr_patchless";
        player addVest "rhs_6b23_digi_6sh92_vog";
        player addHeadgear "rhs_6b27m_digi";
        player addGoggles "rhs_googles_clear";
        player linkItem "NVGoggles_INDEP";
        player addBackpack "rhs_rpg_empty";
    };
    case 1:{//"EMR-Desert"
        player forceAddUniform "rhs_uniform_emr_des_patchless";
        player addVest "rhsgref_6b23_khaki_rifleman";
        player addHeadgear "rhs_6b27m_green";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
        player addBackpack "rhs_rpg_empty";
    };
};

comment "Add weapons";
player addItemToVest "rhs_30Rnd_545x39_AK"; //Preload Mag
player addWeapon "rhs_weap_ak74m";
player addPrimaryWeaponItem "rhs_acc_dtk";
player addWeapon "rhs_weap_rpg7";
player addSecondaryWeaponItem "rhs_acc_pgo7v";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_rpg7_PG7VL_mag";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";