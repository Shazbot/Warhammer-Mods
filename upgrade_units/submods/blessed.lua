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
	unit_upgrades.wh2_main_lzd_inf_saurus_spearmen_1 = unit_upgrades.wh2_main_lzd_inf_saurus_spearmen_1 or {}
	-- add new upgrade paths for wh2_main_lzd_inf_saurus_spearmen_1
	-- {4, cost = 500} means at experience rank 4, upgrade cost is 500
	unit_upgrades.wh2_main_lzd_inf_saurus_spearmen_1.wh2_main_lzd_inf_saurus_spearmen_blessed_1 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_inf_saurus_warriors_1 = unit_upgrades.wh2_main_lzd_inf_saurus_warriors_1 or {}
	unit_upgrades.wh2_main_lzd_inf_saurus_warriors_1.wh2_main_lzd_inf_saurus_warriors_blessed_1 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_inf_temple_guards = unit_upgrades.wh2_main_lzd_inf_temple_guards or {}
	unit_upgrades.wh2_main_lzd_inf_temple_guards.wh2_main_lzd_inf_temple_guards_blessed = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_inf_skink_skirmishers_0 = unit_upgrades.wh2_main_lzd_inf_skink_skirmishers_0 or {}
	unit_upgrades.wh2_main_lzd_inf_skink_skirmishers_0.wh2_main_lzd_inf_skink_skirmishers_blessed_0 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_inf_chameleon_skinks_0 = unit_upgrades.wh2_main_lzd_inf_chameleon_skinks_0 or {}
	unit_upgrades.wh2_main_lzd_inf_chameleon_skinks_0.wh2_main_lzd_inf_chameleon_skinks_blessed_0 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_cav_cold_one_spearriders_1 = unit_upgrades.wh2_main_lzd_cav_cold_one_spearriders_1 or {}
	unit_upgrades.wh2_main_lzd_cav_cold_one_spearriders_1.wh2_main_lzd_cav_cold_one_spearriders_blessed_0 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_cav_horned_ones_0 = unit_upgrades.wh2_main_lzd_cav_horned_ones_0 or {}
	unit_upgrades.wh2_main_lzd_cav_horned_ones_0.wh2_main_lzd_cav_horned_ones_blessed_0 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_mon_kroxigors = unit_upgrades.wh2_main_lzd_mon_kroxigors or {}
	unit_upgrades.wh2_main_lzd_mon_kroxigors.wh2_main_lzd_mon_kroxigors_blessed = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_mon_carnosaur_0 = unit_upgrades.wh2_main_lzd_mon_carnosaur_0 or {}
	unit_upgrades.wh2_main_lzd_mon_carnosaur_0.wh2_main_lzd_mon_carnosaur_blessed_0 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_cav_terradon_riders_1 = unit_upgrades.wh2_main_lzd_cav_terradon_riders_1 or {}
	unit_upgrades.wh2_main_lzd_cav_terradon_riders_1.wh2_main_lzd_cav_terradon_riders_blessed_1 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_mon_bastiladon_2 = unit_upgrades.wh2_main_lzd_mon_bastiladon_2 or {}
	unit_upgrades.wh2_main_lzd_mon_bastiladon_2.wh2_main_lzd_mon_bastiladon_blessed_2 = {4, cost = 500}

	unit_upgrades.wh2_main_lzd_mon_stegadon_1 = unit_upgrades.wh2_main_lzd_mon_stegadon_1 or {}
	unit_upgrades.wh2_main_lzd_mon_stegadon_1.wh2_main_lzd_mon_stegadon_blessed_1 = {4, cost = 500}
end)

--- When making a new submod rename the pack from pj_upgrade_units_sfo.pack and give it a new name.
--- Also rename the script from pj_upgrade_units_sfo.lua to a new name, we don't want duplicate scripts in the game.
--- Make sure the script you renamed still ends in ".lua"
