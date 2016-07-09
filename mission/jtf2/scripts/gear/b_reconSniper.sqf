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
        player forceAddUniform "CFB_TW_Uniform";
        player addVest "CFB_TW_Vest_PlateCarrier2";
        player addBackpack "CFB_TW_Backpack_Assault";
        player addHeadgear "CFB_TW_Helmet_ECH";
        player addGoggles "rhs_googles_clear";
        player linkItem "NVGoggles_INDEP";
    };
    case 1:{//"CAF - CADPAT AR"
        player forceAddUniform "CFB_AR_Uniform";
        player addVest "CFB_AR_Vest_PlateCarrier2";
        player addBackpack "CFB_AR_Backpack_Assault";
        player addHeadgear "CFB_AR_Helmet_ECH";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "rhs_uniform_FROG01_wd";
        player addVest "rhsusf_spc_rifleman";
        player addBackpack "rhsusf_assault_eagleaiii_coy";
        player addHeadgear "rhsusf_mich_helmet_marpatwd";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "rhs_uniform_FROG01_d";
        player addVest "rhsusf_spc_rifleman";
        player addBackpack "rhsusf_assault_eagleaiii_coy";
        player addHeadgear "rhsusf_mich_helmet_marpatd";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "rhsusf_iotv_ocp_Rifleman";
        player addBackpack "rhsusf_assault_eagleaiii_ocp";
        player addHeadgear "rhsusf_ach_helmet_ocp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "rhsusf_iotv_ucp_Rifleman";
        player addBackpack "rhsusf_assault_eagleaiii_ucp";
        player addHeadgear "rhsusf_ach_helmet_ucp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
};

comment "Add weapons";
player addItemToVest "rhsusf_5Rnd_300winmag_xm2010"; //Preload Magazine
player addItemToVest "9Rnd_45ACP_Mag"; //Preload Magazine
player addWeapon "rhs_weap_XM2010";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "optic_LRPS";
player addWeapon "hgun_ACPC2_F";
player addHandgunItem "muzzle_snds_acp";
player addWeapon "ACE_Vector";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_RangeCard";
player addItemToUniform "ACE_Kestrel4500";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {player addItemToUniform "ACE_CableTie";};
player addItemToVest "9Rnd_45ACP_Mag";
for "_i" from 1 to 8 do {player addItemToVest "rhsusf_5Rnd_300winmag_xm2010";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {player addItemToVest "MiniGrenade";};
player addItemToBackpack "ACE_HandFlare_Red";
player addItemToBackpack "ACE_HandFlare_Green";
player addItemToBackpack "B_IR_Grenade";
player addItemToBackpack "ACE_Tripod";
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToBackpack "SmokeShellPurple";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToBackpack "Chemlight_green";};
for "_i" from 1 to 2 do {player addItemToBackpack "Chemlight_blue";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";

_medicalLevel = "jtf2_param_ace_medical_level" call BIS_fnc_getParamValue;
if (_medicalLevel == 1) then{
    comment "Advanced Medical Gear";
    player addItemToUniform "ACE_morphine";
    player addItemToUniform "ACE_epinephrine";
    for "_i" from 1 to 6 do {player addItemToUniform "ACE_fieldDressing";};
    for "_i" from 1 to 6 do {player addItemToUniform "ACE_elasticBandage";};
    for "_i" from 1 to 6 do {player addItemToUniform "ACE_quikclot";};
    for "_i" from 1 to 6 do {player addItemToUniform "ACE_packingBandage";};
    player addItemToUniform "ACE_salineIV_500";
    player addItemToUniform "ACE_tourniquet";
}else{
    comment "Basic Medical Gear";
    for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
    for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
    player addItemToUniform "ACE_epinephrine";
};