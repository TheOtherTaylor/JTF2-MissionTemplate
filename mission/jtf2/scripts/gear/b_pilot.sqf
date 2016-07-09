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
        player forceAddUniform "CFB_RCAF_Coveralls_Sage";
        player addVest "CFB_TW_Vest_Tactical";
        player addHeadgear "rhsusf_hgu56p";
        player linkItem "NVGoggles_INDEP";


    };
    case 1:{//"CAF - CADPAT AR"
        player forceAddUniform "CFB_RCAF_Coveralls_Sage";
        player addVest "CFB_AR_Vest_Tactical";
        player addHeadgear "rhsusf_hgu56p";
        player linkItem "ACE_NVG_Wide";


    };
    case 2:{//"USMC - MARPAT WD"
        player forceAddUniform "U_B_HeliPilotCoveralls";
        player addVest "V_TacVest_oli";
        player addHeadgear "rhsusf_hgu56p";
        player linkItem "ACE_NVG_Wide";


    };
    case 3:{//"USMC - MARPAT D"
        player forceAddUniform "U_B_HeliPilotCoveralls";
        player addVest "V_TacVest_khk";
        player addHeadgear "rhsusf_hgu56p";
        player linkItem "ACE_NVG_Wide";


    };
    case 4:{//"US Army - OCP"
        player forceAddUniform "rhs_uniform_cu_ocp";
        player addVest "V_TacVest_khk";
        player addHeadgear "rhsusf_hgu56p";
        player linkItem "ACE_NVG_Wide";


    };
    case 5:{//"US Army - UCP"
        player forceAddUniform "rhs_uniform_cu_ucp";
        player addVest "V_TacVest_khk";
        player addHeadgear "rhsusf_hgu56p";
        player linkItem "ACE_NVG_Wide";


    };
};

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag"; //Preload Magazine
player addWeapon "rhs_weap_m4a1_carryhandle";

comment "Add items";
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {player addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {player addItemToVest "Chemlight_green";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ACE_Altimeter";
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