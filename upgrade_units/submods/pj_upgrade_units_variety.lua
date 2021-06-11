local function add_upgrade(from, to, data)
	local unit_upgrades = PJ_UPGRADE.unit_upgrades
	unit_upgrades[from] = unit_upgrades[from] or {}
	unit_upgrades[from][to] = data
end

--- Wrap everything in add_first_tick_callback so it runs after the Upgrade Units mod.
cm:add_first_tick_callback(function()
	-- if the user doesn't have the main mod (i.e. Upgrade Units) just exit.
	if not PJ_UPGRADE then
		return
	end

	add_upgrade("wh_main_grn_mon_trolls", "wh2_dlc15_grn_mon_stone_trolls_0", {5})
	add_upgrade("wh2_dlc15_grn_mon_stone_trolls_0", "wh2_dlc15_grn_mon_river_trolls_0", {5, no_icon = true})
	add_upgrade("wh_main_grn_mon_trolls", "wh2_dlc15_grn_mon_river_trolls_0", {7})
	add_upgrade("wh_main_grn_inf_orc_big_uns", "wh_main_grn_inf_black_orcs", {6})

	add_upgrade("wh2_dlc15_hef_inf_silverin_guard_0", "wh2_main_hef_inf_phoenix_guard", {8})
	add_upgrade("wh2_main_hef_inf_lothern_sea_guard_1", "wh2_main_hef_inf_phoenix_guard", {8})
	add_upgrade("wh2_main_hef_inf_lothern_sea_guard_1", "wh2_main_hef_inf_swordmasters_of_hoeth_0", {8})
	add_upgrade("wh2_dlc10_hef_inf_dryads_0", "wh2_dlc10_hef_mon_treekin_0", {5})
	add_upgrade("wh2_dlc10_hef_mon_treekin_0", "wh2_dlc10_hef_mon_treeman_0", {5})
	add_upgrade("wh2_main_hef_cav_silver_helms_1", "wh2_main_hef_cav_dragon_princes", {7})
	add_upgrade("wh2_main_hef_mon_great_eagle", "wh2_main_hef_mon_phoenix_frostheart", {5})
	add_upgrade("wh2_main_hef_mon_phoenix_flamespyre", "wh2_dlc15_hef_mon_arcane_phoenix_0", {5})
	add_upgrade("wh2_main_hef_inf_spearmen_0", "wh2_main_hef_inf_phoenix_guard", {8})
	add_upgrade("wh2_dlc15_hef_inf_rangers_0", "wh2_main_hef_inf_swordmasters_of_hoeth_0", {8})
	add_upgrade("wh2_main_hef_inf_spearmen_0", "wh2_main_hef_inf_swordmasters_of_hoeth_0", {8})
	add_upgrade("wh2_main_hef_cav_ellyrian_reavers_0", "wh2_main_hef_cav_silver_helms_0", {6})
	add_upgrade("wh2_main_hef_inf_archers_0", "wh2_dlc10_hef_inf_sisters_of_avelorn_0", {8})
	add_upgrade("wh2_main_hef_inf_archers_1", "wh2_dlc10_hef_inf_sisters_of_avelorn_0", {8})
	add_upgrade("wh2_main_hef_inf_archers_0", "wh2_main_hef_inf_lothern_sea_guard_0", {5})
	add_upgrade("wh2_main_hef_inf_archers_1", "wh2_main_hef_inf_lothern_sea_guard_1", {5})
	add_upgrade("wh2_main_hef_inf_spearmen_0", "wh2_main_hef_inf_lothern_sea_guard_1", {5})

	add_upgrade("wh_main_dwf_inf_hammerers", "wh_main_dwf_inf_ironbreakers", {5})
	add_upgrade("wh_main_dwf_inf_quarrellers_0", "wh_dlc06_dwf_inf_rangers_0", {5})
	add_upgrade("wh_main_dwf_inf_quarrellers_1", "wh_dlc06_dwf_inf_rangers_1", {5})

	add_upgrade("wh_main_vmp_inf_cairn_wraiths", "wh_main_vmp_cav_hexwraiths", {6, no_icon = true})
	add_upgrade("wh_main_vmp_cav_hexwraiths", "wh_main_vmp_inf_cairn_wraiths", {6, no_icon = true})
	add_upgrade("wh_main_vmp_inf_skeleton_warriors_1", "wh_main_vmp_inf_grave_guard_0", {5})
	add_upgrade("wh_main_vmp_inf_skeleton_warriors_0", "wh_main_vmp_inf_grave_guard_0", {5})

	add_upgrade("wh2_main_lzd_inf_saurus_spearmen_1", "wh2_main_lzd_inf_temple_guards", {6})
	add_upgrade("wh2_main_lzd_inf_saurus_warriors_1", "wh2_main_lzd_inf_temple_guards", {6})
	add_upgrade("wh2_main_lzd_inf_skink_cohort_0", "wh2_dlc12_lzd_inf_skink_red_crested_0", {5})
	add_upgrade("wh2_main_lzd_inf_skink_skirmishers_0", "wh2_main_lzd_inf_chameleon_skinks_0", {5})

	add_upgrade("wh2_main_def_inf_bleakswords_0", "wh2_main_def_inf_har_ganeth_executioners_0", {6})
	add_upgrade("wh2_main_def_inf_dreadspears_0", "wh2_main_def_inf_black_guard_0", {6})

	add_upgrade("wh_dlc05_wef_inf_dryads_0", "wh_dlc05_wef_mon_treekin_0", {4})
	add_upgrade("wh_dlc05_wef_mon_treekin_0", "wh_dlc05_wef_mon_treeman_0", {6})

	add_upgrade("wh_main_emp_art_mortar", "wh_main_emp_art_helstorm_rocket_battery", {8})
	add_upgrade("wh_main_emp_art_great_cannon", "wh_main_emp_art_helblaster_volley_gun", {8})

	add_upgrade("wh2_dlc16_skv_mon_wolf_rats_0_flesh_lab", "wh2_dlc16_skv_mon_brood_horror_0", {7})
	add_upgrade("wh2_dlc16_skv_mon_wolf_rats_1_flesh_lab", "wh2_dlc16_skv_mon_brood_horror_0", {7})
	add_upgrade("wh2_dlc16_skv_mon_wolf_rats_0", "wh2_dlc16_skv_mon_brood_horror_0", {7})
	add_upgrade("wh2_dlc16_skv_mon_wolf_rats_1", "wh2_dlc16_skv_mon_brood_horror_0", {7})
	add_upgrade("wh2_dlc12_skv_veh_doom_flayer_0", "wh2_main_skv_veh_doomwheel", {7})

	add_upgrade("wh_dlc05_wef_inf_eternal_guard_0", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_eternal_guard_1", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_wildwood_rangers_0", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_glade_guard_0", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_glade_guard_1", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_glade_guard_2", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_deepwood_scouts_0", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_deepwood_scouts_1", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
	add_upgrade("wh_dlc05_wef_inf_waywatchers_0", "wh2_dlc16_wef_mon_malicious_treekin_0", {8})
end)

--- When making a new submod rename the pack from pj_upgrade_units_variety.pack and give it a new name.
--- Also rename the script from pj_upgrade_units_variety.lua to a new name, we don't want duplicate scripts in the game.
--- Make sure the script you renamed still ends in ".lua"
