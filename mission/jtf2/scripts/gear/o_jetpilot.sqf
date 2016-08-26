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
        player forceAddUniform "rhs_uniform_df15";
        player addVest "rhs_vydra_3m";
        player addHeadgear "rhs_zsh7a";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
        player addBackpack "B_Parachute";
    };
    case 1:{//"EMR-Desert"
        player forceAddUniform "rhs_uniform_emr_des_patchless";
        player addVest "rhsgref_6b23_khaki_rifleman";
        player addHeadgear "rhs_zsh7a";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
        player addBackpack "B_Parachute";
    };
};

comment "Add weapons";
player addItemToVest "rhs_30Rnd_545x39_AK";//Preload Mag
player addWeapon "rhs_weap_ak74m_folded";
player addPrimaryWeaponItem "rhs_acc_dtk";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToVest "SmokeShell";
player addItemToVest "SmokeShellGreen";
player addItemToVest "SmokeShellRed";
for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";