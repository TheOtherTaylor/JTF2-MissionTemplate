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
        player forceAddUniform "CFB_TW_Rolled_Uniform";
        player addVest "CFB_TW_Vest_PlateCarrier2";
        player addBackpack "CFB_TW_Backpack_Assault";
        player addHeadgear "CFB_TW_Helmet";
        player addGoggles "rhs_googles_clear";
        player linkItem "NVGoggles_INDEP";
    };
    case 1:{//"CAF - CADPAT AR"
        player forceAddUniform "CFB_AR_Rolled_Uniform";
        player addVest "CFB_AR_Vest_PlateCarrier2";
        player addBackpack "CFB_AR_Backpack_Assault";
        player addHeadgear "CFB_AR_Helmet";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "rhs_uniform_FROG01_wd";
        player addVest "rhsusf_spc_corpsman";
        player addBackpack "rhsusf_assault_eagleaiii_coy";
        player addHeadgear "rhsusf_mich_helmet_marpatwd";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "rhs_uniform_FROG01_d";
        player addVest "rhsusf_spc_corpsman";
        player addBackpack "rhsusf_assault_eagleaiii_coy";
        player addHeadgear "rhsusf_mich_helmet_marpatd";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "rhsusf_iotv_ocp_Medic";
        player addBackpack "rhsusf_assault_eagleaiii_ocp";
        player addHeadgear "rhsusf_ach_helmet_ocp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "rhsusf_iotv_ucp_Medic";
        player addBackpack "rhsusf_assault_eagleaiii_ucp";
        player addHeadgear "rhsusf_ach_helmet_ucp";
        player addGoggles "rhs_googles_clear";
        player linkItem "ACE_NVG_Wide";
    };
};

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag"; //Preload Magazine
player addWeapon "rhs_weap_m16a4_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_SpecterDR";

comment "Add items";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "tf_anprc152";
[player,"CFB_Medic"] call bis_fnc_setUnitInsignia;

_medicalLevel = "jtf2_param_ace_medical_level" call BIS_fnc_getParamValue;
if (_medicalLevel == 1) then{
    comment "Advanced Medical Gear";
    for "_i" from 1 to 3 do {player addItemToUniform "ACE_personalAidKit";};
    player addItemToBackpack "ACE_EarPlugs";
    for "_i" from 1 to 8 do {player addItemToBackpack "ACE_morphine";};
    for "_i" from 1 to 8 do {player addItemToBackpack "ACE_epinephrine";};
    for "_i" from 1 to 12 do {player addItemToBackpack "ACE_atropine";};
    for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
    for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
    for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
    for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
    for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
    for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
    for "_i" from 1 to 2 do {player addItemToBackpack "ACE_personalAidKit";};
}else{
    comment "Basic Medical Gear";
    for "_i" from 1 to 50 do {player addItemToBackpack "ACE_fieldDressing";};
    for "_i" from 1 to 30 do {player addItemToBackpack "ACE_morphine";};
    for "_i" from 1 to 25 do {player addItemToBackpack "ACE_epinephrine";};
    for "_i" from 1 to 10 do {player addItemToBackpack "ACE_bloodIV_500";};
};