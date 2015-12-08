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
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_epinephrine";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
player addVest "CFB_TW_Vest_PlateCarrier2";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToVest "HandGrenade";};
player addBackpack "CFB_TW_Backpack_Assault";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_200rnd_"556x45_M_SAW";};
player addHeadgear "CFB_TW_Helmet";

comment "Add weapons";
player addWeapon "rhs_weap_m249_pip_L";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";


comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "tf_anprc152_1";
player linkItem "NVGoggles_INDEP";
