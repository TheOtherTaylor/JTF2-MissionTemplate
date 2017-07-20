// F3 Set Group IDs
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// This script has been modified from it's original form.
//
// IF YOU GET A MESSAGE SIMILAR TO:
// [setGroupIDs] No radio freq found for group - '%1'
// SEE THE README.MD FILE IN THIS FILE'S FOLDER
// ====================================================================================

// OPEN THE ARRAY CONTAING ALL GROUPS
// Do not comment or delete this line!
_groups = [

// ====================================================================================
//Originally updated by phalanx for use in FNF missions, adapted by TheOtherTaylor for JTF2 Use
// - format: [group,groupID,JTF2_LongName,unitSize,radioSettings]
// group: defined in initialization field of units in editor. Also used as the group's identifier in scripts ex: Red_HQ = group this;
// groupID: ID given to group for use in things such as GPS, nametags, etc. (string)
// JTF2_LongName: Longer version of the groupID used in things such as the radios, etc. (string)
// unitSize: Number telling what level the group is. Company = 3, Platoon = 2, Squad = 1, Fireteam = 0 (0-3)
// radioSettings: Tells radio script which channels to set for group. [altChannel,mainChannel,[channelArray]] (array)
//     mainChannel: Which channel the radio will start on. (1-8)
//     altChannel: Which channel the radio will have as an alternate by default (1-8)
//     [channelArray]: An array of channels to set on the radio. (float)
//        channelArray is expressed as numbers which are added to playerBaseChannel (ch1) to determine which channel the radio will be on. 
//        Try to keep offsets single digit or the channel may not be set if playerBaseChannel is a high number.
//        Frequencies can only have one decimal place.
//     ex: [1,6,[1,2,3,4]] - mainChannel is ch1, altChannel is ch6, ch2 is 1 unit MHz higher than ch1, etc.

//
// BLUFOR
//
["Blue_6","COHQ","Argonaut 6",3, [1, 7, [1, 2, 3, 4, 5, 6, .1]] ],

["Blue_1_6", "1-6","Argonaut 1-6",2, [2, 1, [1, 1.1, 1.2, 1.3]] ],
["Blue_1_1a","1-1","Argonaut 1-1",1, [3, 2, [1, 1.1, 1.2, 1.3]] ],
["Blue_1_1", "1-1","Argonaut 1-1",1, [3, 3, [1, 1.1, 1.2, 1.3]] ],
["Blue_1_2a","1-2","Argonaut 1-2",1, [4, 2, [1, 1.1, 1.2, 1.3]] ],
["Blue_1_2", "1-2","Argonaut 1-1",1, [4, 4, [1, 1.1, 1.2, 1.3]] ],
["Blue_1_3a","1-3","Argonaut 1-3",1, [5, 2, [1, 1.1, 1.2, 1.3]] ],
["Blue_1_3", "1-3","Argonaut 1-3",1, [5, 5, [1, 1.1, 1.2, 1.3]] ],

["Blue_2_6", "2-6","Argonaut 1-6",2, [2, 1, [2, 2.1, 2.2, 2.3]] ],
["Blue_2_1a","2-1","Argonaut 1-1",1, [3, 2, [2, 2.1, 2.2, 2.3]] ],
["Blue_2_1", "2-1","Argonaut 1-1",1, [3, 3, [2, 2.1, 2.2, 2.3]] ],
["Blue_2_2a","2-2","Argonaut 1-2",1, [4, 2, [2, 2.1, 2.2, 2.3]] ],
["Blue_2_2", "2-2","Argonaut 1-1",1, [4, 4, [2, 2.1, 2.2, 2.3]] ],
["Blue_2_3a","2-3","Argonaut 1-3",1, [5, 2, [2, 2.1, 2.2, 2.3]] ],
["Blue_2_3", "2-3","Argonaut 1-3",1, [5, 5, [2, 2.1, 2.2, 2.3]] ],

["Blue_W","WEAP","Argonaut Weapons",2, [2, 1, [3, 3.1, 3.2]] ],
["Blue_E","EOD", "Argonaut EOD",    2, [3, 1, [3, 3.1, 3.2]] ],

["Blue_P","PATH","Pathfinder",3, [2, 1, [4, 3.1, 3.2]] ],

["Blue_M1","MOOSE 1","Moose 1",3, [2, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],
["Blue_M2","MOOSE 2","Moose 2",2, [3, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],
["Blue_M3","MOOSE 3","Moose 3",2, [4, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],

["Blue_R1","RAPTOR 1","Raptor 1",3, [2, 1, [6, 6.1, 6.2, 6.3, 6.4]] ],
["Blue_R2","RAPTOR 2","Raptor 2",2, [3, 1, [6, 6.1, 6.2, 6.3, 6.4]] ],

//
// REDFOR
//
["Red_6","COHQ","Cossack 6",3, [1, 7, [1, 2, 3, 4, 5, 6, .1]] ],

["Red_1_6", "1-6","Cossack 1-6",2, [2, 1, [1, 1.1, 1.2, 1.3]] ],
["Red_1_1a","1-1","Cossack 1-1",1, [3, 2, [1, 1.1, 1.2, 1.3]] ],
["Red_1_1", "1-1","Cossack 1-1",1, [3, 3, [1, 1.1, 1.2, 1.3]] ],
["Red_1_2a","1-2","Cossack 1-2",1, [4, 2, [1, 1.1, 1.2, 1.3]] ],
["Red_1_2", "1-2","Cossack 1-1",1, [4, 4, [1, 1.1, 1.2, 1.3]] ],
["Red_1_3a","1-3","Cossack 1-3",1, [5, 2, [1, 1.1, 1.2, 1.3]] ],
["Red_1_3", "1-3","Cossack 1-3",1, [5, 5, [1, 1.1, 1.2, 1.3]] ],

["Red_2_6", "2-6","Cossack 1-6",2, [2, 1, [2, 2.1, 2.2, 2.3]] ],
["Red_2_1a","2-1","Cossack 1-1",1, [3, 2, [2, 2.1, 2.2, 2.3]] ],
["Red_2_1", "2-1","Cossack 1-1",1, [3, 3, [2, 2.1, 2.2, 2.3]] ],
["Red_2_2a","2-2","Cossack 1-2",1, [4, 2, [2, 2.1, 2.2, 2.3]] ],
["Red_2_2", "2-2","Cossack 1-1",1, [4, 4, [2, 2.1, 2.2, 2.3]] ],
["Red_2_3a","2-3","Cossack 1-3",1, [5, 2, [2, 2.1, 2.2, 2.3]] ],
["Red_2_3", "2-3","Cossack 1-3",1, [5, 5, [2, 2.1, 2.2, 2.3]] ],

["Red_W","WEAP","Cossack Weapons",2, [2, 1, [3, 3.1, 3.2]] ],
["Red_E","EOD", "Cossack EOD",    2, [3, 1, [3, 3.1, 3.2]] ],

["Red_F","FANTOM","Fantom",3, [2, 1, [4, 3.1, 3.2]] ],

["Red_M1","MEDVED 1","Medved 1",3, [2, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],
["Red_M2","MEDVED 2","Moose 2",2, [3, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],
["Red_M3","MEDVED 3","Moose 3",2, [4, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],

["Red_R1","YASTREB 1","Yastreb 1",3, [2, 1, [6, 6.1, 6.2, 6.3, 6.4]] ],
["Red_R2","YASTREB 2","Yastreb 2",2, [3, 1, [6, 6.1, 6.2, 6.3, 6.4]] ],

//
// INDFOR
//
["Green_6","COHQ","Cerberus 6",3, [1, 7, [1, 2, 3, 4, 5, 6, .1]] ],

["Green_1_6", "1-6","Cerberus 1-6",2, [2, 1, [1, 1.1, 1.2, 1.3]] ],
["Green_1_1a","1-1","Cerberus 1-1",1, [3, 2, [1, 1.1, 1.2, 1.3]] ],
["Green_1_1", "1-1","Cerberus 1-1",1, [3, 3, [1, 1.1, 1.2, 1.3]] ],
["Green_1_2a","1-2","Cerberus 1-2",1, [4, 2, [1, 1.1, 1.2, 1.3]] ],
["Green_1_2", "1-2","Cerberus 1-1",1, [4, 4, [1, 1.1, 1.2, 1.3]] ],
["Green_1_3a","1-3","Cerberus 1-3",1, [5, 2, [1, 1.1, 1.2, 1.3]] ],
["Green_1_3", "1-3","Cerberus 1-3",1, [5, 5, [1, 1.1, 1.2, 1.3]] ],

["Green_2_6", "2-6","Cerberus 1-6",2, [2, 1, [2, 2.1, 2.2, 2.3]] ],
["Green_2_1a","2-1","Cerberus 1-1",1, [3, 2, [2, 2.1, 2.2, 2.3]] ],
["Green_2_1", "2-1","Cerberus 1-1",1, [3, 3, [2, 2.1, 2.2, 2.3]] ],
["Green_2_2a","2-2","Cerberus 1-2",1, [4, 2, [2, 2.1, 2.2, 2.3]] ],
["Green_2_2", "2-2","Cerberus 1-1",1, [4, 4, [2, 2.1, 2.2, 2.3]] ],
["Green_2_3a","2-3","Cerberus 1-3",1, [5, 2, [2, 2.1, 2.2, 2.3]] ],
["Green_2_3", "2-3","Cerberus 1-3",1, [5, 5, [2, 2.1, 2.2, 2.3]] ],

["Green_W","WEAP","Cerberus Weapons",2, [2, 1, [3, 3.1, 3.2]] ],
["Green_E","EOD", "Cerberus EOD",    2, [3, 1, [3, 3.1, 3.2]] ],

["Green_P","ARTEMIS","Artemis",3, [2, 1, [4, 3.1, 3.2]] ],

["Green_M1","TITAN 1","Titan 1",3, [2, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],
["Green_M2","TITAN 2","Titan 2",2, [3, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],
["Green_M3","TITAN 3","Titan 3",2, [4, 1, [5, 5.1, 5.2, 5.3, 5.4]] ],

["Green_R1","HERMES 1","Hermes 1",3, [2, 1, [6, 6.1, 6.2, 6.3, 6.4]] ],
["Green_R2","HERMES 2","Hermes 2",2, [3, 1, [6, 6.1, 6.2, 6.3, 6.4]] ]

// Always make sure there's no comma after the last entry!

// ====================================================================================

// END OF THE ARRAY CONTAING ALL GROUPS
// Do not comment or delete this line!
];

// ====================================================================================

// SET THE GROUP IDS

private ["_grp"];
{
    // Check first if the group exists
    _x params ["_identifier", "_shortName", "_longName", "_groupSize", "_radioArray"];
    _grp = missionNamespace getVariable[_identifier,grpNull];
    if (!isNull _grp) then {
        if !((groupID _grp) isEqualTo _shortName) then {
            _grp setGroupIdGlobal [_shortName,"GroupColor0"];
            _grp setVariable ["JTF2_groupIDSet",true,true];
        };
        _grp setVariable ["JTF2_groupIdentifier",_identifier];
        _grp setVariable ["JTF2_LongName",_longName];
        _grp setVariable ["JTF2_gps_groupSize",_groupSize];
        _grp setVariable ["JTF2_radioSettings",_radioArray];
    };
} forEach _groups;

JTF2_groupIDset = true;
