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
        player addVest "rhs_6b23_digi_crew";
        player addHeadgear "rhs_tsh4";
        player addGoggles "rhs_googles_clear";
        player linkItem "NVGoggles_INDEP";
        player addBackpack "tf_mr3000_rhs";
    };
    case 1:{//"EMR-Desert"
        player forceAddUniform "rhs_uniform_emr_des_patchless";
        player addVest "rhsgref_6b23_khaki";
        player addHeadgear "rhs_tsh4";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
        player addBackpack "tf_mr3000_rhs";
    };
};

comment "Add weapons";
player addItemToVest "rhs_30Rnd_545x39_AK";//Preload Mag
player addWeapon "rhs_weap_ak74m_folded";
player addPrimaryWeaponItem "rhs_acc_dtk";
player addWeapon "Rangefinder";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToVest "rhs_mag_rgd5";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "rhs_30Rnd_545x39_AK";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_fadak";
player linkItem "ItemGPS";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";