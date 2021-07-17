--- We can just put a sting if there's only one upgrade option, the rank req then is 6.
--- Otherwise it's a list of {unit_key, rank_req}.
local unit_upgrades = {
	wh_main_emp_inf_spearmen_0 = {
		{"wh_main_emp_inf_swordsmen", 2, no_icon = true},
		{"wh_main_emp_inf_spearmen_1", 3},
		{"wh_main_emp_inf_halberdiers", 5},
	},
	wh_main_emp_inf_spearmen_1 = {
		{"wh_main_emp_inf_swordsmen", 0, no_icon = true},
		{"wh_main_emp_inf_halberdiers", 4},
	},
	wh_main_emp_inf_swordsmen = {
		{"wh_main_emp_inf_spearmen_1", 2, no_icon = true},
		{"wh_main_emp_inf_greatswords", 6},
	},
	wh_main_emp_inf_halberdiers = {
		{"wh_main_emp_inf_greatswords", 4},
	},
	wh_main_emp_inf_greatswords = {
		{"wh_main_emp_cav_empire_knights", 7, no_icon = true},
	},
	wh2_dlc13_emp_inf_archers_0 = {
		{"wh2_dlc13_emp_inf_huntsmen_0", 7},
	},
	wh_dlc04_emp_inf_free_company_militia_0 = {
		{"wh_main_emp_inf_swordsmen", 3},
		{"wh_main_emp_inf_spearmen_1", 4},
		{"wh_dlc04_emp_inf_flagellants_0", 7},
		{"wh_main_emp_inf_handgunners", 7},
	},
	wh_main_emp_cav_empire_knights = {
		{"wh_main_emp_cav_reiksguard", 5},
		{"wh2_dlc13_emp_cav_empire_knights_ror_0", 7},
		{"wh2_dlc13_emp_cav_empire_knights_ror_1", 7},
		{"wh_dlc04_emp_cav_knights_blazing_sun_0", 6},
		{"wh_main_emp_cav_demigryph_knights_0", 8},
		{"wh_main_emp_cav_demigryph_knights_1", 8},
	},
	wh_main_emp_cav_reiksguard = {
		{"wh_main_emp_cav_demigryph_knights_0", 6},
		{"wh_main_emp_cav_demigryph_knights_1", 6},
	},
	wh_dlc04_emp_cav_knights_blazing_sun_0 = {
		{"wh_main_emp_cav_demigryph_knights_0", 6},
		{"wh_main_emp_cav_demigryph_knights_1", 6},
	},
	wh_main_emp_cav_demigryph_knights_0 = {
		{"wh_main_emp_cav_demigryph_knights_1", 0, no_icon = true},
	},
	wh_main_emp_cav_demigryph_knights_1 = {
		{"wh_main_emp_cav_demigryph_knights_0", 0, no_icon = true},
	},
	wh_main_emp_cav_pistoliers_1 = {
		{"wh_main_emp_cav_outriders_0", 6},
		{"wh_main_emp_cav_outriders_1", 8},
	},
	wh_main_emp_cav_outriders_0 = {
		{"wh_main_emp_cav_outriders_1", 5},
	},
	wh2_dlc13_emp_veh_war_wagon_0 = {
		{"wh2_dlc13_emp_veh_war_wagon_1", 5},
	},
	wh2_dlc13_emp_veh_war_wagon_1 = {
		{"wh2_dlc13_emp_veh_war_wagon_0", 0, no_icon = true},
	},

	wh_main_dwf_inf_miners_0 = {
		{"wh_main_dwf_inf_miners_1", 4},
		{"wh_main_dwf_inf_dwarf_warrior_0", 3},
		{"wh_main_dwf_inf_dwarf_warrior_1", 5},
		{"wh_main_dwf_inf_quarrellers_0", 5},
		{"wh_main_dwf_inf_quarrellers_1", 6},
	},
	wh_main_dwf_inf_miners_1 = {
		{"wh_main_dwf_inf_dwarf_warrior_0", 2},
		{"wh_main_dwf_inf_dwarf_warrior_1", 3},
		{"wh_main_dwf_inf_quarrellers_0", 3},
		{"wh_main_dwf_inf_quarrellers_1", 4},
	},
	wh_main_dwf_inf_dwarf_warrior_0 = {
		{"wh_main_dwf_inf_dwarf_warrior_1", 3, no_icon = true},
		{"wh_main_dwf_inf_longbeards", 6}
	},
	wh_main_dwf_inf_dwarf_warrior_1 = {
		{"wh_main_dwf_inf_dwarf_warrior_0", 0, no_icon = true},
		{ "wh_main_dwf_inf_longbeards_1", 6},
	},
	wh_main_dwf_inf_longbeards = {
		{"wh_main_dwf_inf_longbeards_1", 3, no_icon = true},
		{"wh_main_dwf_inf_ironbreakers", 6},
		{"wh_main_dwf_inf_hammerers", 7},
	},
	wh_main_dwf_inf_longbeards_1 = {
		{"wh_main_dwf_inf_longbeards", 0, no_icon = true},
		{"wh_main_dwf_inf_hammerers", 6},
		{"wh_main_dwf_inf_ironbreakers", 7},
	},
	wh_main_dwf_inf_slayers = {
		{"wh2_dlc10_dwf_inf_giant_slayers", 6},
	},
	wh_main_dwf_inf_ironbreakers = {
		{"wh_main_dwf_inf_hammerers", 2, no_icon = true},
		{"wh_main_dwf_inf_irondrakes_0", 7},
		{"wh_main_dwf_inf_irondrakes_2", 8},
	},
	wh_main_dwf_inf_quarrellers_0 = {
		{"wh_main_dwf_inf_quarrellers_1", 3, no_icon = true},
	},
	wh_main_dwf_inf_quarrellers_1 = {
		{"wh_main_dwf_inf_quarrellers_0", 0, no_icon = true},
	},
	wh_dlc06_dwf_inf_rangers_0 = {
		{"wh_dlc06_dwf_inf_rangers_1", 4},
		{"wh_dlc06_dwf_inf_bugmans_rangers_0", 7},
	},
	wh_dlc06_dwf_inf_rangers_1 = {
		{"wh_dlc06_dwf_inf_rangers_0", 0, no_icon = true},
		{"wh_dlc06_dwf_inf_bugmans_rangers_0", 6},
	},
	wh_main_dwf_inf_irondrakes_0 = {
		{"wh_main_dwf_inf_irondrakes_2", 6, no_icon = true},
		{"wh_main_dwf_inf_ironbreakers", 8, no_icon = true},
	},
	wh_main_dwf_inf_irondrakes_2 = {
		{"wh_main_dwf_inf_irondrakes_0", 0, no_icon = true},
		{"wh_main_dwf_inf_ironbreakers", 6, no_icon = true},
	},
	wh_main_dwf_veh_gyrocopter_0 = {
		{"wh_main_dwf_veh_gyrocopter_1", 4, no_icon = true},
		{"wh_main_dwf_veh_gyrobomber", 7},
	},
	wh_main_dwf_veh_gyrocopter_1 = {
		{"wh_main_dwf_veh_gyrocopter_0", 0, no_icon = true},
		{"wh_main_dwf_veh_gyrobomber", 6},
	},



	wh_main_grn_inf_goblin_spearmen = {
		{"wh_dlc06_grn_inf_nasty_skulkers_0", 3},
	},
	wh_main_grn_inf_night_goblins = {
		{"wh_main_grn_inf_night_goblin_fanatics", 6},
	},
	wh_main_grn_inf_orc_boyz = "wh_main_grn_inf_orc_big_uns",

	wh_main_grn_inf_savage_orcs = "wh_main_grn_inf_savage_orc_big_uns",

	wh_main_grn_inf_night_goblin_archers = {
		{"wh_main_grn_inf_night_goblin_fanatics_1", 7},
	},
	wh_main_grn_cav_orc_boar_boyz = "wh_main_grn_cav_orc_boar_boy_big_uns",

	wh_main_grn_cav_savage_orc_boar_boyz = "wh_main_grn_cav_savage_orc_boar_boy_big_uns",

	wh_dlc06_grn_inf_squig_herd_0 = "wh_dlc06_grn_cav_squig_hoppers_0",

	wh_main_grn_art_goblin_rock_lobber = {
		{"wh_main_grn_art_doom_diver_catapult", 8},
	},



	wh_main_vmp_inf_zombie = {
		{"wh_main_vmp_inf_skeleton_warriors_0", 2},
		{"wh_main_vmp_inf_skeleton_warriors_1", 3},
	},
	wh_main_vmp_inf_skeleton_warriors_0 = {
		{"wh_main_vmp_inf_skeleton_warriors_1", 2, no_icon = true}, -- skeleton swordsmen to spearmen
	},
	wh_main_vmp_inf_skeleton_warriors_1 = {
		{"wh_main_vmp_inf_skeleton_warriors_0", 0, no_icon = true}, -- skeleton spearmen to swordsmen
	},
	wh_main_vmp_inf_crypt_ghouls = {
		{"wh_main_vmp_mon_crypt_horrors", 7},
	},
	wh_main_vmp_inf_grave_guard_0 = {
		{"wh_main_vmp_inf_grave_guard_1", 3, no_icon = true},
	},
	wh_main_vmp_inf_grave_guard_1 = {
		{"wh_main_vmp_inf_grave_guard_0", 0, no_icon = true},
	},
	wh_main_vmp_cav_black_knights_0 = {
		{"wh_main_vmp_cav_black_knights_3", 5},
	},
	wh_dlc04_vmp_veh_corpse_cart_0 = {
		{"wh_dlc04_vmp_veh_corpse_cart_1", 2},
	},
	wh_dlc04_vmp_veh_corpse_cart_1 = {
		{"wh_dlc04_vmp_veh_corpse_cart_2", 2},
	},
	wh_main_vmp_veh_black_coach = {
		{"wh_main_vmp_cha_vampire_0", 8, no_icon = true, agent_type="dignitary", agent_subtype="vmp_vampire"},
	},

	wh_main_chs_inf_chaos_marauders_0 = {
		{"wh_main_chs_inf_chaos_marauders_1", 2, no_icon = true},
		{"wh_main_chs_inf_chaos_warriors_0", 6},
		{"wh_main_chs_mon_chaos_spawn", 8},
	},
	wh_main_chs_inf_chaos_marauders_1 = {
		{"wh_main_chs_inf_chaos_marauders_0", 0, no_icon = true},
		{"wh_main_chs_inf_chaos_warriors_1", 6},
		{"wh_dlc01_chs_inf_chaos_warriors_2", 6},
		{"wh_main_chs_mon_chaos_spawn", 7},
	},
	wh_main_chs_inf_chaos_warriors_0 = {
		{"wh_main_chs_inf_chaos_warriors_1", 2, no_icon = true},
		{"wh_dlc01_chs_inf_chaos_warriors_2", 2, no_icon = true},
		{"wh_dlc01_chs_inf_forsaken_0", 4},
		{"wh_dlc06_chs_inf_aspiring_champions_0", 5},
		{"wh_main_chs_mon_chaos_spawn", 6},
		{"wh_main_chs_inf_chosen_0", 7},
	},
	wh_main_chs_inf_chaos_warriors_1 = {
		{"wh_main_chs_inf_chaos_warriors_0", 0, no_icon = true},
		{"wh_dlc01_chs_inf_chaos_warriors_2", 0, no_icon = true},
		{"wh_dlc01_chs_inf_forsaken_0", 3},
		{"wh_dlc06_chs_inf_aspiring_champions_0", 4},
		{"wh_main_chs_mon_chaos_spawn", 5},
		{"wh_main_chs_inf_chosen_1", 7},
	},
	wh_dlc01_chs_inf_chaos_warriors_2 = {
		{"wh_main_chs_inf_chaos_warriors_0", 0, no_icon = true},
		{"wh_main_chs_inf_chaos_warriors_1", 0, no_icon = true},
		{"wh_dlc01_chs_inf_forsaken_0", 3},
		{"wh_dlc06_chs_inf_aspiring_champions_0", 4},
		{"wh_main_chs_mon_chaos_spawn", 5},
		{"wh_dlc01_chs_inf_chosen_2", 7},
	},
	wh_dlc01_chs_inf_forsaken_0 = {
		{"wh_main_chs_mon_chaos_spawn", 5},
		{"wh_main_chs_inf_chosen_0", 7},
	},
	wh_dlc06_chs_inf_aspiring_champions_0 = {
		{"wh_dlc01_chs_inf_forsaken_0", 0, no_icon = true},
		{"wh_main_chs_cha_exalted_hero_0", 8, no_icon = true, agent_type="champion", agent_subtype="chs_exalted_hero"},
	},
	wh_main_chs_inf_chosen_0 = {
		{"wh_main_chs_inf_chosen_1", 0, no_icon = true},
		{"wh_dlc01_chs_inf_chosen_2", 0, no_icon = true},
		{"wh_dlc06_chs_inf_aspiring_champions_0", 0, no_icon = true},
		{"wh_main_chs_cav_chaos_knights_0", 7},
	},
	wh_main_chs_inf_chosen_1 = {
		{"wh_main_chs_inf_chosen_0", 0, no_icon = true},
		{"wh_dlc01_chs_inf_chosen_2", 0, no_icon = true},
		{"wh_dlc06_chs_inf_aspiring_champions_0", 0, no_icon = true},
		{"wh_main_chs_cav_chaos_knights_1", 8},
	},
	wh_dlc01_chs_inf_chosen_2 = {
		{"wh_main_chs_inf_chosen_0", 0, no_icon = true},
		{"wh_main_chs_inf_chosen_1", 0, no_icon = true},
		{"wh_dlc06_chs_inf_aspiring_champions_0", 0, no_icon = true},
		{"wh_main_chs_cav_chaos_knights_1", 8},
	},
	wh_main_chs_cav_chaos_knights_0 = {
		{"wh_dlc01_chs_inf_forsaken_0", 0, no_icon = true},
		{"wh_main_chs_cav_chaos_knights_1", 6},
	},
	wh_main_chs_cav_chaos_knights_1 = {
		{"wh_dlc01_chs_inf_forsaken_0", 0, no_icon = true},
	},
	wh_main_chs_cav_chaos_chariot = "wh_dlc01_chs_cav_gorebeast_chariot",

	wh_main_chs_cav_marauder_horsemen_0 = {
		{"wh_main_chs_cav_marauder_horsemen_1", 4},
		{"wh_dlc06_chs_cav_marauder_horsemasters_0", 7},
	},
	wh_main_chs_cav_marauder_horsemen_1 = {
		{"wh_dlc06_chs_cav_marauder_horsemasters_0", 5},
	},
	wh_main_chs_mon_chaos_warhounds_0 = {
		{"wh_main_chs_mon_chaos_warhounds_1", 3},
	},
	wh_main_chs_mon_trolls = {
		{"wh_dlc01_chs_mon_trolls_1", 3},
	},


	wh_dlc03_bst_inf_ungor_spearmen_0 = {
		{"wh_dlc03_bst_inf_ungor_spearmen_1", 3},
		{"wh_dlc03_bst_inf_ungor_herd_1", 4},
	},
	wh_dlc03_bst_inf_ungor_spearmen_1 = {
		{"wh_dlc03_bst_inf_ungor_herd_1", 0, no_icon = true},
	},
	wh_dlc03_bst_inf_ungor_herd_1 = {
		{"wh_dlc03_bst_inf_ungor_spearmen_1", 0, no_icon = true},
	},
	wh_dlc03_bst_inf_gor_herd_0 = {
		{"wh_dlc03_bst_inf_gor_herd_1", 0, no_icon = true},
	},
	wh_dlc03_bst_inf_gor_herd_1 = {
		{"wh_dlc03_bst_inf_gor_herd_0", 0, no_icon = true},
	},
	wh_dlc03_bst_inf_centigors_0 = {
		{"wh_dlc03_bst_inf_centigors_1", 2, no_icon = true},
		{"wh_dlc03_bst_inf_centigors_2", 4, no_icon = true},
	},
	wh_dlc03_bst_inf_centigors_1 = {
		{"wh_dlc03_bst_inf_centigors_0", 0, no_icon = true},
		{"wh_dlc03_bst_inf_centigors_2", 2, no_icon = true},
	},
	wh_dlc03_bst_inf_centigors_2 = {
		{"wh_dlc03_bst_inf_centigors_0", 0, no_icon = true},
		{"wh_dlc03_bst_inf_centigors_1", 0, no_icon = true},
	},
	wh_dlc03_bst_inf_chaos_warhounds_0 = {
		{"wh_dlc03_bst_inf_chaos_warhounds_1", 3},
	},
	wh2_dlc17_bst_cav_tuskgor_chariot_0 = {
		{"wh_dlc03_bst_cav_razorgor_chariot_0", 5},
	},
	wh_dlc03_bst_inf_minotaurs_0 = {
		{"wh_dlc03_bst_inf_minotaurs_1", 2, no_icon = true},
		{"wh_dlc03_bst_inf_minotaurs_2", 4, no_icon = true},
		{"wh2_dlc17_bst_mon_ghorgon_0", 8, no_icon = true},
	},
	wh_dlc03_bst_inf_minotaurs_1 = {
		{"wh_dlc03_bst_inf_minotaurs_0", 0, no_icon = true},
		{"wh_dlc03_bst_inf_minotaurs_2", 2, no_icon = true},
		{"wh2_dlc17_bst_mon_ghorgon_0", 7, no_icon = true},
	},
	wh_dlc03_bst_inf_minotaurs_2 = {
		{"wh_dlc03_bst_inf_minotaurs_0", 0, no_icon = true},
		{"wh_dlc03_bst_inf_minotaurs_1", 0, no_icon = true},
		{"wh2_dlc17_bst_mon_ghorgon_0", 7, no_icon = true},
	},



	wh_dlc05_wef_inf_eternal_guard_0 = {
		{"wh_dlc05_wef_inf_eternal_guard_1", 4},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_eternal_guard_1 = {
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_wildwood_rangers_0 = {
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_wardancers_0 = {
		{"wh_dlc05_wef_inf_wardancers_1", 0, no_icon = true},
		{"wh2_dlc16_wef_inf_bladesingers_0", 6},
	},
	wh_dlc05_wef_inf_wardancers_1 = {
		{"wh_dlc05_wef_inf_wardancers_0", 0, no_icon = true},
		{"wh2_dlc16_wef_inf_bladesingers_0", 6},
	},
	wh_dlc05_wef_inf_glade_guard_0 = {
		{"wh_dlc05_wef_inf_glade_guard_1", 5},
		{"wh_dlc05_wef_inf_glade_guard_2", 3},
		{"wh_dlc05_wef_inf_eternal_guard_1", 6},
		{"wh_dlc05_wef_inf_deepwood_scouts_0", 7},
		{"wh_dlc05_wef_inf_wildwood_rangers_0", 9},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_glade_guard_2 = {
		{"wh_dlc05_wef_inf_glade_guard_1", 4, no_icon = true},
		{"wh_dlc05_wef_inf_eternal_guard_1", 5, no_icon = true},
		{"wh_dlc05_wef_inf_deepwood_scouts_0", 6},
		{"wh_dlc05_wef_inf_wildwood_rangers_0", 8},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_glade_guard_1 = {
		{"wh_dlc05_wef_inf_glade_guard_2", 0, no_icon = true},
		{"wh_dlc05_wef_inf_eternal_guard_1", 5, no_icon = true},
		{"wh_dlc05_wef_inf_deepwood_scouts_1", 7},
		{"wh_dlc05_wef_inf_wildwood_rangers_0", 8},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_deepwood_scouts_0 = {
		{"wh_dlc05_wef_inf_deepwood_scouts_1", 4},
		{"wh_dlc05_wef_inf_waywatchers_0", 7},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_inf_deepwood_scouts_1 = {
		{"wh_dlc05_wef_inf_waywatchers_0", 6},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_cav_wild_riders_0 = {
		{"wh_dlc05_wef_cav_wild_riders_1", 4},
		{"wh2_dlc16_wef_cav_great_stag_knights_0", 8},
	},
	wh_dlc05_wef_cav_wild_riders_1 = {
		{"wh2_dlc16_wef_cav_great_stag_knights_0", 6},
	},
	wh_dlc05_wef_inf_dryads_0 = {
		{"wh_dlc05_wef_cha_branchwraith_0", 8, no_icon = true, agent_type="champion", agent_subtype="wh_dlc05_wef_branchwraith"},
	},
	wh_dlc05_wef_inf_waywatchers_0 = {
		{"wh_dlc05_wef_cha_waystalker_0", 9, no_icon = true, agent_type="spy", agent_subtype="dlc05_wef_waystalker"},
		{"wh_dlc05_wef_mon_treekin_0", 8, no_icon = true},
	},
	wh_dlc05_wef_cav_glade_riders_0 = {
		{"wh2_dlc16_wef_cav_glade_riders_2", 0, no_icon = true},
		{"wh_dlc05_wef_cav_glade_riders_1", 4},
		{"wh_dlc05_wef_cav_wild_riders_0", 6},
		{"wh_dlc05_wef_cav_wild_riders_1", 8}
	},
	wh_dlc05_wef_cav_glade_riders_1 = {
		{"wh2_dlc16_wef_cav_glade_riders_2", 0, no_icon = true},
		{"wh_dlc05_wef_cav_wild_riders_0", 4},
		{"wh_dlc05_wef_cav_wild_riders_1", 6}
	},
	wh2_dlc16_wef_cav_glade_riders_2= {
		{"wh_dlc05_wef_cav_glade_riders_0", 0, no_icon = true},
		{"wh_dlc05_wef_cav_glade_riders_1", 5},
		{"wh_dlc05_wef_cav_wild_riders_0", 5},
		{"wh_dlc05_wef_cav_wild_riders_1", 7}
	},
	wh2_dlc16_wef_mon_hawks_0 = {
		{"wh_dlc05_wef_cav_hawk_riders_0", 4, no_icon = true},
	},
	wh2_dlc16_wef_inf_malicious_dryads_0 = {
		{"wh2_dlc16_wef_cha_malicious_branchwraith_beasts_0", 8, no_icon = true, agent_type="champion", agent_subtype="wh2_dlc16_wef_malicious_branchwraith_beasts"},
		{"wh2_dlc16_wef_cha_malicious_branchwraith_shadows_0", 8, no_icon = true, agent_type="champion", agent_subtype="wh2_dlc16_wef_malicious_branchwraith_shadows"},
		{"wh2_dlc16_wef_cha_malicious_branchwraith_life_0", 8, no_icon = true, agent_type="champion", agent_subtype="wh2_dlc16_wef_malicious_branchwraith_life"},
	},


	wh_dlc07_brt_peasant_mob_0 = "wh_dlc07_brt_inf_battle_pilgrims_0",

	wh_dlc07_brt_inf_spearmen_at_arms_1 = {		-- Spearmen
		{"wh_dlc07_brt_inf_men_at_arms_1", 0, no_icon = true},
		{"wh_main_brt_inf_spearmen_at_arms", 3},
		{"wh_main_brt_inf_men_at_arms", 5},
		{"wh_dlc07_brt_inf_foot_squires_0", 8},
	},
	wh_main_brt_inf_spearmen_at_arms = {		-- Spearmen (Shields)
		{"wh_dlc07_brt_inf_men_at_arms_2", 0, no_icon = true},
		{"wh_main_brt_inf_men_at_arms", 4},
		{"wh_dlc07_brt_inf_foot_squires_0", 7},
	},
	wh_dlc07_brt_inf_men_at_arms_1 = {		-- Men-at-Arms
		{"wh_dlc07_brt_inf_spearmen_at_arms_1", 0, no_icon = true},
		{"wh_dlc07_brt_inf_men_at_arms_2", 3},
		{"wh_dlc07_brt_inf_foot_squires_0", 7},
	},
	wh_dlc07_brt_inf_men_at_arms_2 = {		-- Men-at-Arms (Shields)
		{"wh_main_brt_inf_spearmen_at_arms", 0, no_icon = true},
		{"wh_dlc07_brt_inf_foot_squires_0", 6},
	},
	wh_main_brt_inf_men_at_arms = {			-- Men-at-Arms (Polearm)
		{"wh_dlc07_brt_inf_foot_squires_0", 4},
	},
	wh_dlc07_brt_inf_foot_squires_0 = {
		{"wh_main_brt_cav_knights_of_the_realm", 8},
	},
	wh_dlc07_brt_inf_battle_pilgrims_0 = {
		{"wh_dlc07_brt_inf_grail_reliquae_0", 7},
	},
	wh_main_brt_inf_peasant_bowmen = {		-- Peasant Bowmen
		{"wh_dlc07_brt_inf_peasant_bowmen_1", 3},
		{"wh_dlc07_brt_inf_peasant_bowmen_2", 4},
	},
	wh_dlc07_brt_inf_peasant_bowmen_1 = {		-- Fire Arrows
		{"wh_dlc07_brt_inf_peasant_bowmen_2", 0, no_icon = true},
	},
	wh_dlc07_brt_inf_peasant_bowmen_2 = {		-- Pox Arrows
		{"wh_dlc07_brt_inf_peasant_bowmen_1", 0, no_icon = true},
	},
	wh_main_brt_cav_mounted_yeomen_0 = {
		{"wh_main_brt_cav_knights_of_the_realm", 9},
	},
	wh_dlc07_brt_cav_knights_errant_0 = {
		{"wh_main_brt_cav_knights_of_the_realm", 6},
		{"wh_main_brt_cav_pegasus_knights", 9},
	},
	wh_main_brt_cav_knights_of_the_realm = {
		{"wh_dlc07_brt_cav_questing_knights_0", 4},
		{"wh_main_brt_cav_pegasus_knights", 8},
	},
	wh_dlc07_brt_cav_questing_knights_0 = {
		{"wh_main_brt_cav_grail_knights", 6},
		{"wh_main_brt_cav_pegasus_knights", 7},
	},
	wh_main_brt_cav_grail_knights = {
		{"wh_dlc07_brt_cav_grail_guardians_0", 6, no_icon = true},
		{"wh_dlc07_brt_cav_royal_pegasus_knights_0", 7, no_icon = true},
		{"wh_dlc07_brt_cav_royal_hippogryph_knights_0", 8, no_icon = true},
	},
	wh_dlc07_brt_cav_grail_guardians_0 = {
		{"wh_dlc07_brt_cav_royal_pegasus_knights_0", 5, no_icon = true},
		{"wh_dlc07_brt_cav_royal_hippogryph_knights_0", 6, no_icon = true}
	},
	wh_main_brt_cav_pegasus_knights = "wh_dlc07_brt_cav_royal_pegasus_knights_0",

	wh_dlc07_brt_cav_royal_pegasus_knights_0 = "wh_dlc07_brt_cav_royal_hippogryph_knights_0",

	wh_main_brt_art_field_trebuchet = "wh_dlc07_brt_art_blessed_field_trebuchet_0",



	wh_main_nor_inf_chaos_marauders_0 =  {
		{"wh_dlc08_nor_inf_marauder_spearman_0", 2, no_icon = true},
		{"wh_main_nor_inf_chaos_marauders_1", 3, no_icon = true},
		{"wh_dlc08_nor_inf_marauder_berserkers_0", 5},
		{"wh_dlc08_nor_inf_marauder_champions_0", 7},
	},
	wh_dlc08_nor_inf_marauder_spearman_0 = {
		{"wh_main_nor_inf_chaos_marauders_0", 0, no_icon = true},
		{"wh_main_nor_inf_chaos_marauders_1", 2, no_icon = true},
		{"wh_dlc08_nor_inf_marauder_berserkers_0", 5},
		{"wh_dlc08_nor_inf_marauder_champions_1", 7},
	},
	wh_main_nor_inf_chaos_marauders_1 = {
		{"wh_main_nor_inf_chaos_marauders_0", 0, no_icon = true},
		{"wh_dlc08_nor_inf_marauder_spearman_0", 0, no_icon = true},
		{"wh_dlc08_nor_inf_marauder_berserkers_0", 4},
		{"wh_dlc08_nor_inf_marauder_champions_1", 6},
	},
	wh_dlc08_nor_inf_marauder_berserkers_0 = {
		{"wh_dlc08_nor_inf_marauder_champions_0", 4},
	},
	wh_dlc08_nor_inf_marauder_champions_0 = {
		{ "wh_dlc08_nor_inf_marauder_champions_1", 2, no_icon = true},
	},
	wh_dlc08_nor_inf_marauder_champions_1 = {
		{"wh_dlc08_nor_inf_marauder_champions_0", 0, no_icon = true}
	},
	wh_dlc08_nor_inf_marauder_hunters_0 = {
		{"wh_dlc08_nor_inf_marauder_hunters_1", 2, no_icon = true},
	},
	wh_dlc08_nor_inf_marauder_hunters_1 = {
		{"wh_dlc08_nor_inf_marauder_hunters_0", 0, no_icon = true},
	},
	wh_main_nor_cav_chaos_chariot = {
		{"wh_dlc08_nor_cav_marauder_warwolves_chariot_0", 4},
	},
	wh_main_nor_cav_marauder_horsemen_0 = {
		{"wh_main_nor_cav_marauder_horsemen_1", 4},
		{"wh_dlc06_chs_cav_marauder_horsemasters_0", 7},
	},
	wh_main_nor_cav_marauder_horsemen_1 = {
		{"wh_dlc06_chs_cav_marauder_horsemasters_0", 5},
	},
	wh_dlc08_nor_mon_skinwolves_0 = "wh_dlc08_nor_mon_skinwolves_1",

	wh_dlc08_nor_mon_fimir_0 = {
		{"wh_dlc08_nor_mon_fimir_1", 4},
	},
	wh_dlc08_nor_mon_fimir_1 = {
		{"wh_dlc08_nor_mon_fimir_0", 0, no_icon = true}
	},
	wh_dlc08_nor_mon_war_mammoth_0 = {
		{"wh_dlc08_nor_mon_war_mammoth_1", 5},
		{"wh_dlc08_nor_mon_war_mammoth_2", 7},
	},
	wh_dlc08_nor_mon_war_mammoth_1 = {
		{"wh_dlc08_nor_mon_war_mammoth_2", 4},
	},
	wh_dlc08_nor_mon_war_mammoth_2 = {
		{"wh_dlc08_nor_mon_war_mammoth_1", 0, no_icon = true},
	},
	wh_dlc08_nor_mon_skinwolves_1 = {
		{"wh_dlc08_nor_cha_skin_wolf_werekin_0", 9, no_icon = true, agent_type="champion", agent_subtype="wh_dlc08_nor_skin_wolf_werekin"},
	},


	wh2_main_hef_inf_spearmen_0 = {
		{"wh2_main_hef_inf_white_lions_of_chrace_0", 6},
		{"wh2_dlc15_hef_inf_silverin_guard_0", 3},
	},

	wh2_main_hef_inf_archers_0 = {
		{"wh2_main_hef_inf_archers_1", 3},
		{"wh2_main_hef_inf_spearmen_0", 4, no_icon = true},
	},
	wh2_main_hef_inf_archers_1 = {
		{"wh2_main_hef_inf_spearmen_0", 3, no_icon = true},
	},
	wh2_main_hef_inf_lothern_sea_guard_0 = {
		{"wh2_main_hef_inf_lothern_sea_guard_1", 4}
	},
	--- Shadow Walkers are Nagarythe only, so debatable whether to allow for all factions or not
	wh2_dlc10_hef_inf_shadow_warriors_0 = {
		{"wh2_dlc10_hef_inf_shadow_walkers_0", 7}
	},
	wh2_main_hef_cav_silver_helms_0 = {
		{"wh2_main_hef_cav_silver_helms_1", 4},
	},
	wh2_main_hef_cav_ithilmar_chariot = {
		{"wh2_main_hef_cav_tiranoc_chariot", 0, no_icon = true},
	},
	wh2_main_hef_cav_tiranoc_chariot = {
		{"wh2_main_hef_cav_ithilmar_chariot", 5},
	},
	wh2_dlc10_hef_inf_sisters_of_avelorn_0 = {
		{"wh2_dlc10_hef_cha_handmaiden_0", 9, no_icon = true, agent_type="dignitary", agent_subtype="wh2_dlc10_hef_handmaiden"},
	},



	wh2_dlc17_lzd_mon_troglodon_0 = {
		{"wh2_dlc17_lzd_cha_skink_oracle_troglodon_0", 9, no_icon = true, agent_type="runesmith", agent_subtype="wh2_dlc17_lzd_skink_oracle_troglodon"},
	},
	wh2_main_lzd_inf_chameleon_skinks_0 = {
		{"wh2_dlc17_lzd_inf_chameleon_stalkers_0", 0},
	},
	wh2_dlc17_lzd_inf_chameleon_stalkers_0 = {
		{"wh2_main_lzd_inf_chameleon_skinks_0", 0},
	},
	wh2_main_lzd_inf_skink_cohort_0 = {
		{"wh2_main_lzd_inf_skink_cohort_1", 3},
		{"wh2_main_lzd_inf_skink_skirmishers_0", 3},
	},
	wh2_main_lzd_inf_skink_cohort_1 = {
		{"wh2_main_lzd_inf_skink_skirmishers_0", 2, no_icon = true},
	},
	wh2_main_lzd_inf_skink_skirmishers_0 = {
		{"wh2_main_lzd_inf_skink_cohort_1", 2, no_icon = true},
	},
	wh2_main_lzd_inf_saurus_warriors_0 = {
		{"wh2_main_lzd_inf_saurus_spearmen_0", 0, no_icon = true},
		{"wh2_main_lzd_inf_saurus_warriors_1", 3},
	},
	wh2_main_lzd_inf_saurus_spearmen_0 = {
		{"wh2_main_lzd_inf_saurus_warriors_0", 0, no_icon = true},
		{"wh2_main_lzd_inf_saurus_spearmen_1", 3},
	},
	wh2_main_lzd_inf_saurus_warriors_1 = {
		{"wh2_main_lzd_inf_saurus_spearmen_1", 0, no_icon = true},
	},
	wh2_main_lzd_inf_saurus_spearmen_1 = {
		{"wh2_main_lzd_inf_saurus_warriors_1", 0, no_icon = true},
	},
	wh2_main_lzd_cav_cold_ones_feral_0 = "wh2_main_lzd_cav_cold_ones_1",

	wh2_main_lzd_cav_cold_ones_1 = {
		{"wh2_main_lzd_cav_cold_one_spearmen_1", 0, no_icon = true},
		{"wh2_main_lzd_cav_horned_ones_0", 6},
	},
	wh2_main_lzd_cav_cold_one_spearmen_1 = {
		{"wh2_main_lzd_cav_cold_ones_1", 0, no_icon = true},
		{"wh2_main_lzd_cav_horned_ones_0", 6},
	},
	wh2_main_lzd_mon_kroxigors = {
		{"wh2_dlc13_lzd_mon_sacred_kroxigors_0", 5},
	},
	wh2_main_lzd_mon_kroxigors_nakai = {
		{"wh2_dlc13_lzd_mon_sacred_kroxigors_0_nakai", 5},
	},
	wh2_main_lzd_mon_bastiladon_0 = {			-- Feral
		{"wh2_dlc12_lzd_mon_bastiladon_3", 4},
		{"wh2_main_lzd_mon_bastiladon_1", 6},
		{"wh2_main_lzd_mon_bastiladon_2", 7},
	},
	wh2_dlc12_lzd_mon_bastiladon_3 = {			-- Ark of Sotek
		{"wh2_main_lzd_mon_bastiladon_1", 0, no_icon = true},
		{"wh2_main_lzd_mon_bastiladon_2", 0, no_icon = true},
	},
	wh2_main_lzd_mon_bastiladon_1 = {			-- Revivification
		{"wh2_dlc12_lzd_mon_bastiladon_3", 0, no_icon = true},
		{"wh2_main_lzd_mon_bastiladon_2", 2, no_icon = true},
	},
	wh2_main_lzd_mon_bastiladon_2 = {			-- Solar Engine
		{"wh2_dlc12_lzd_mon_bastiladon_3", 0, no_icon = true},
		{"wh2_main_lzd_mon_bastiladon_1", 0, no_icon = true},
	},
	wh2_main_lzd_mon_stegadon_0 = "wh2_main_lzd_mon_stegadon_1",
	wh2_main_lzd_mon_ancient_stegadon = "wh2_dlc12_lzd_mon_ancient_stegadon_1",
	wh2_dlc12_lzd_mon_ancient_stegadon_1 = {
		{"wh2_main_lzd_mon_ancient_stegadon", 0, no_icon = true},
	},
	wh2_dlc13_lzd_mon_dread_saurian_0 = {
		{"wh2_dlc13_lzd_mon_dread_saurian_1", 9},
	},
	wh2_main_lzd_cav_terradon_riders_0 = {
		{"wh2_main_lzd_cav_terradon_riders_1", 5},
	},
	wh2_main_lzd_cav_terradon_riders_1 = {
		{"wh2_main_lzd_cav_terradon_riders_0", 0, no_icon = true},
	},



	wh2_main_def_inf_bleakswords_0 = "wh2_main_def_inf_black_ark_corsairs_0",
	wh2_main_def_inf_dreadspears_0 = {
		{"wh2_main_def_inf_darkshards_1", 4, no_icon = true},
		{"wh2_main_def_inf_black_ark_corsairs_0", 7, no_icon = true},
	},
	wh2_main_def_inf_black_ark_corsairs_0 = {
		{"wh2_main_def_inf_black_ark_corsairs_1", 0, no_icon = true},
	},
	wh2_main_def_inf_black_ark_corsairs_1 = {
		{"wh2_main_def_inf_black_ark_corsairs_0", 2, no_icon = true},
	},
	wh2_main_def_inf_darkshards_0 = {
		{"wh2_main_def_inf_darkshards_1", 3},
		{"wh2_main_def_inf_dreadspears_0", 4},
		{"wh2_main_def_inf_bleakswords_0", 4},
		{"wh2_main_def_inf_black_ark_corsairs_1", 6},
	},
	wh2_main_def_inf_darkshards_1 = {
		{"wh2_main_def_inf_dreadspears_0", 2, no_icon = true},
		{"wh2_main_def_inf_bleakswords_0", 2, no_icon = true},
		{"wh2_main_def_inf_black_ark_corsairs_1", 5, no_icon = true},
	},
	wh2_main_def_inf_shades_0 = {
		{"wh2_main_def_inf_shades_1", 4},
		{"wh2_main_def_inf_shades_2", 5},
	},
	wh2_main_def_inf_shades_1 = {
		{"wh2_main_def_inf_shades_2", 2, no_icon = true}
	},
	wh2_main_def_inf_shades_2 = {
		{"wh2_main_def_inf_shades_1", 0, no_icon = true}
	},
	wh2_main_def_cav_dark_riders_0 = {
		{"wh2_main_def_cav_dark_riders_1", 3},
	},
	wh2_main_def_cav_cold_one_knights_0 = {
		{"wh2_main_def_cav_cold_one_chariot", 2, no_icon = true},
		{"wh2_main_def_cav_cold_one_knights_1", 6},
	},
	wh2_main_def_cav_cold_one_knights_1 = {
		{"wh2_main_def_cav_cold_one_chariot", 0, no_icon = true},
	},
	wh2_dlc14_def_mon_bloodwrack_medusa_0 = "wh2_dlc14_def_veh_bloodwrack_shrine_0",



	wh2_main_skv_inf_skavenslaves_0 = {
		{"wh2_main_skv_inf_skavenslave_spearmen_0", 0, no_icon = true},
		{"wh2_main_skv_inf_skavenslave_slingers_0", 0, no_icon = true},
		{"wh2_main_skv_inf_clanrats_0", 7},
	},
	wh2_main_skv_inf_skavenslave_spearmen_0 = {
		{"wh2_main_skv_inf_skavenslaves_0", 0, no_icon = true},
		{"wh2_main_skv_inf_skavenslave_slingers_0", 0, no_icon = true},
		{"wh2_main_skv_inf_clanrat_spearmen_0", 7},
	},
	wh2_main_skv_inf_skavenslave_slingers_0 = {
		{"wh2_main_skv_inf_skavenslaves_0", 0, no_icon = true},
		{"wh2_main_skv_inf_skavenslave_spearmen_0", 0, no_icon = true},
	},
	wh2_main_skv_inf_clanrats_0 = {
		{"wh2_main_skv_inf_clanrat_spearmen_0", 0, no_icon = true},
		{"wh2_main_skv_inf_clanrats_1", 3},
	},
	wh2_main_skv_inf_clanrat_spearmen_0 = {
		{"wh2_main_skv_inf_clanrats_0", 0, no_icon = true},
		{"wh2_main_skv_inf_clanrat_spearmen_1", 3}
	},
	wh2_main_skv_inf_clanrats_1 = {
		{"wh2_main_skv_inf_clanrat_spearmen_1", 0, no_icon = true},
	},
	wh2_main_skv_inf_clanrat_spearmen_1 = {
		{"wh2_main_skv_inf_clanrats_1", 0, no_icon = true},
	},
	wh2_main_skv_inf_plague_monks = "wh2_main_skv_inf_plague_monk_censer_bearer",

	wh2_main_skv_inf_stormvermin_0 = {
		{"wh2_main_skv_inf_stormvermin_1", 0, no_icon = true},
	},
	wh2_main_skv_inf_stormvermin_1 = {
		{"wh2_main_skv_inf_stormvermin_0", 0, no_icon = true},
	},
	wh2_main_skv_inf_night_runners_0 = {
		{"wh2_main_skv_inf_night_runners_1", 0, no_icon = true},
		{"wh2_main_skv_inf_gutter_runners_0", 6},
		{"wh2_main_skv_inf_gutter_runners_1", 8},
	},
	wh2_main_skv_inf_night_runners_1 = {
		{"wh2_main_skv_inf_night_runners_0", 0, no_icon = true},
		{"wh2_main_skv_inf_gutter_runner_slingers_0", 6},
		{"wh2_main_skv_inf_gutter_runner_slingers_1", 8},
	},
	wh2_main_skv_inf_gutter_runners_0 = {
		{"wh2_main_skv_inf_gutter_runner_slingers_0", 0, no_icon = true},
		{"wh2_main_skv_inf_gutter_runners_1", 4},
		{"wh2_dlc14_skv_inf_eshin_triads_0", 6},
		{"wh2_main_skv_inf_death_runners_0", 6},
	},
	wh2_main_skv_inf_gutter_runner_slingers_0 = {
		{"wh2_main_skv_inf_gutter_runners_0", 0, no_icon = true},
		{"wh2_main_skv_inf_gutter_runner_slingers_1", 4},
		{"wh2_dlc14_skv_inf_eshin_triads_0", 6},
		{"wh2_main_skv_inf_death_runners_0", 6},
	},
	wh2_main_skv_inf_gutter_runners_1 = {
		{"wh2_main_skv_inf_gutter_runner_slingers_1", 0, no_icon = true},
		{"wh2_dlc14_skv_inf_eshin_triads_0", 4},
		{"wh2_main_skv_inf_death_runners_0", 4},
	},
	wh2_main_skv_inf_gutter_runner_slingers_1 = {
		{"wh2_main_skv_inf_gutter_runners_1", 0, no_icon = true},
		{"wh2_dlc14_skv_inf_eshin_triads_0", 4},
		{"wh2_main_skv_inf_death_runners_0", 4},
	},
	wh2_dlc14_skv_inf_eshin_triads_0 = {
		{"wh2_main_skv_inf_death_runners_0", 0, no_icon = true},
	},
	wh2_main_skv_inf_death_runners_0 = {
		{"wh2_dlc14_skv_inf_eshin_triads_0", 0, no_icon = true},
	},
	wh2_dlc14_skv_inf_warp_grinder_0 = {
		{"wh2_main_skv_inf_warpfire_thrower", 2, no_icon = true},
		{"wh2_dlc12_skv_inf_ratling_gun_0", 5, no_icon = true},
	},
	wh2_main_skv_inf_warpfire_thrower = {
		{"wh2_dlc14_skv_inf_warp_grinder_0", 0, no_icon = true},
		{"wh2_dlc12_skv_inf_ratling_gun_0", 4, no_icon = true},
	},
	wh2_dlc12_skv_inf_ratling_gun_0 = {
		{"wh2_dlc14_skv_inf_warp_grinder_0", 0, no_icon = true},
		{"wh2_main_skv_inf_warpfire_thrower", 0, no_icon = true},
	},
	wh2_main_skv_inf_poison_wind_globadiers = {
		{"wh2_main_skv_inf_death_globe_bombardiers", 6},
		{"wh2_dlc14_skv_inf_poison_wind_mortar_0", 7},
	},
	wh2_main_skv_inf_death_globe_bombardiers = {
		{"wh2_dlc14_skv_inf_poison_wind_mortar_0", 2, no_icon = true},
	},
	wh2_dlc14_skv_inf_poison_wind_mortar_0 = {
		{"wh2_main_skv_inf_death_globe_bombardiers", 0, no_icon = true},
	},
	wh2_main_skv_mon_rat_ogres = {
		{"wh2_dlc16_skv_mon_rat_ogre_mutant", 6, no_icon = true},
	},
	wh2_dlc16_skv_mon_wolf_rats_0 = {
		{"wh2_dlc16_skv_mon_wolf_rats_1", 0, no_icon = true},
	},
	wh2_dlc16_skv_mon_wolf_rats_1 = {
		{"wh2_dlc16_skv_mon_wolf_rats_0", 0, no_icon = true},
	},
	wh2_dlc16_skv_mon_wolf_rats_0_flesh_lab = {
		{"wh2_dlc16_skv_mon_wolf_rats_1", 0, no_icon = true},
	},
	wh2_dlc16_skv_mon_wolf_rats_1_flesh_lab = {
		{"wh2_dlc16_skv_mon_wolf_rats_0", 0, no_icon = true},
	},
	wh2_dlc16_skv_mon_rat_ogres_flesh_lab = {
		{"wh2_dlc16_skv_mon_rat_ogre_mutant", 6, no_icon = true},
	},
	wh2_dlc16_skv_inf_skavenslaves_0_flesh_lab = {
		{"wh2_main_skv_inf_skavenslave_spearmen_0", 0, no_icon = true},
		{"wh2_main_skv_inf_skavenslave_slingers_0", 0, no_icon = true},
		{"wh2_main_skv_inf_clanrats_0", 7},
	},
	wh2_dlc16_skv_inf_skavenslave_spearmen_0_flesh_lab = {
		{"wh2_main_skv_inf_skavenslaves_0", 0, no_icon = true},
		{"wh2_main_skv_inf_skavenslave_slingers_0", 0, no_icon = true},
		{"wh2_main_skv_inf_clanrat_spearmen_0", 7},
	},



	wh2_dlc09_tmb_inf_skeleton_warriors_0 = {
		{"wh2_dlc09_tmb_inf_skeleton_spearmen_0", 0, no_icon = true},
		{"wh2_dlc09_tmb_inf_nehekhara_warriors_0", 5},
	},
	wh2_dlc09_tmb_inf_skeleton_spearmen_0 = {
		{"wh2_dlc09_tmb_inf_skeleton_warriors_0", 0, no_icon = true},
		{"wh2_dlc09_tmb_inf_tomb_guard_1", 7},
	},
	wh2_dlc09_tmb_inf_nehekhara_warriors_0 = {
		{"wh2_dlc09_tmb_inf_tomb_guard_0", 7},
	},
	wh2_dlc09_tmb_inf_tomb_guard_0 = {
		{"wh2_dlc09_tmb_inf_tomb_guard_1", 7, no_icon = true},
	},
	wh2_dlc09_tmb_inf_tomb_guard_1 = {
		{"wh2_dlc09_tmb_inf_tomb_guard_0", 5, no_icon = true},
	},
	wh2_dlc09_tmb_veh_skeleton_chariot_0 = {
		{"wh2_dlc09_tmb_veh_skeleton_archer_chariot_0", 8},
	},
	wh2_dlc09_tmb_mon_ushabti_0 = {
		{"wh2_dlc09_tmb_mon_ushabti_1", 8},
	},
	wh2_dlc09_tmb_mon_ushabti_1 = {
		{"wh2_dlc09_tmb_mon_ushabti_0", 5, no_icon = true},
	},
	wh2_dlc09_tmb_cav_necropolis_knights_0 = {
		{"wh2_dlc09_tmb_cav_necropolis_knights_1", 7, no_icon = true},
	},
	wh2_dlc09_tmb_cav_necropolis_knights_1 = {
		{"wh2_dlc09_tmb_cav_necropolis_knights_0", 5, no_icon = true},
	},
	wh2_dlc09_tmb_cav_skeleton_horsemen_0 = {
		{"wh2_dlc09_tmb_cav_nehekhara_horsemen_0", 6},
	},


	wh2_dlc11_cst_inf_zombie_deckhands_mob_0 = {
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_1", 3},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", 4},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_3", 5},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_1", 6},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_2", 7},
	},
	wh2_dlc11_cst_inf_zombie_deckhands_mob_1 = {
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", 2, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_3", 3, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_1", 4, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_2", 5, no_icon = true},
	},
	wh2_dlc11_cst_inf_depth_guard_0 = {
		{"wh2_dlc11_cst_inf_depth_guard_1", 4, no_icon = true},
	},
	wh2_dlc11_cst_inf_depth_guard_1 = {
		{"wh2_dlc11_cst_inf_depth_guard_0", 0, no_icon = true},
	},
	wh2_dlc11_cst_inf_sartosa_free_company_0 = {
		{"wh2_dlc11_cst_inf_sartosa_militia_0", 0, no_icon = true},
	},
	wh2_dlc11_cst_inf_sartosa_militia_0 = {
		{"wh2_dlc11_cst_inf_sartosa_free_company_0", 0, no_icon = true},
	},
	wh2_dlc11_cst_inf_zombie_gunnery_mob_0 = {		-- Pistols
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_0", 2, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_1", 4, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_3", 4, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_1", 6},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_2", 7},
		{"wh2_dlc11_cst_inf_deck_gunners_0", 8},
	},
	wh2_dlc11_cst_inf_zombie_gunnery_mob_1 = {		-- Handguns
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_1", 2, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_3", 2, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_2", 4, no_icon = true},
		{"wh2_dlc11_cst_inf_deck_gunners_0", 7},
		{"wh2_dlc11_cst_cha_gunnery_wight_0", 9, no_icon = true, agent_type="engineer", agent_subtype="wh2_dlc11_cst_gunnery_wight"},
	},
	wh2_dlc11_cst_inf_zombie_gunnery_mob_2 = {		-- Hand Cannons
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_1", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_3", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_1", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_deck_gunners_0", 6},
		{"wh2_dlc11_cst_cha_gunnery_wight_0", 9, no_icon = true, agent_type="engineer", agent_subtype="wh2_dlc11_cst_gunnery_wight"},
	},
	wh2_dlc11_cst_inf_zombie_gunnery_mob_3 = {		-- Bombers
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_deckhands_mob_1", 2, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_0", 0, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_1", 4, no_icon = true},
		{"wh2_dlc11_cst_inf_zombie_gunnery_mob_2", 5, no_icon = true},
		{"wh2_dlc11_cst_inf_deck_gunners_0", 7},
		{"wh2_dlc11_cst_cha_gunnery_wight_0", 9, no_icon = true, agent_type="engineer", agent_subtype="wh2_dlc11_cst_gunnery_wight"},
	},
	wh2_dlc11_cst_mon_rotting_prometheans_0 = "wh2_dlc11_cst_mon_rotting_prometheans_gunnery_mob_0",

	wh2_dlc11_cst_cav_deck_droppers_0 = {
		{"wh2_dlc11_cst_cav_deck_droppers_1", 4},
		{"wh2_dlc11_cst_cav_deck_droppers_2", 6},
	},
	wh2_dlc11_cst_cav_deck_droppers_1 = {
		{"wh2_dlc11_cst_cav_deck_droppers_0", 0, no_icon = true},
		{"wh2_dlc11_cst_cav_deck_droppers_2", 3, no_icon = true},
	},
	wh2_dlc11_cst_cav_deck_droppers_2 = {
		{"wh2_dlc11_cst_cav_deck_droppers_0", 0, no_icon = true},
		{"wh2_dlc11_cst_cav_deck_droppers_1", 0, no_icon = true},
	},
	wh2_dlc11_cst_inf_deck_gunners_0 = {
		{"wh2_dlc11_cst_cha_gunnery_wight_0", 8, no_icon = true, agent_type="engineer", agent_subtype="wh2_dlc11_cst_gunnery_wight"},
	},
	wh2_dlc11_cst_mon_mournguls_0 = {
		{"wh2_dlc11_cst_cha_mourngul_haunter", 8, no_icon = true, agent_type="champion", agent_subtype="wh2_dlc11_cst_mourngul"},
	},

	wh2_dlc15_grn_veh_snotling_pump_wagon_0 = {
		{"wh2_dlc15_grn_veh_snotling_pump_wagon_flappas_0", 4},
		{"wh2_dlc15_grn_veh_snotling_pump_wagon_roller_0", 5},
	},
	wh2_dlc15_grn_veh_snotling_pump_wagon_flappas_0 = {
		{"wh2_dlc15_grn_veh_snotling_pump_wagon_roller_0", 2, no_icon = true},
	},
	wh2_dlc15_grn_veh_snotling_pump_wagon_roller_0 = {
		{"wh2_dlc15_grn_veh_snotling_pump_wagon_flappas_0", 0, no_icon = true},
	},
	wh_dlc06_grn_cav_squig_hoppers_0 = {
		{"wh2_dlc15_grn_cav_squig_hoppers_waaagh_0", 6},
	},

	wh2_dlc15_hef_inf_rangers_0 = {
		{"wh2_main_hef_inf_white_lions_of_chrace_0", 5},
	},
	wh2_main_hef_inf_white_lions_of_chrace_0 = {
		{"wh2_dlc15_hef_veh_lion_chariot_of_chrace_0", 5, no_icon = true},
	},
	wh2_dlc15_hef_mon_war_lions_of_chrace_0 = {
		{"wh2_dlc15_hef_veh_lion_chariot_of_chrace_0", 5},
	},
	wh2_dlc15_hef_inf_mistwalkers_faithbearers_0 = {
		{"wh2_dlc15_hef_inf_mistwalkers_skyhawks_0", 5, no_icon = true},
	},
	wh2_dlc15_hef_inf_mistwalkers_spireguard_0 = {
		{"wh2_dlc15_hef_inf_mistwalkers_sentinels_0", 5},
	},
	wh2_dlc15_hef_inf_silverin_guard_0 = {
		{"wh2_dlc15_hef_inf_mistwalkers_faithbearers_0", 5},
		{"wh2_dlc15_hef_inf_mistwalkers_skyhawks_0", 8},
		{"wh2_dlc15_hef_inf_mistwalkers_spireguard_0", 5},
		{"wh2_dlc15_hef_inf_mistwalkers_sentinels_0", 8},
	},

}

return unit_upgrades
