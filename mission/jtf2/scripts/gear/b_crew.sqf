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
player forceAddUniform "CFB_RCAF_Coveralls_Sage";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACE_IR_Strobe_Item";
player addItemToUniform "ACE_epinephrine";
player addItemToUniform "ACE_MapTools";
player addVest "CFB_TW_Vest_Tactical";
for "_i" from 1 to 2 do {player addItemToVest "SmokeShell";};
player addItemToVest "HandGrenade";
player addItemToVest "SmokeShellGreen";
for "_i" from 1 to 6 do {player addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
player addHeadgear "H_HelmetCrew_I";

comment "Add weapons";
player addWeapon "rhs_weap_m4a1_carryhandle";
player addWeapon "Rangefinder";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemGPS";
player linkItem "tf_anprc152";
player linkItem "NVGoggles_INDEP";