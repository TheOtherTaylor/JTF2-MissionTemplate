if (isNil "Ares_Reinforcement_Mission_Unit_Pools") then
{
	Ares_Reinforcement_Mission_Unit_Pools = [];
};

Ares_Reinforcement_Mission_Unit_Pools pushBack
	[
		"CAF Forces (TW)", // Name of the faction
		west, // The side of the faction
		"CFB_Skins", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
		["B_MRAP_01_F", "CFB_LSSV_Olive", "B_Quadbike_01_F"], // Scouts and unarmed light vehicles
		["B_MRAP_01_gmg_F", "B_MRAP_01_hmg_F","CFB_LSSV_Olive_Armed"], // Armed light vehicles
		["B_Truck_01_transport_F", "B_Truck_01_covered_F"], // Dedicated troop trucks
		["B_APC_Tracked_01_rcws_F", "B_APC_Wheeled_01_cannon_F"], // Armed + Armored Troop Transports
		["CFB_Helo_Griffon_Unarmed", "CFB_Helo_Cyclone"], // Unarmed helicopters
		["CFB_Helo_Griffon"], // Armed helicopters
		["B_Boat_Transport_01_F", "B_G_Boat_Transport_01_F"], // Unarmed boats
		["I_Boat_Armed_01_minigun_F"], // Armed boats
		[
			// Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
			["CFB_TW_Soldier_TL", "CFB_TW_Soldier_AR", "CFB_TW_Soldier", "CFB_TW_Soldier_AmmoBearer", "CFB_TW_Soldier_Marksman"],
			["CFB_TW_Soldier_TL", "CFB_TW_Soldier_GL", "CFB_TW_Soldier_MMG", "CFB_TW_Soldier", "CFB_TW_Soldier"]
		]
	];
Ares_Reinforcement_Mission_Unit_Pools pushBack
	[
		"CFB Rebels", // Name of the faction
		east, // The side of the faction
		"CFB_Skins", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
		["CFB_Rebel_Technical", "O_G_Quadbike_01_F", "O_G_Offroad_01_F"], // Scouts and unarmed light vehicles
		["O_G_Offroad_01_armed_F", "CFB_Rebel_Technical_Armed"], // Armed light vehicles
		["O_Truck_02_transport_F", "O_Truck_02_covered_F"], // Dedicated troop trucks
		[], // Armed + Armored Troop Transports
		[], // Unarmed helicopters
		[], // Armed helicopters
		["O_Boat_Transport_01_F", "O_G_Boat_Transport_01_F"], // Unarmed boats
		[], // Armed boats
		[
			// Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
			["CFB_Rebel_SL", "CFB_Rebel_AR", "CFB_Rebel_Soldier", "CFB_Rebel_AR", "CFB_Rebel_Soldier_Lite"],
			["CFB_Rebel_TL", "CFB_Rebel_GL", "CFB_Rebel_Marksman_Lite", "CFB_Rebel_Soldier", "CFB_Rebel_Medic"]
		]
	];
Ares_Reinforcement_Mission_Unit_Pools pushBack
    [
        "RHS Russian Forces (MSV)", // Name of the faction
        east, // The side of the faction
        "RHS_Main", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
        ["rhs_tigr_msv", "RHS_UAZ_MSV_01", "rhs_uaz_open_MSV_01"], // Scouts and unarmed light vehicles
        ["O_G_Offroad_01_armed_F"], // Armed light vehicles
        ["rhs_gaz66_msv", "rhs_gaz66o_msv", "rhs_gaz66_r142_msv", "rhs_typhoon_vdv", "RHS_Ural_MSV_01", "RHS_Ural_Open_MSV_01", "RHS_Ural_VDV_01"], // Dedicated troop trucks
        ["rhs_btr70_msv", "rhs_btr60_msv", "rhs_bmp1_XX", "rhs_btr80_msv", "rhs_btr80a_msv"], // Armed + Armored Troop Transports
        ["rhs_ka60_grey", "rhs_ka60_c", "RHS_Mi8AMT_vdv", "RHS_Mi8AMT_vvs", "RHS_Mi8AMT_vvsc", "RHS_Mi8mt_vdv", "RHS_Mi8AMT_vvs", "RHS_Mi8AMT_vvsc"], // Unarmed helicopters
        ["RHS_Mi24P_vdv", "RHS_Mi8AMTSh_vdv", "RHS_Mi8AMTSh_vvs", "RHS_Mi8AMTSh_vvsc"], // Armed helicopters
        ["O_Boat_Transport_01_F", "O_G_Boat_Transport_01_F"], // Unarmed boats
        ["B_Boat_Armed_01_minigun_F"], // Armed boats
        [
            // Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
            ["rhs_msv_junior_sergeant", "rhs_msv_machinegunner", "rhs_msv_machinegunner_assistant", "rhs_msv_efreitor", "rhs_msv_rifleman"],
            ["rhs_msv_sergeant", "rhs_msv_grenadier", "rhs_msv_efreitor", "rhs_msv_rifleman", "rhs_msv_marksman"]
        ]
    ];
