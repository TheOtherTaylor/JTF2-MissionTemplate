class JTF2
{
    tag = "JTF2";
    class functions {
        file = "jtf2\functions";
        class GetMarkerNameForSide;
        class PositionBase;
        class SetupSign;
        class SetupAce3 { postInit = 1; };
        class AddClassRestrictedArsenal;
        class handleKilled;
        class handleRespawn;
    };
    class loadouts{
        file = "jtf2\functions\loadout";
        class AssignGear;
        class SetGear;
    };
    class radios {
        file = "jtf2\functions\radios";
        class radio_genFreqs{};
        class radio_waitGear{};
        class radio_getChannels{};
        class radio_waitRadios{};
        class radio_setRadios{};
        class radio_cleanup{};
    };
    class init {
        file = "jtf2\functions\init";
        class init_server{};
        class init_client{};
    };
};
