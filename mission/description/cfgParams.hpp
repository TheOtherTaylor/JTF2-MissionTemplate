class Params{
    class jtf2_param_add_objects_to_zeus{
        title = "Add objects to Zeus automatically?";
        values[] = { 0, 1 };
        texts[] = { "No", "Yes" };
        default = 1;
    };
    class jtf2_param_allow_grass_changes{
        title = "Allow players to change grass view settings";
        values[] = { 0, 1, 2 };
        texts[] = { "No", "Yes - But don't let them turn it off completely", "Yes - allow everything" };
        default = 0;
    };
    class jtf2_param_spawn_options_spacer{
        title = "--------------------- SPAWN OPTIONS ----------------------------";
        values[] = { 0, 1 };
        texts[] = { " ", " " };
        default = 0;
    };
    class jtf2_param_starting_loadouts{
        title = "Starting equipment";
        values[] = { 0, 1, 2 };
        texts[] = { "JTF2 Custom Loadouts", "Default ARMA Loadouts", "No Gear" };
        default = 0;
    };
    class jtf2_param_limited_loadouts{
        title = "Limited Equipment";
        values[] = { 0, 1 };
        texts[] = { "Normal Loadouts", "Limited Loadouts: No NVG, GPS, Radio, Optics" };
        default = 0;
    };

    class jtf2_param_create_spawn{
        title = "Create spawn points automatically?";
        values[] = { 0, 1 };
        texts[] = { "No", "Yes" };
        default = 0;
    };
    class jtf2_param_faction_options_spacer{
        title = "--------------------- FACTION OPTIONS ----------------------------";
        values[] = { 0, 1 };
        texts[] = { " ", " " };
        default = 0;
    };
    class jtf2_param_blufor_uniform_setting{
        title = "Blufor Starting Uniform";
        values[] = { 0, 1, 2, 3, 4, 5};
        texts[] = { "CAF - CADPAT TW",
                    "CAF - CADPAT AR", 
                    "USMC - MARPAT WD", 
                    "USMC - MARPAT D", 
                    "US Army - OCP",
                    "US Army - UCP"};
        default = 0;
    };
    class jtf2_param_opfor_uniform_setting{
        title = "Opfor Starting Uniform";
        values[] = { 0, 1};
        texts[] = { "EMR-Summer",
                    "EMR-Desert"};
        default = 0;
    };
    class jtf2_param_independent_friendly_setting{
        title = "Independent Allegiance";
        values[] = { 0, 1, 2, 3 };
        texts[] = { "Friendly to All", "Friendly to Opfor", "Friendly to Blufor", "Friendly to None" };
        default = 3;
    };
    class jtf2_param_ace_options_spacer{
        title = "--------------------- ACE OPTIONS ----------------------------";
        values[] = { 0, 1 };
        texts[] = { " ", " " };
        default = 0;
    };
    class jtf2_param_ace_show_squad_map_markers{
        title = "Show friendly squad markers on map?";
        values[] = { 0, 1 };
        texts[] = { "No", "Yes" };
        default = 0;
    };
    class jtf2_param_ace_use_spectator{
        title = "Allow spectator view on death";
        values[] = { 0, 1 };
        texts[] = { "No", "Yes" };
        default = 1;
    };
    class jtf2_param_ace_medical_level{
        title = "Medical Simulation Level";
        values[] = { 0, 1, 2 };
        texts[] = { "Disabled (Not Recommended)", "Basic", "Advanced" };
        default = 2;
    };
    class jtf2_param_prevent_death{
        title = "Prevent Death on Initial Damage";
        values[] = {0,1};
        texts[] = {"Off","On"};
        default = 1;
    };
    class jtf2_param_revive_setting{
        title = "Revive Setting";
        values[] = {0,1};
        texts[] = {"Disabled (Recommended)","Enabled Players Only (Basic Only!)"};
        default = 0;
    };
};
