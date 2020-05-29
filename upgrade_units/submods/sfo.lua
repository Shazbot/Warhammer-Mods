--- Wrap everything in add_first_tick_callback so it runs after the Upgrade Units mod.
cm:add_first_tick_callback(function()
	-- if the user doesn't have the main mod (i.e. Upgrade Units) just exit.
	if not PJ_UPGRADE then
		return
	end

	-- we're putting this in a local so we have less to type
	local unit_upgrades = PJ_UPGRADE.unit_upgrades

	-- we need to make sure unit_upgrades.MAIN_UNIT_KEY exists before we add anything to it
	-- so always write unit_upgrades.MAIN_UNIT_KEY = unit_upgrades.MAIN_UNIT_KEY or {}
	unit_upgrades.wh_main_chs_inf_chaos_warriors_0 = unit_upgrades.wh_main_chs_inf_chaos_warriors_0 or {}
	-- add new upgrade paths for wh_main_chs_inf_chaos_warriors_0
	-- {3, cost = 750} means at experience rank 3, upgrade cost is 750
	unit_upgrades.wh_main_chs_inf_chaos_warriors_0.chs_zelot = {3, cost = 750}
	unit_upgrades.wh_main_chs_inf_chaos_warriors_1.chs_zelot = {2, cost = 750}
	unit_upgrades.wh_dlc01_chs_inf_chaos_warriors_2.chs_zelot = {2, cost = 750}

	unit_upgrades.wh_main_chs_inf_chaos_warriors_0.chs_nurgle_sons = {3, cost = 750}
	unit_upgrades.wh_main_chs_inf_chaos_warriors_1.chs_nurgle_sons = {2, cost = 750}
	unit_upgrades.wh_dlc01_chs_inf_chaos_warriors_2.chs_nurgle_sons = {2, cost = 750}

	unit_upgrades.wh_main_chs_inf_chaos_warriors_0.chs_khorne_berserk = {3, cost = 750}
	unit_upgrades.wh_main_chs_inf_chaos_warriors_1.chs_khorne_berserk = {2, cost = 750}
	unit_upgrades.wh_dlc01_chs_inf_chaos_warriors_2.chs_khorne_berserk = {2, cost = 750}

	unit_upgrades.wh_main_chs_inf_chaos_warriors_0.chs_slaanesh_bless = {3, cost = 750}
	unit_upgrades.wh_main_chs_inf_chaos_warriors_1.chs_slaanesh_bless = {2, cost = 750}
	unit_upgrades.wh_dlc01_chs_inf_chaos_warriors_2.chs_slaanesh_bless = {2, cost = 750}

	unit_upgrades.chs_zelot = unit_upgrades.chs_zelot or {}
	unit_upgrades.chs_zelot.wh_main_chs_inf_chosen_0 = {9, cost = 1500}
	unit_upgrades.chs_zelot.wh_main_chs_inf_chosen_1 = {9, cost = 1500}
	unit_upgrades.chs_zelot.wh_dlc01_chs_inf_chosen_2 = {9, cost = 1500}

	unit_upgrades.chs_nurgle_sons = unit_upgrades.chs_nurgle_sons or {}
	unit_upgrades.chs_nurgle_sons.wh_main_chs_inf_chosen_0 = {9, cost = 1500}
	unit_upgrades.chs_nurgle_sons.wh_main_chs_inf_chosen_1 = {9, cost = 1500}
	unit_upgrades.chs_nurgle_sons.wh_dlc01_chs_inf_chosen_2 = {9, cost = 1500}

	unit_upgrades.chs_khorne_berserk = unit_upgrades.chs_khorne_berserk or {}
	unit_upgrades.chs_khorne_berserk.wh_main_chs_inf_chosen_0 = {9, cost = 1500}
	unit_upgrades.chs_khorne_berserk.wh_main_chs_inf_chosen_1 = {9, cost = 1500}
	unit_upgrades.chs_khorne_berserk.wh_dlc01_chs_inf_chosen_2 = {9, cost = 1500}

	unit_upgrades.chs_slaanesh_bless = unit_upgrades.chs_slaanesh_bless or {}
	unit_upgrades.chs_slaanesh_bless.wh_main_chs_inf_chosen_0 = {9, cost = 1500}
	unit_upgrades.chs_slaanesh_bless.wh_main_chs_inf_chosen_1 = {9, cost = 1500}
	unit_upgrades.chs_slaanesh_bless.wh_dlc01_chs_inf_chosen_2 = {9, cost = 1500}

	unit_upgrades.chs_cultist_0 = unit_upgrades.chs_cultist_0 or {}
	unit_upgrades.chs_cultist_0.wh_main_chs_inf_chaos_warriors_0 = {3, cost = 750}
	unit_upgrades.chs_cultist_0.wh_main_chs_inf_chaos_warriors_1 = {4, cost = 750}
	unit_upgrades.chs_cultist_0.wh_dlc01_chs_inf_chaos_warriors_2 = {4, cost = 750}

	unit_upgrades.chs_cultist = unit_upgrades.chs_cultist or {}
	unit_upgrades.chs_cultist.wh_main_chs_inf_chaos_warriors_0 = {3, cost = 750}
	unit_upgrades.chs_cultist.wh_main_chs_inf_chaos_warriors_1 = {4, cost = 750}
	unit_upgrades.chs_cultist.wh_dlc01_chs_inf_chaos_warriors_2 = {4, cost = 750}

	unit_upgrades.wh_dlc08_nor_inf_marauder_hunters_1 = unit_upgrades.wh_dlc08_nor_inf_marauder_hunters_1 or {}
	unit_upgrades.wh_dlc08_nor_inf_marauder_hunters_1.nor_whaler = {4, cost = 750}

	unit_upgrades.wh_dlc07_brt_inf_men_at_arms_1 = unit_upgrades.wh_dlc07_brt_inf_men_at_arms_1 or {}
	unit_upgrades.wh_dlc07_brt_inf_men_at_arms_1.brt_macemen = {3, cost = 400}

	unit_upgrades.wh_main_brt_inf_peasant_bowmen = unit_upgrades.wh_main_brt_inf_peasant_bowmen or {}
	unit_upgrades.wh_main_brt_inf_peasant_bowmen.brt_crossbow = {3, cost = 400}
	unit_upgrades.wh_dlc07_brt_inf_peasant_bowmen_1 = unit_upgrades.wh_dlc07_brt_inf_peasant_bowmen_1 or {}
	unit_upgrades.wh_dlc07_brt_inf_peasant_bowmen_1.brt_crossbow = {2, cost = 400}
	unit_upgrades.wh_dlc07_brt_inf_peasant_bowmen_2 = unit_upgrades.wh_dlc07_brt_inf_peasant_bowmen_2 or {}
	unit_upgrades.wh_dlc07_brt_inf_peasant_bowmen_2.brt_crossbow = {2, cost = 400}

	unit_upgrades.wh_main_grn_inf_black_orcs = unit_upgrades.wh_main_grn_inf_black_orcs or {}
	unit_upgrades.wh_main_grn_inf_black_orcs.grn_black_orc_shields = {0, cost = 500, no_icon = true}
	unit_upgrades.grn_black_orc_shields = unit_upgrades.grn_black_orc_shields or {}
	unit_upgrades.grn_black_orc_shields.wh_main_grn_inf_black_orcs = {0, cost = 500, no_icon = true}

	unit_upgrades.wh_main_dwf_inf_thunderers_0 = unit_upgrades.wh_main_dwf_inf_thunderers_0 or {}
	unit_upgrades.wh_main_dwf_inf_thunderers_0.dwf_thunderers_1 = {0, cost = 500, no_icon = true}
	unit_upgrades.dwf_thunderers_1 = unit_upgrades.dwf_thunderers_1 or {}
	unit_upgrades.dwf_thunderers_1.wh_main_dwf_inf_thunderers_0 = {0, cost = 500, no_icon = true}

	unit_upgrades.wh_dlc04_emp_inf_flagellants_0 = unit_upgrades.wh_dlc04_emp_inf_flagellants_0 or {}
	unit_upgrades.wh_dlc04_emp_inf_flagellants_0.emp_flagellants_ext = {4, cost = 500}

	unit_upgrades.wh2_dlc12_lzd_inf_skink_red_crested_0 = unit_upgrades.wh2_dlc12_lzd_inf_skink_red_crested_0 or {}
	unit_upgrades.wh2_dlc12_lzd_inf_skink_red_crested_0.lzd_skinks_red = {3, cost = 300}
end)

--- When making a new submod rename the pack from pj_upgrade_units_sfo.pack and give it a new name.
--- Also rename the script from pj_upgrade_units_sfo.lua to a new name, we don't want duplicate scripts in the game.
--- Make sure the script you renamed still ends in ".lua"
