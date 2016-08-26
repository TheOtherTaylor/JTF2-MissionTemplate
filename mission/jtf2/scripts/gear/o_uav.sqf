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
        player addBackpack "B_UAV_01_backpack_F";
    };
    case 1:{//"EMR-Desert"
        player forceAddUniform "rhs_uniform_emr_des_patchless";
        player addVest "rhsgref_6b23_khaki_rifleman";
        player addHeadgear "rhs_6b27m_green";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
        player addBackpack "B_UAV_01_backpack_F";
    };
};

comment "Add weapons";
player addItemToVest "rhs_30Rnd_545x39_AK"; //Preload Mag
player addWeapon "rhs_weap_ak74m";
player addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToVest "rhs_mag_rgd5";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 9 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
for "_i" from 1 to 4 do {player addItemToBackpack "rhs_100Rnd_762x54mmR";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak";
player linkItem "B_UavTerminal";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";