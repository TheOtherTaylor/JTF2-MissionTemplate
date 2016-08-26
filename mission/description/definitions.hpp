class Header{
    gameType = Coop;
    minPlayers = 1;
    maxPlayers = 64;
};

saving = 0; // *1 = saving, 0 = disable
enableDebugConsole = 1; // Admins and hosts

joinUnassigned = 1;     // 0 = New player is auto-assigned to empty slot on side with least players, *1 = New player remains unassigned 
disabledAI = 1;         //*0 = JIP slots filled with AI (AI will also take over disconnected players) , 1 = JIP slots will remain empty
// ^ discriminate against AI with disabilities

respawn = 3;
respawndelay = 1;
respawnDialog = 0;
respawnOnStart = 1;
respawnTemplates[] = {"MenuPosition"};

//Running into some weird bugs with this where people are stuck with chat open and can't turn it off. - Taylor 07/31
//disableChannels[] = {{channelID<number>, disableChat<bool>, disableVoice<bool>},{channelID<number>, disableChat<bool>, disableVoice<bool>},...}; 
// 0 = Global, 1 = Side, 2 = Command, 3 = Group, 4 = Vehicle, 5 = Direct, 6 = System
disableChannels[]={{0,false,true},{1,false,true},{2,false,true},{3,false,true},{4,false,true},{5,false,true}};

corpseManagerMode = 0;      //Server cleanup of corpses, *0 = no units managed
wreckManagerMode = 0;       //Server cleanup of wrecks, *0 = no wrecks managed
enableItemsDropping = 0;    // *0 = disable dropping items while swimming, 1 = enable