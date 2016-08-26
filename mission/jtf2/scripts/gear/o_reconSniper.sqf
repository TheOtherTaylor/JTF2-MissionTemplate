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
        player addHeadgear "rhs_Booniehat_digi";
        player addGoggles "rhs_googles_clear";
        player linkItem "NVGoggles_INDEP";

    };
    case 1:{//"EMR-Desert"
        player forceAddUniform "rhs_uniform_emr_des_patchless";
        player addVest "rhsgref_6b23_khaki_sniper";
        player addHeadgear "H_Booniehat_khk";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";

    };
};

comment "Add weapons";
player addItemToUniform "rhs_10Rnd_762x54mmR_7N1";//Preload Mag
player addWeapon "rhs_weap_svdp_npz";
player addPrimaryWeaponItem "rhs_acc_tgpv";
player addPrimaryWeaponItem "optic_AMS";
player addWeapon "Binocular";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellRed";};
for "_i" from 1 to 13 do {player addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";