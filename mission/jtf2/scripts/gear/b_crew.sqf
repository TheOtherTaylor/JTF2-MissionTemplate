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
            player addHeadgear "rhsusf_cvc_green_helmet";
            player addGoggles "rhs_googles_clear";
            player linkItem "NVGoggles_INDEP";

        };
    };
    case 1:{//"CAF - CADPAT AR"
        if (isClass (configFile >> "CfgPatches" >> "CFB_Skins")) then{
            player forceAddUniform "CFB_AR_Uniform";
            player addVest "CFB_AR_Vest_PlateCarrier2";
            player addHeadgear "rhsusf_cvc_helmet";
            player addGoggles "rhs_googles_clear";
            player linkItem "ACE_NVG_Wide";

        };
    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "rhs_uniform_FROG01_wd";
        player addVest "rhsusf_spc_crewman";
        player addHeadgear "rhsusf_cvc_green_helmet";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";

    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "rhs_uniform_FROG01_d";
        player addVest "rhsusf_spc_crewman";
        player addHeadgear "rhsusf_cvc_helmet";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";

    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "rhsusf_iotv_ocp_Repair";
        player addHeadgear "rhsusf_cvc_green_helmet";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";

    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "rhsusf_iotv_ucp_Repair";
        player addHeadgear "rhsusf_cvc_helmet";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";

    };
};

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag"; //Preload Magazine
player addWeapon "rhs_weap_m4a1_carryhandle";
player addWeapon "Rangefinder";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "tf_anprc152";

[] execVM "jtf2\scripts\gear\aceMedical_Rifleman.sqf";