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
            player addHeadgear "CFB_TW_Helmet";
            player addGoggles "rhs_googles_clear";
            player linkItem "NVGoggles_INDEP";
        };
    };
    case 1:{//"CAF - CADPAT AR"
        if (isClass (configFile >> "CfgPatches" >> "CFB_Skins")) then{
            player forceAddUniform "CFB_AR_Rolled_Uniform";
            player addVest "CFB_AR_Vest_PlateCarrier2";
            player addBackpack "tf_rt1523g_rhs";
            player addHeadgear "CFB_AR_Helmet";
            player addGoggles "rhs_googles_clear";
            player linkItem "ACE_NVG_Wide";
        };
    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "rhs_uniform_FROG01_wd";
        player addVest "rhsusf_spc_squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_mich_helmet_marpatwd_headset";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "rhs_uniform_FROG01_d";
        player addVest "rhsusf_spc_squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_mich_helmet_marpatd_headset";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "rhsusf_iotv_ocp_Squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_ach_helmet_headset_ocp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "rhsusf_iotv_ucp_Squadleader";
        player addBackpack "tf_rt1523g_rhs";
        player addHeadgear "rhsusf_ach_helmet_headset_ucp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
};

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag"; //Preload Magazine
player addItemToVest "rhs_mag_M433_HEDP"; //Preload Grenade
player addWeapon "rhs_weap_m16a4_carryhandle_m203";

comment "Add items";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 4 do {player addItemToVest "rhs_mag_M433_HEDP";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m713_Red";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m714_White";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m715_Green";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

_limited = "jtf2_param_limited_loadouts" call BIS_fnc_getParamValue;
switch (_limited) do{
    case 0:{ //"Normal Loadouts"
        player addPrimaryWeaponItem "rhsusf_acc_SpecterDR";
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player linkItem "tf_anprc152";
        player linkItem "ItemGPS";
        player addWeapon "Rangefinder";
    };
    case 1:{//"Limited Loadouts"
        //Just In Case
        player addWeapon "Binoculars";
        player unlinkItem "NVGoggles";
        player unlinkItem "NVGoggles_OPFOR";
        player unlinkItem "NVGoggles_INDEP";
        player unlinkItem "ACE_NVG_Wide";
        player unlinkItem "ItemGPS";
        player unlinkItem "ItemRadio";
    };
};

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";