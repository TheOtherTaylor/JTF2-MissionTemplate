comment "Exported from Arsenal by Anton WO.";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "rhs_uniform_flora";
for "_i" from 1 to 3 do {_unit addItemToUniform "rhs_30Rnd_545x39_7n10_AK";};
_unit addItemToUniform "AGM_EarBuds";
_unit addVest "rhs_6b23_medic";
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellGreen";};
for "_i" from 1 to 10 do {_unit addItemToVest "rhs_30Rnd_545x39_7n10_AK";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellYellow";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellBlue";};
_unit addBackpack "B_Kitbag_sgg";
for "_i" from 1 to 15 do {_unit addItemToBackpack "AGM_Bloodbag";};
for "_i" from 1 to 25 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "AGM_Epipen";};
_unit addHeadgear "rhs_6b28_green";

comment "Add weapons";
_unit addWeapon "rhs_weap_ak74m_2mag_camo";
_unit addPrimaryWeaponItem "rhs_acc_pkas";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_fadak_1";
