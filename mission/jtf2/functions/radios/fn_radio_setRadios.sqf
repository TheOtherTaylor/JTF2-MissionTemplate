//Change channel numbers from user readable to script readable
JTF2_curChan = JTF2_curChan - 1;
JTF2_altChan = JTF2_altChan - 1;

//Only setup long range channels if player has one
if (JTF2_hasLR) then {
    JTF2_curSettings = (call TFAR_fnc_activeLrRadio) call TFAR_fnc_getLrSettings;
    //Set default channel
    JTF2_curSettings set [0,JTF2_curChan];
    //Set default volume
    JTF2_curSettings set [1,6];
    //Setup frequencies for channels 1-9
    JTF2_chanSettings = JTF2_curSettings select 2;
    if (!isNil "JTF2_ch1") then {JTF2_chanSettings set [0,str(JTF2_ch1)];};
    if (!isNil "JTF2_ch2") then {JTF2_chanSettings set [1,str(JTF2_ch2)];};
    if (!isNil "JTF2_ch3") then {JTF2_chanSettings set [2,str(JTF2_ch3)];};
    if (!isNil "JTF2_ch4") then {JTF2_chanSettings set [3,str(JTF2_ch4)];};
    if (!isNil "JTF2_ch5") then {JTF2_chanSettings set [4,str(JTF2_ch5)];};
    if (!isNil "JTF2_ch6") then {JTF2_chanSettings set [5,str(JTF2_ch6)];};
    if (!isNil "JTF2_ch7") then {JTF2_chanSettings set [6,str(JTF2_ch7)];};
    if (!isNil "JTF2_ch8") then {JTF2_chanSettings set [7,str(JTF2_ch8)];};
    if (!isNil "JTF2_ch9") then {JTF2_chanSettings set [8,str(JTF2_ch9)];};
    JTF2_curSettings set [2,JTF2_chanSettings];
    //Set stero mode for default channel
    JTF2_curSettings set [3,1];
    //Set alternate channel
    JTF2_curSettings set [5,JTF2_altChan];
    //Set stero mode for alternate channel
    JTF2_curSettings set [6,2];
    [(call TFAR_fnc_activeLrRadio) select 0, (call TFAR_fnc_activeLrRadio) select 1, JTF2_curSettings] call TFAR_fnc_setLrSettings;
};

//Only setup short wave channels if player has one
if (JTF2_hasSW) then {
    JTF2_curSettings = (call TFAR_fnc_activeSwRadio) call TFAR_fnc_getSwSettings;
    //Set default channel
    JTF2_curSettings set [0,JTF2_curChan];
    //Set default volume
    JTF2_curSettings set [1,6];
    //Setup frequencies for channels 1-9
    JTF2_chanSettings = JTF2_curSettings select 2;
    if (!isNil "JTF2_ch1") then {JTF2_chanSettings set [0,str(JTF2_ch1)];};
    if (!isNil "JTF2_ch2") then {JTF2_chanSettings set [1,str(JTF2_ch2)];};
    if (!isNil "JTF2_ch3") then {JTF2_chanSettings set [2,str(JTF2_ch3)];};
    if (!isNil "JTF2_ch4") then {JTF2_chanSettings set [3,str(JTF2_ch4)];};
    if (!isNil "JTF2_ch5") then {JTF2_chanSettings set [4,str(JTF2_ch5)];};
    if (!isNil "JTF2_ch6") then {JTF2_chanSettings set [5,str(JTF2_ch6)];};
    if (!isNil "JTF2_ch7") then {JTF2_chanSettings set [6,str(JTF2_ch7)];};
    if (!isNil "JTF2_ch8") then {JTF2_chanSettings set [7,str(JTF2_ch8)];};
    JTF2_curSettings set [2,JTF2_chanSettings];
    //Set stero mode for default channel
    JTF2_curSettings set [3,1];
    //Set alternate channel
    JTF2_curSettings set [5,JTF2_altChan];
    //Set stero mode for alternate channel
    JTF2_curSettings set [6,2];
    
    [(call TFAR_fnc_activeSwRadio), JTF2_curSettings] call TFAR_fnc_setSwSettings;
};


//Everything should be setup. Let the player know.
systemChat "Radios preset.";
call JTF2_fnc_radio_cleanup;