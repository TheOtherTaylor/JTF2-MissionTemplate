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
player addHeadgear "CFB_TW_Helmet_ECH";
player addGoggles "G_Tactical_Clear";

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
player linkItem "NVGoggles_INDEP";

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