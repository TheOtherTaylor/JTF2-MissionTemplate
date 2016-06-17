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
player forceAddUniform "CFB_TW_Rolled_Uniform";
player addVest "CFB_TW_Vest_PlateCarrier2";
player addBackpack "CFB_TW_Backpack_Assault";
player addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag"; //Preload Magazine
player addWeapon "rhs_weap_m16a4_carryhandle";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";

comment "Add items";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 10 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 4 do {player addItemToVest "SmokeShellBlue";};
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "tf_anprc152";
player linkItem "NVGoggles_INDEP";
[player,"CFB_Medic"] call bis_fnc_setUnitInsignia;

_medicalLevel = "jtf2_param_ace_medical_level" call BIS_fnc_getParamValue;
if (_medicalLevel == 1) then{
    comment "Advanced Medical Gear";
    for "_i" from 1 to 2 do {player addItemToUniform "ACE_personalAidKit";};
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