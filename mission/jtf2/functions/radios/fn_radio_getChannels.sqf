//Figure out which side the player is on.
_side = side player;
switch (_side) do {
    case east: { JTF2_playerBaseChannel = JTF2_opforBaseChannel; };
    case west: { JTF2_playerBaseChannel = JTF2_bluforBaseChannel; };
    case independent: { JTF2_playerBaseChannel = JTF2_indforBaseChannel; };
    default { titleText ["The game thinks you aren't one of the three teams!","PLAIN"]; };
};
//Error message
if (isNil "JTF2_playerBaseChannel") exitWith {titleText ["Error! Default radio channels will not be set!","PLAIN DOWN",0.5];};

JTF2_ch1 = JTF2_playerBaseChannel; //All players will be able to switch to channel 1 to get on platoon net.

// JTF2_radioSettings: Tells radio script which channels to set for group. [altChannel,mainChannel,[channelArray]] (array)
//     mainChannel: Which channel the radio will start on. (1-8)
//     altChannel: Which channel the radio will have as an alternate by default (1-8)
//     [channelArray]: An array of channels to set on the radio. (float)
//        channelArray is expressed as numbers which are added to playerBaseChannel (ch1) to determine which channel the radio will be on. 
//        Try to keep offsets single digit or the channel may not be set if playerBaseChannel is a high number.
//        Frequencies can only have one decimal place.
//     ex: [1,6,[1,2,3,4]] - mainChannel is ch1, altChannel is ch6, ch2 is 1 unit MHz higher than ch1, etc.
_radioSettings = (group player) getVariable ["JTF2_radioSettings",[1,2,[0]]];
JTF2_curChan = _radioSettings select 0;
JTF2_altChan = _radioSettings select 1;
_channelArray = _radioSettings select 2;
if (count _channelArray >= 0) then {JTF2_ch2 = JTF2_playerBaseChannel + (_channelArray select 0)};
if (count _channelArray >= 1) then {JTF2_ch3 = JTF2_playerBaseChannel + (_channelArray select 1)};
if (count _channelArray >= 2) then {JTF2_ch4 = JTF2_playerBaseChannel + (_channelArray select 2)};
if (count _channelArray >= 3) then {JTF2_ch5 = JTF2_playerBaseChannel + (_channelArray select 3)};
if (count _channelArray >= 4) then {JTF2_ch6 = JTF2_playerBaseChannel + (_channelArray select 4)};
if (count _channelArray >= 5) then {JTF2_ch7 = JTF2_playerBaseChannel + (_channelArray select 5)};
if (count _channelArray >= 6) then {JTF2_ch8 = JTF2_playerBaseChannel + (_channelArray select 6)};
if (count _channelArray >= 7) then {JTF2_ch9 = JTF2_playerBaseChannel + (_channelArray select 7)};

//player isn't part of any template group
if (isNil "JTF2_curChan") then {
    JTF2_curChan = 1;
    JTF2_altChan = 8;
};

//Generate Mission Notes
JTF2_radioNoteString = "<font size='24'>Your Radio's Default Settings</font><br/><br/>Channel 1: " + str(JTF2_ch1) + " MHz<br/>";
if (!isNil "JTF2_ch2") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 2: " + str(JTF2_ch2) + " MHz<br/>";};
if (!isNil "JTF2_ch3") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 3: " + str(JTF2_ch3) + " MHz<br/>";};
if (!isNil "JTF2_ch4") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 4: " + str(JTF2_ch4) + " MHz<br/>";};
if (!isNil "JTF2_ch5") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 5: " + str(JTF2_ch5) + " MHz<br/>";};
if (!isNil "JTF2_ch6") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 6: " + str(JTF2_ch6) + " MHz<br/>";};
if (!isNil "JTF2_ch7") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 7: " + str(JTF2_ch7) + " MHz<br/>";};
if (!isNil "JTF2_ch8") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 8: " + str(JTF2_ch8) + " MHz<br/>";};
if (!isNil "JTF2_ch9") then {JTF2_radioNoteString = JTF2_radioNoteString + "Channel 9: " + str(JTF2_ch9) + " MHz<br/>";};

//Let player know what channels he starts on.
JTF2_radioNoteString = JTF2_radioNoteString + "<br/>Main Channel (left ear): <font color='#90ee90'>CH " + str(JTF2_curChan) + "</font><br/>Alt. Channel (right ear): <font color='#90ee90'>CH " + str(JTF2_altChan) + "</font>";
player createDiaryRecord ["JTF2_Diary", ["Radio Settings", JTF2_radioNoteString]];

//Next step
JTF2_radHandle2 = [JTF2_fnc_radio_waitRadios, 0, []] call CBA_fnc_addPerFrameHandler;
