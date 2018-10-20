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
            player forceAddUniform "CFB_TW_Uniform";
            player addVest "CFB_TW_Vest_PlateCarrier2";
            player addBackpack "CFB_TW_Backpack_Kitbag";
            player addHeadgear "CFB_TW_Helmet";
            player addGoggles "rhs_googles_clear";
            player linkItem "NVGoggles_INDEP";
        };
    };
    case 1:{//"CAF - CADPAT AR"
        if (isClass (configFile >> "CfgPatches" >> "CFB_Skins")) then{
            player forceAddUniform "CFB_AR_Uniform";
            player addVest "CFB_AR_Vest_PlateCarrier2";
            player addBackpack "CFB_AR_Backpack_Kitbag";
            player addHeadgear "CFB_AR_Helmet";
            player addGoggles "rhs_googles_clear";
            player linkItem "ACE_NVG_Wide";
        };
    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "rhs_uniform_FROG01_wd";
        player addVest "rhsusf_spc_light";
        player addBackpack "B_Kitbag_cbr";
        player addHeadgear "rhsusf_mich_helmet_marpatwd";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "rhs_uniform_FROG01_d";
        player addVest "rhsusf_spc_light";
        player addBackpack "B_Kitbag_cbr";
        player addHeadgear "rhsusf_mich_helmet_marpatd";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "rhsusf_iotv_ocp_Rifleman";
        player addBackpack "B_Kitbag_cbr";
        player addHeadgear "rhsusf_ach_helmet_ocp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "rhsusf_iotv_ucp_Rifleman";
        player addBackpack "B_Kitbag_cbr";
        player addHeadgear "rhsusf_ach_helmet_ucp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
};

comment "Add weapons";
player addItemToUniform "rhs_mag_30Rnd_556x45_M855A1_Stanag"; //Preload Magazine
player addItemToBackpack "rhs_mag_smaw_HEDP"; //Preload Launcher
player addWeapon "rhs_weap_m16a4_carryhandle";
player addWeapon "rhs_weap_smaw";
player addSecondaryWeaponItem "rhs_weap_optic_smaw";

comment "Add items";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_MapTools";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player addItemToBackpack "rhs_mag_smaw_HEAA";
player addItemToBackpack "rhs_mag_smaw_HEDP";
player addItemToBackpack "rhs_mag_smaw_SR";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

_limited = "jtf2_param_limited_loadouts" call BIS_fnc_getParamValue;
switch (_limited) do{
    case 0:{ //"Normal Loadouts"
        player addPrimaryWeaponItem "rhsusf_acc_su230_mrds";
        player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
        player linkItem "tf_anprc152";
        player linkItem "ItemGPS";
    };
    case 1:{//"Limited Loadouts"
        //Just In Case
        player unlinkItem "NVGoggles";
        player unlinkItem "NVGoggles_OPFOR";
        player unlinkItem "NVGoggles_INDEP";
        player unlinkItem "ACE_NVG_Wide";
        player unlinkItem "ItemGPS";
        player unlinkItem "ItemRadio";
    };
};

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";