Ares_Reinforcement_Mission_Unit_Pools pushBack
    [
        "RHS US Forces", // Name of the faction
        west, // The side of the faction
        "RHSUSF_Main", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
        ["rhsusf_m1025_w", "rhsusf_m1025_d", "rhsusf_m1025_w_s", "rhsusf_m1025_w_s"], // Scouts and unarmed light vehicles
        ["rhsusf_m113_usarmy", "rhsusf_m113d_usarmy"], // Armed light vehicles
        ["B_Truck_01_transport_F", "B_Truck_01_covered_F"], // Dedicated troop trucks
        ["RHS_M2A2_wd", "RHS_M2A2", "RHS_M2A2_BUSKI_wd", "RHS_M2A2_BUSKI", "RHS_M2A3_wd", "RHS_M2A3", "RHS_M2A3_BUSKI_wd", "RHS_M2A3_BUSKI", "RHS_M2A3_BUSKIII_wd", "RHS_M2A3_BUSKIII", "RHS_M6_wd", "RHS_M6"], // Armed + Armored Troop Transports
        ["rhs_uh60m_mev", "rhs_uh60m_mev_d"], // Unarmed helicopters
        ["rhs_ch_47f", "rhs_ch_47f_light", "rhs_uh60m", "rhs_uh60m_d"], // Armed helicopters
        ["B_Boat_Transport_01_F", "B_G_Boat_Transport_01_F"], // Unarmed boats
        ["I_Boat_Armed_01_minigun_F"], // Armed boats
        [
            // Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
            ["rhsusf_army_ocp_squadleader", "rhsusf_army_ocp_machinegunner", "rhsusf_army_ocp_machinegunnera", "rhsusf_army_ocp_riflemanl", "rhsusf_army_ocp_riflemanl"],
            ["rhsusf_army_ocp_teamleader", "rhsusf_army_ocp_grenadier", "rhsusf_army_ocp_rifleman", "rhsusf_army_ocp_medic", "rhsusf_army_ocp_marksman"]
        ]
    ];  
Ares_Reinforcement_Mission_Unit_Pools pushBack
    [
        "ISIS(Ind.)", // Name of the faction
        independent, // The side of the faction
        "po_main", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
        ["LOP_ISTS_Offroad", "LOP_ISTS_M1025_D"], // Scouts and unarmed light vehicles
        ["LOP_ISTS_M1025_W_M2", "LOP_ISTS_Offroad_M2", "LOP_ISTS_M1025_W_Mk19", "LOP_ISTS_Landrover_M2"], // Armed light vehicles
        ["LOP_ISTS_BTR60","LOP_ISTS_BTR60", "LOP_ISTS_ZSU234"], // Dedicated troop trucks
        ["LOP_ISTS_BMP1", "LOP_ISTS_BMP2"], // Armed + Armored Troop Transports
        [], // Unarmed helicopters
        [], // Armed helicopters
        [], // Unarmed boats
        [], //Armed boats
        [
            // Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
            ["LOP_ISTS_Infantry_SL", "LOP_ISTS_Infantry_AR", "LOP_ISTS_Infantry_Marksman", "LOP_ISTS_Infantry_AT"],
            ["LOP_ISTS_Infantry_GL", "LOP_ISTS_Infantry_Engineer", "LOP_ISTS_Infantry_Corpsman", "LOP_ISTS_Infantry_Rifleman_2"]
        ]
    ];  
Ares_Reinforcement_Mission_Unit_Pools pushBack
    [
        "ISIS(OpFor)", // Name of the faction
        east, // The side of the faction
        "po_main", // The name of the root class for the addon that defines these units (must exist or the side will not show up). Use "" to always show.
        ["LOP_ISTS_OPF_Offroad", "LOP_ISTS_OPF_M1025_D"], // Scouts and unarmed light vehicles
        ["LOP_ISTS_OPF_M1025_W_M2", "LOP_ISTS_OPF_Offroad_M2", "LOP_ISTS_OPF_M1025_W_Mk19", "LOP_ISTS_OPF_Landrover_M2"], // Armed light vehicles
        ["LOP_ISTS_OPF_BTR60","LOP_ISTS_OPF_BTR60", "LOP_ISTS_OPF_ZSU234"], // Dedicated troop trucks
        ["LOP_ISTS_OPF_BMP1", "LOP_ISTS_OPF_BMP2"], // Armed + Armored Troop Transports
        [], // Unarmed helicopters
        [], // Armed helicopters
        [], // Unarmed boats
        [], //Armed boats
        [
            // Squad setups to load into vehicles. Note - these may get truncated to fit into empty spaces or small vehicles.
            ["LOP_ISTS_OPF_Infantry_SL", "LOP_ISTS_OPF_Infantry_AR", "LOP_ISTS_OPF_Infantry_Marksman", "LOP_ISTS_OPF_Infantry_AT"],
            ["LOP_ISTS_OPF_Infantry_GL", "LOP_ISTS_OPF_Infantry_Engineer", "LOP_ISTS_OPF_Infantry_Corpsman", "LOP_ISTS_OPF_Infantry_Rifleman_2"]
        ]
    ];  