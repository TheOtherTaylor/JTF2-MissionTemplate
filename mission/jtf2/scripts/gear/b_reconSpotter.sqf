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
_uniform = "jtf2_param_blufor_uniform_setting" call BIS_fnc_getParamValue;
switch (_uniform) do{
    case 0:{ //"CAF - CADPAT TW"
        if (isClass (configFile >> "CfgPatches" >> "CFB_Skins")) then{
            player forceAddUniform "CFB_TW_Rolled_Uniform";
            player addVest "CFB_TW_Vest_PlateCarrier2";
            player addBackpack "tf_rt1523g_bwmod";
            player addHeadgear "CFB_TW_Helmet_ECH";
            player addGoggles "G_Tactical_Clear";
            player linkItem "NVGoggles_INDEP";
        };
    };
    case 1:{//"CAF - CADPAT AR"
        if (isClass (configFile >> "CfgPatches" >> "CFB_Skins")) then{
            player forceAddUniform "CFB_AR_Rolled_Uniform";
            player addVest "CFB_AR_Vest_PlateCarrier2";
            player addBackpack "tf_rt1523g_rhs";
            player addHeadgear "CFB_AR_Helmet_ECH";
            player addGoggles "G_Tactical_Clear";
            player linkItem "ACE_NVG_Wide";
        };
    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "rhs_uniform_FROG01_wd";
        player addVest "rhsusf_spc_squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_mich_helmet_marpatwd_headset";
        player addGoggles "G_Tactical_Clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "rhs_uniform_FROG01_d";
        player addVest "rhsusf_spc_squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_mich_helmet_marpatd_headset";
        player addGoggles "G_Tactical_Clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "rhsusf_iotv_ocp_Squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_ach_helmet_headset_ocp";
        player addGoggles "G_Tactical_Clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "rhsusf_iotv_ucp_Squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_ach_helmet_headset_ucp";
        player addGoggles "G_Tactical_Clear";
        player linkItem "ACE_NVG_Wide";
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
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";