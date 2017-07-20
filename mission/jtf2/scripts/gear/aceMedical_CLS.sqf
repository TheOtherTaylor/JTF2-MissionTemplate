//Ensure CLS has backpack
_medicalLevel = "jtf2_param_ace_medical_level" call BIS_fnc_getParamValue;
if (_medicalLevel == 2) then{
    comment "Advanced Medical Gear";
    for "_i" from 1 to 3 do {player addItemToUniform "ACE_personalAidKit";};
    player addItemToBackpack "ACE_EarPlugs";
    player addItemToBackpack "ACE_surgicalKit";
    player addItemToBackpack "ACE_personalAidKit";
    for "_i" from 1 to 8 do {player addItemToBackpack "ACE_morphine";};
    for "_i" from 1 to 8 do {player addItemToBackpack "ACE_epinephrine";};
    for "_i" from 1 to 12 do {player addItemToBackpack "ACE_atropine";};
    for "_i" from 1 to 15 do {player addItemToBackpack "ACE_fieldDressing";};
    for "_i" from 1 to 20 do {player addItemToBackpack "ACE_elasticBandage";};
    for "_i" from 1 to 15 do {player addItemToBackpack "ACE_quikclot";};
    for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
    for "_i" from 1 to 6 do {player addItemToBackpack "ACE_salineIV_500";};
    for "_i" from 1 to 5 do {player addItemToBackpack "ACE_tourniquet";};
}else{
    comment "Basic Medical Gear";
    for "_i" from 1 to 50 do {player addItemToBackpack "ACE_fieldDressing";};
    for "_i" from 1 to 30 do {player addItemToBackpack "ACE_morphine";};
    for "_i" from 1 to 25 do {player addItemToBackpack "ACE_epinephrine";};
    for "_i" from 1 to 10 do {player addItemToBackpack "ACE_bloodIV_500";};
};