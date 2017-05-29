//Get initial values from TFAR and see if they match with what the player had on him.
JTF2_hasLR = call TFAR_fnc_haveLRRadio;
JTF2_hasSW = call TFAR_fnc_haveSWRadio;

if (JTF2_hasLRitem) then {
    if (JTF2_hasLR) then {
        JTF2_LRsetup = true;
    } else {
        JTF2_LRsetup = false;
    };
} else {
    JTF2_LRsetup = true;
};

if (JTF2_hasSWitem) then {
    if (JTF2_hasSW) then {
        JTF2_SWsetup = true;
    } else {
        JTF2_SWsetup = false;
    };
} else {
    JTF2_SWsetup = true;
};

if (JTF2_SWsetup && {JTF2_LRsetup} && {(CBA_missionTime > 0)}) then {
    [JTF2_radHandle2] call CBA_fnc_removePerFrameHandler;
    call JTF2_fnc_radio_setRadios;
};
