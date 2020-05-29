PJ_UPGRADE = PJ_UPGRADE or {}
local mod = PJ_UPGRADE

--- Return if table t contains a value val.
local function table_contains(t, val)
	for _, v in ipairs(t) do
		if v == val then
			return true
		end
	end
	return false
end

-- useful to have this during dev, safely ignore
local dout = _G.dout or function(...) end

-- useful to have this during dev, safely ignore
cm:remove_callback("pj_unit_upgrades_callback_id_1")
cm:remove_callback("pj_unit_upgrades_callback_id_2")

--- Multiply the unit cost with this to get the upgrade cost.
mod.upgrade_cost_multiplier = 0.33

--- Default cost of a unit for any cost calculations.
mod.default_unit_cost = 2500

--- Lookup: unit_key to unit recruitment cost.
mod.unit_cost = mod.unit_cost or {}
for unit_key, unit_cost in pairs(require("pj_upgrade_units/unit_to_cost")) do
	mod.unit_cost[unit_key] = unit_cost
end

local building_requirements = require("pj_upgrade_units/building_requirements")
mod.unit_recruitment_buildings = building_requirements.unit_to_buildings
mod.additional_unit_building_req = building_requirements.additional_building_requirement

--- Returns cost of upgrading a unit.
mod.get_upgrade_cost = function(unit_key)
	local upgrade_cost = mod.unit_cost[unit_key] or mod.default_unit_cost
	return math.floor(upgrade_cost*mod.upgrade_cost_multiplier + 0.5)
end

--- List of unit keys, units of same faction are sequential.
--- Used to build the human readable tree of unit upgrades.
--- Not used during normal execution.
mod.sorted_units = require("pj_upgrade_units/sorted_unit_keys")

--- Lookup table: main_unit_key to land_unit_key.
--- We need the land_unit_key to get localized unit names.
--- Otherwise we use main_unit_key to spawn units etc.
--- They are usually the same except in a few cases.
mod.main_unit_to_land_unit = require("pj_upgrade_units/main_unit_to_land_unit")

--- All the possible unit upgrades.
mod.unit_upgrades = mod.unit_upgrades or {}
for unit_key, unit_upgrades in pairs(require("pj_upgrade_units/unit_upgrades")) do
	if type(unit_upgrades) == "string" then
		unit_upgrades = {{unit_upgrades, 6}}
	end
	mod.unit_upgrades[unit_key] = unit_upgrades
end

--- Hide all the retrain buttons in the UI.
mod.hide_retrain_buttons = function()
	local button_group = find_uicomponent(
		core:get_ui_root(),
		"units_panel",
		"main_units_panel",
		"button_group_unit"
	)
	if button_group then
		local index = 1
		local retrain_button_id = "retrain_button_"..tostring(index)
		while(button_group:Find(retrain_button_id)) do
			local retrain = UIComponent(button_group:Find(retrain_button_id))
			retrain:SetVisible(false)
			index = index + 1
			retrain_button_id = "retrain_button_"..tostring(index)
		end
	end
end

--- Create or just show a retrain button
--- Index is an argument since we can have multiple retrain buttons in the UI.
--- Returns the button.
mod.add_retrain_button = function(index)
	local retrain = find_uicomponent(
		core:get_ui_root(),
		"units_panel",
		"main_units_panel",
		"button_group_unit",
		"button_retrain"
	)
	if retrain then
		local retrain_button_id = "retrain_button_"..tostring(index)
		local existing_retrain_address = UIComponent(retrain:Parent()):Find(retrain_button_id)
		local retrain_button
		if not existing_retrain_address then
			retrain_button = UIComponent(retrain:CopyComponent(retrain_button_id))
			retrain_button:SetVisible(true)
			retrain_button:SetState("active")
			retrain_button:SetImagePath("ui/skins/default/icon_objectives.png")
		else
			retrain_button = UIComponent(existing_retrain_address)
			retrain_button:SetVisible(true)
		end

		return retrain_button
	end
end

---@param faction CA_FACTION
mod.get_hp_lost_percent = function(faction)
	for substring, percent in pairs(mod.culture_hp_losses) do
		if string.find(faction:culture(), substring) then
			return percent
		end
	end

	return 0.3
end

--- Unit hp percentage loss on upgrade for each culture.
mod.culture_hp_losses = {
	bst = 0.4,
	def = 0.4,
	lzd = 0.3,
	hef = 0.3,
	skv = 0.4,
	brt = 0.6,
	dwf = 0.4,
	chs = 0.4,
	tmb = 0.3,
	grn = 0.5,
	nor = 0.3,
	wef = 0.3,
	emp = 0.3,
	cst = 0.25,
	vmp = 0.2,
}

---@param commander CA_CHAR
mod.damage_new_unit = function(commander, old_units, unit_health)
	local num_items_after = commander:military_force():unit_list():num_items()
	for i=0, num_items_after-1 do
		local unit_interface = commander:military_force():unit_list():item_at(i)
		if not table_contains(old_units, unit_interface) then
			local unit_hp = unit_health*0.01*mod.get_hp_lost_percent(commander:faction())
			cm:set_unit_hp_to_unary_of_maximum(unit_interface, unit_hp)
			local commander_cqi = commander:command_queue_index()
			CampaignUI.TriggerCampaignScriptEvent(cm:get_faction(cm:get_local_faction(true)):command_queue_index(), "pj_unit_upgrades_set_unit_hp|"..tostring(commander_cqi).."|"..tostring(i).."|"..tostring(unit_hp))
		end
	end
end

local digForComponent = nil
digForComponent = function(startingComponent, componentName)
	local childCount = startingComponent:ChildCount()
	for i=0, childCount-1  do
			local child = UIComponent(startingComponent:Find(i))
			if child:Id() == componentName then
					return child
			else
					local dugComponent = digForComponent(child, componentName)
					if dugComponent then
							return dugComponent
					end
			end
	end
	return nil
end

--- Refresh the whole army UI.
--- We close the whole campaign UI and simulate selecting the commander.
mod.refresh_army_UI = function()
	-- find and open the lords dropdown
	local tab_units = find_uicomponent(
		core:get_ui_root(),
		"layout","bar_small_top", "TabGroup", "tab_units"
	)

	if tab_units:CurrentState() ~= "selected" then
		tab_units:SimulateLClick()
	end

	local units_dropdown = digForComponent(core:get_ui_root(), "units_dropdown")
	---@type CA_UIC
	local list_clip = digForComponent(units_dropdown, "list_clip")
	for i=0, list_clip:ChildCount()-1 do
		local comp = UIComponent(list_clip:Find(i))
		if comp:Id() == "list_box" then
			for j=0, comp:ChildCount()-1 do
				local char_row = UIComponent(comp:Find(j))
				local char_name_label = digForComponent(char_row, "dy_character_name")
				local char_name = char_name_label and char_name_label:GetStateText()
				if char_name == mod.commander_name then
					CampaignUI.ClearSelection()
					char_row:SimulateLClick()
					return
				end
			end
		end
	end
end

local function binding_iter(binding)
	local pos = 0
	local num_items = binding:num_items()
	return function()
			if pos < num_items then
					local item = binding:item_at(pos)
					pos = pos + 1
					return item
			end
			return
	end
end

mod.build_region_data = function()
	mod.faction_building_state = {} -- reset faction building state
	---@type CA_REGION
	for region in binding_iter(cm:get_faction(cm:get_local_faction(true)):region_list()) do
		local province_name = region:province_name()
		mod.faction_building_state[province_name] = mod.faction_building_state[province_name] or {}

		---@type CA_SLOT
		for slot in binding_iter(region:slot_list()) do
			if slot and slot:has_building() then
				mod.faction_building_state[province_name][slot:building():name()] = true
			end
		end
	end
end

mod.is_unit_recruitable_in_province = function(unit_key, province_name)
	local unit_recruitment_buildings = mod.unit_recruitment_buildings[unit_key] or {}
	local additional_unit_building_req = mod.additional_unit_building_req[unit_key] or {}

	local primary_recruitment_building_exists = #unit_recruitment_buildings == 0 -- if no requirement just set it true
	local additional_unit_building_req_exists = #additional_unit_building_req == 0 -- if no requirement just set it true

	-- if we have no defined building requirements for the unit then we say the unit isn't recruitable in province
	if primary_recruitment_building_exists and additional_unit_building_req_exists then
		return false
	end

	for _, building_name in ipairs(unit_recruitment_buildings) do
		primary_recruitment_building_exists = primary_recruitment_building_exists
			or mod.faction_building_state[province_name] and mod.faction_building_state[province_name][building_name]
	end
	for _, building_name in ipairs(additional_unit_building_req) do
		additional_unit_building_req_exists = additional_unit_building_req_exists
			or mod.faction_building_state[province_name] and mod.faction_building_state[province_name][building_name]
	end

	return primary_recruitment_building_exists and additional_unit_building_req_exists
end

mod.is_unit_recruitable_anywhere = function(unit_key)
	-- loop through all the provinces the local faction has a region in
	for province_name, _ in pairs(mod.faction_building_state) do
		if mod.is_unit_recruitable_in_province(unit_key, province_name) then
			return true
		end
	end

	return false
end

--- Repeat this to update the UI tooltips.
mod.update_UI = function()
	mod.hide_retrain_buttons()

	if not mod.commander_cqi then
		return
	end

	local commander = cm:get_character_by_cqi(mod.commander_cqi)
	if not commander or commander:is_null_interface() then
		return
	end

	local in_foreign_territory = false
	local is_near_settlement = false
	if commander:region():owning_faction():name() ~= commander:faction():name() then
		in_foreign_territory = true
	end

	local settlement = commander:region():settlement()
	local x,y = settlement:logical_position_x(), settlement:logical_position_y()
	local dist_sqr = distance_squared(x,y , commander:logical_position_x(), commander:logical_position_y())
	if dist_sqr <= 25 then
		is_near_settlement = true
	end

	local is_horde = string.find(commander:military_force():force_type():key(), "HORDE")
	if is_horde then
		in_foreign_territory = false
		is_near_settlement = true
	end

	if not mod.unit_index then
		return
	end

	local unit_list = commander:military_force():unit_list()
	local num_agents = mod.get_num_agents()

	if unit_list:num_items() <= mod.unit_index+num_agents then
		return
	end

	---@type CA_UNIT
	local unit_to_upgrade = unit_list:item_at(mod.unit_index+num_agents)
	if not unit_to_upgrade or unit_to_upgrade:is_null_interface() then
		return
	end

	local unit_rank = mod.unit_rank
	local province_name = commander:region():province_name()

	local unit_key_from = unit_to_upgrade:unit_key()
	local unit_upgrades = mod.get_unit_upgrades(unit_key_from)
	for i, unit_upgrade in ipairs(unit_upgrades) do
		local unit_key_to = unit_upgrade[1]
		local unit_upgrade_rank = unit_upgrade[2]
		local retrain_button = mod.add_retrain_button(i)
		if retrain_button then
			local is_pooled_res_adequate = true

			local localized_pooled_res = ""
			if unit_upgrade.pooled_res and unit_upgrade.pooled_res_amount then
				localized_pooled_res = effect.get_localised_string("pooled_resources_display_name_"..unit_upgrade.pooled_res)
				local pooled_res = cm:get_faction(cm:get_local_faction(true)):pooled_resource(unit_upgrade.pooled_res)
				if pooled_res and pooled_res:value() < unit_upgrade.pooled_res_amount then
					is_pooled_res_adequate = false
				end
			end

			local cost_formula = function(x) return 2*math.max(250, x) end
			local upgrade_rank_adjustment = 0
			if mod.is_unit_recruitable_in_province(unit_key_to, province_name) then
				upgrade_rank_adjustment = -2
				cost_formula = function(x) return math.max(100, x) end
			elseif mod.is_unit_recruitable_anywhere(unit_key_to) then
				upgrade_rank_adjustment = -1
				cost_formula = function(x) return 1.5*math.max(200, x) end
			end
			local calculated_upgrade_cost = cost_formula(mod.get_upgrade_cost(unit_key_to) - mod.get_upgrade_cost(unit_key_from))
			-- if there is a flat cost set in the upgrade data use that, otherwise calculate it using a formula
			local upgrade_cost = unit_upgrade.cost or calculated_upgrade_cost
			local are_funds_adequate = commander:faction():treasury() >= upgrade_cost
			mod.active_upgrade_cost = upgrade_cost

			local new_tooltip_text =
				"Can upgrade to "
				..effect.get_localised_string("land_units_onscreen_name_"..(mod.main_unit_to_land_unit[unit_key_to] or unit_key_to))
				.." at rank "
				..tostring(math.max(0, unit_upgrade_rank+upgrade_rank_adjustment))
				.."."

			if unit_rank < unit_upgrade_rank+upgrade_rank_adjustment then
				new_tooltip_text = new_tooltip_text.."\nCurrent rank is "..tostring(unit_rank).."."
			end

			new_tooltip_text = new_tooltip_text.."\nCosts "..tostring(upgrade_cost).."[[img:icon_money]][[/img]]."
			if unit_upgrade.pooled_res and unit_upgrade.pooled_res_amount then
				local res_upgrade_cost = unit_upgrade.pooled_res_amount
				if unit_upgrade.pooled_res == "dwf_oathgold" then
					new_tooltip_text = new_tooltip_text.."\nCosts "..tostring(res_upgrade_cost).."[[img:icon_oathgold]][[/img]]."
				else
					new_tooltip_text = new_tooltip_text.."\nCosts "..tostring(res_upgrade_cost).." "..localized_pooled_res.."."
				end
			end

			if in_foreign_territory then
				new_tooltip_text = new_tooltip_text.."\n[[col:red]]You must be in a region you own.[[/col]]"
			end
			if not is_near_settlement then
				new_tooltip_text = new_tooltip_text.."\n[[col:red]]You must be close to a city to upgrade.[[/col]]"
			end
			if not are_funds_adequate then
				new_tooltip_text = new_tooltip_text.."\n[[col:red]]You must have "..tostring(upgrade_cost).."[[img:icon_money]][[/img]] to upgrade.[[/col]]"
			end
			if not is_pooled_res_adequate then
				local res_upgrade_cost = unit_upgrade.pooled_res_amount
				if unit_upgrade.pooled_res == "dwf_oathgold" then
					new_tooltip_text = new_tooltip_text.."\n[[col:red]]You must have "..tostring(res_upgrade_cost).."[[img:icon_oathgold]][[/img]] to upgrade.[[/col]]"
				else
					new_tooltip_text = new_tooltip_text.."\n[[col:red]]You must have "..tostring(res_upgrade_cost).." "..localized_pooled_res.." to upgrade.[[/col]]"
				end
			end

			retrain_button:SetTooltipText(new_tooltip_text, true)

			if unit_rank < unit_upgrade_rank+upgrade_rank_adjustment
				or in_foreign_territory
				or not is_near_settlement
				or not are_funds_adequate
				or not is_pooled_res_adequate
			then
				retrain_button:SetState("inactive")
			else
				retrain_button:SetState("active")
			end
		end
	end

	-- remember the unit disband button so we can click it through code
	local disband = find_uicomponent(core:get_ui_root(),
		"units_panel",
		"main_units_panel",
		"button_group_unit",
		"button_disband"
	)
	if disband then
		mod.disband = disband
	end
end

--- Create a new unit in the commander army.
--- Use unit_health to scale the starting hp of the unit.
--- To find the interface of the new unit we compare all the interfaces before giving
--- the unit to those after.
--- If at 20 units we have to disband then add unit, otherwise we add unit, then disband.
mod.add_new_unit = function(unit_key, commander, unit_health, unit_upgrade)
	if not commander or commander:is_null_interface() then
		return
	end

	local already_disbanded = false
	local delay_time = 0.1
	local starting_num_items = commander:military_force():unit_list():num_items()
	if starting_num_items == 20 then
		already_disbanded = true
		delay_time = 1
		mod.disband:SimulateLClick()
	end

	cm:callback(
		function()
			local old_units = {}
			local num_items = commander:military_force():unit_list():num_items()
			for i=0, num_items-1 do
				local unit_interface = commander:military_force():unit_list():item_at(i)
				table.insert(old_units, unit_interface)
			end

			local cost = mod.active_upgrade_cost or 0
			local pooled_res = unit_upgrade.pooled_res or "NONE"
			local res_cost = unit_upgrade.pooled_res and unit_upgrade.pooled_res_amount or 0
			local no_hp_loss = unit_upgrade.no_hp_loss

			local commander_cqi = commander:command_queue_index()
			local faction_cqi = cm:get_faction(cm:get_local_faction(true)):command_queue_index()

			local is_to_agent_upgrade = unit_upgrade.agent_type and unit_upgrade.agent_subtype
			if is_to_agent_upgrade then
				local agent_type = unit_upgrade.agent_type
				local agent_subtype = unit_upgrade.agent_subtype
				local pos_x, pos_y = cm:find_valid_spawn_location_for_character_from_character(cm:get_local_faction(true), cm:char_lookup_str(commander), true, 1)
				CampaignUI.TriggerCampaignScriptEvent(faction_cqi, "pj_unit_upgrades_grant_agent|"..tostring(commander_cqi).."|"..agent_type.."|"..agent_subtype.."|"..tostring(pos_x).."|"..tostring(pos_y).."|"..tostring(cost).."|"..pooled_res.."|"..tostring(res_cost))
			else
				cm:grant_unit_to_character(cm:char_lookup_str(commander), unit_key)
				CampaignUI.TriggerCampaignScriptEvent(faction_cqi, "pj_unit_upgrades_grant_unit|"..tostring(commander_cqi).."|"..unit_key.."|"..tostring(cost).."|"..pooled_res.."|"..tostring(res_cost))
			end

			cm:callback(
				function()
					if not no_hp_loss and not is_to_agent_upgrade then
						mod.damage_new_unit(commander, old_units, unit_health)
					end

					if not already_disbanded then
						mod.disband:SimulateLClick()
					else
						mod.refresh_army_UI()
					end
				end,
				0.1
			)
		end,
		delay_time
	)
end

--- Show, creating if needed, the upgrade icon on unit cards.
mod.show_upgrade_icon = function(unit_index)
	local our_upgradable_icon = find_uicomponent(
		core:get_ui_root(),
		"units_panel",
		"main_units_panel",
		"units",
		"LandUnit "..tostring(unit_index),
		"campaign",
		"pj_upgradable_icon"
	)
	if not our_upgradable_icon then
		local CA_upgradable_icon = find_uicomponent(
			core:get_ui_root(),
			"units_panel",
			"main_units_panel",
			"units",
			"LandUnit "..tostring(unit_index),
			"campaign",
			"upgradable"
		)
		if CA_upgradable_icon then
			our_upgradable_icon = UIComponent(CA_upgradable_icon:CopyComponent("pj_upgradable_icon"))
			our_upgradable_icon:ResizeTextResizingComponentToInitialSize(20,20)
			our_upgradable_icon:SetImagePath("ui/skins/default/icon_reputation_star_gold.png")
			local x,y = our_upgradable_icon:Position()
			our_upgradable_icon:MoveTo(x-2, y+20)
		end
	end

	if our_upgradable_icon then
		our_upgradable_icon:SetVisible(true)
	end
end

--- Return a list of {unit_key, required_rank} sublists of possible unit_key upgrades.
--- Do some rewriting of the the unit_upgrades table:
--- 	if it's just a main_unit string make a {main_unit, 6} subtable
--- 	if it's a hash part main_unit = {} turn it into an array {"main_unit", 6}
mod.get_unit_upgrades = function(unit_key)
	local unit_upgrades = mod.unit_upgrades[unit_key] or {}
	if unit_upgrades and type(unit_upgrades) == "string" then
		unit_upgrades = {{unit_upgrades, 6}}
	end
	--- convert the hash portion of the table to an array portion
	for k,v in pairs(unit_upgrades) do
		if type(k) == "string" then
			table.insert(v, 1, k)
			table.insert(unit_upgrades, v)
			unit_upgrades[k] = nil
		end
	end
	mod.unit_upgrades[unit_key] = unit_upgrades
	return unit_upgrades or {}
end

--- Get number of agents in an army by scraping the UI.
mod.get_num_agents = function()
	local index = 0
	while(true) do
		local agent = find_uicomponent(
			core:get_ui_root(),
			"units_panel",
			"main_units_panel",
			"units",
			"Agent "..tostring(index)
		)
		if not agent then
			return index
		end
		index = index + 1
		if index > 30 then
			return 0
		end
	end
	return 0
end

--- Parse the rank tooltip in non-english localized games.
--- Returns rank as a number, defaults to 0.
mod.get_rank_from_non_english_tooltip = function(foreign_tooltip)
	local unit_rank = 0
	local rank_start_index = nil
	for i=9, 0, -1 do
		rank_start_index = rank_start_index or foreign_tooltip:find(tostring(i))
	end
	if rank_start_index then
		local rank_substring = foreign_tooltip:sub(rank_start_index, rank_start_index)
		unit_rank = tonumber(rank_substring)
	end
	return unit_rank or 0
end

mod.update_upgrade_icons = function()
	if not mod.commander_cqi then
		return
	end

	-- loop through all the unit cards
	local unit_index = 0
	local num_agents = mod.get_num_agents()
	---@type CA_CHAR
	local char = cm:get_character_by_cqi(mod.commander_cqi)
	local province_name = char:region():province_name()
	local unit_list = char:military_force():unit_list()
	local army_size = unit_list:num_items()

	while(true) do
		local exp = find_uicomponent(
			core:get_ui_root(),
			"units_panel",
			"main_units_panel",
			"units",
			"LandUnit "..tostring(unit_index),
			"experience"
		)

		if not exp then
			break
		end
		if unit_index > 50 then
			cm:remove_callback("pj_unit_upgrades_callback_id_2")
			break
		end

		local show_upgrade_icon = false
		local exp_text = exp:GetTooltipText()
		if exp_text then
			local unit_rank = 0
			if exp_text ~= "" then
				local unit_rank_str = exp_text:gsub("Unit rank ", "")
				unit_rank = tonumber(unit_rank_str) or 0

				-- if we didn't get a unit rank run this non-english tooltip check
				if unit_rank == 0 then
					unit_rank = mod.get_rank_from_non_english_tooltip(exp_text)
				end
			end
			unit_rank = unit_rank or 0

			if army_size > unit_index+num_agents then
				local unit_to_upgrade = unit_list:item_at(unit_index+num_agents)
				if unit_to_upgrade and not unit_to_upgrade:is_null_interface() then
					local unit_key = unit_to_upgrade:unit_key()

					local unit_upgrades = mod.get_unit_upgrades(unit_key)
					for _, unit_upgrade in ipairs(unit_upgrades) do
						local unit_key_to = unit_upgrade[1]
						local upgrade_rank_adjustment = 0
						if mod.is_unit_recruitable_in_province(unit_key_to, province_name) then
							upgrade_rank_adjustment = -2
						elseif mod.is_unit_recruitable_anywhere(unit_key_to) then
							upgrade_rank_adjustment = -1
						end

						if unit_upgrade[2]+upgrade_rank_adjustment <= unit_rank and not unit_upgrade.no_icon then
							show_upgrade_icon = true

							-- check pooled resource requirement
							if unit_upgrade.pooled_res and unit_upgrade.pooled_res_amount then
								local pooled_res = cm:get_faction(cm:get_local_faction(true)):pooled_resource(unit_upgrade.pooled_res)
								if pooled_res and pooled_res:value() < unit_upgrade.pooled_res_amount then
									show_upgrade_icon = false
								end
							end
						end
					end
				end
			end
		end

		if show_upgrade_icon then
			mod.show_upgrade_icon(unit_index)
		end

		unit_index = unit_index + 1
	end
end

core:remove_listener("pj_unit_upgrades_on_script_event_set_unit_hp")
core:add_listener(
	"pj_unit_upgrades_on_script_event_set_unit_hp",
	"UITriggerScriptEvent",
	function(context)
			return context:trigger():starts_with("pj_unit_upgrades_set_unit_hp")
	end,
	function(context)
		local faction_cqi = context:faction_cqi()
		if cm:get_faction(cm:get_local_faction(true)):command_queue_index() == faction_cqi then
			return
		end

		local hash_without_prefix = context:trigger():gsub("pj_unit_upgrades_set_unit_hp|", "")

		local args = {}
		hash_without_prefix:gsub("([^|]+)", function(w)
				if (type(w)=="string") then
						table.insert(args, w)
				end
		end)

		local commander_cqi, unit_index, unit_hp = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])
		local commander =  cm:get_character_by_cqi(commander_cqi)
		local unit_interface = commander:military_force():unit_list():item_at(unit_index)
		cm:set_unit_hp_to_unary_of_maximum(unit_interface, unit_hp)
  end,
  true
)

mod.get_culture_id = function(faction_name)
	local faction_culture = cm:get_faction(faction_name):culture()
	for infix, culture_id in pairs(PJDOW.culture_to_id) do
		if string.find(faction_culture, "_"..infix.."_") then
			culture_id = tostring(culture_id)

			if string.find(faction_name, "_nor_") then
				culture_id = "198"
			end
			if faction_name == "wh_main_teb_tilea" then
				culture_id = "214"
			end
			if faction_name == "wh_main_ksl_kislev" then
				culture_id = "211"
			end

			return culture_id
		end
	end
end

mod.culture_id_to_names = require("pj_upgrade_units/culture_id_to_names")

mod.get_random_name = function(culture_id)
	local forename = ""
	local surname = ""

	if culture_id then
		local culture_names = mod.culture_id_to_names[culture_id]
		if culture_names then
			local forenames = culture_names["forename"]
			local surnames = culture_names["family_name"]
			if forenames then
				forename = "names_name_"..tostring(forenames[math.random(#forenames)][5])
			end
			if surnames then
				surname = "names_name_"..tostring(surnames[math.random(#surnames)][5])
			end
		end
	end

	return forename, surname
end

core:remove_listener("pj_unit_upgrades_on_script_event_grant_agent")
core:add_listener(
	"pj_unit_upgrades_on_script_event_grant_agent",
	"UITriggerScriptEvent",
	function(context)
		return context:trigger():starts_with("pj_unit_upgrades_grant_agent")
	end,
	function(context)
		local faction_cqi = context:faction_cqi()

		local hash_without_prefix = context:trigger():gsub("pj_unit_upgrades_grant_agent|", "")

		local args = {}
		hash_without_prefix:gsub("([^|]+)", function(w)
			if (type(w)=="string") then
				table.insert(args, w)
			end
		end)

		local commander_cqi, agent_type, agent_subtype, pos_x, pos_y, cost, pooled_res_key, res_cost =
			tonumber(args[1]), args[2], args[3], tonumber(args[4]), tonumber(args[5]), tonumber(args[6]), tonumber(args[7]), tonumber(args[8])

		local faction = cm:get_character_by_cqi(commander_cqi):faction()
		local faction_name = faction:name()
		local char = cm:get_character_by_cqi(commander_cqi)

		local culture_id = mod.get_culture_id(faction_name)
		local forename, surname = mod.get_random_name(culture_id)
		if agent_type == "general" then
			cm:callback(function()
				cm:create_force_with_general(faction_name, "", "", pos_x, pos_y, agent_type, agent_subtype, forename, surname, "", "", false)
			end, 1)
		else
			cm:callback(function()
				cm:spawn_agent_at_military_force(faction, char:military_force(), agent_type, agent_subtype)
			end, 1)
		end

		cm:treasury_mod(faction:name(), -cost)
		if pooled_res_key and pooled_res_key ~= "NONE" and res_cost and res_cost ~= 0 then
			cm:pooled_resource_mod(faction:command_queue_index(), pooled_res_key, "wh2_main_resource_factor_missions", -res_cost)
		end
	end,
	true
)

core:remove_listener("pj_unit_upgrades_on_script_event_grant_unit")
core:add_listener(
	"pj_unit_upgrades_on_script_event_grant_unit",
	"UITriggerScriptEvent",
	function(context)
			return context:trigger():starts_with("pj_unit_upgrades_grant_unit")
	end,
	function(context)
		local faction_cqi = context:faction_cqi()

		local hash_without_prefix = context:trigger():gsub("pj_unit_upgrades_grant_unit|", "")

		local args = {}
		hash_without_prefix:gsub("([^|]+)", function(w)
			if (type(w)=="string") then
				table.insert(args, w)
			end
		end)

		local commander_cqi, unit_key, cost, pooled_res_key, res_cost = tonumber(args[1]), args[2], tonumber(args[3]), args[4], tonumber(args[5])

		local faction = cm:get_character_by_cqi(commander_cqi):faction()
		cm:treasury_mod(faction:name(), -cost)
		if pooled_res_key and pooled_res_key ~= "NONE" and res_cost and res_cost ~= 0 then
			cm:pooled_resource_mod(faction:command_queue_index(), pooled_res_key, "wh2_main_resource_factor_missions", -res_cost)
		end

		if cm:get_faction(cm:get_local_faction(true)):command_queue_index() == faction_cqi then
			return
		end

		cm:grant_unit_to_character(cm:char_lookup_str(commander_cqi), unit_key)
	end,
	true
)

mod.first_tick_cb = function()
	--- When we click the unit upgrade button.
	core:remove_listener('pj_unit_upgrades_on_clicked_retrain_button')
	core:add_listener(
	'pj_unit_upgrades_on_clicked_retrain_button',
	'ComponentLClickUp',
	function(context)
		return context.string:starts_with("retrain_button_") and cm:whose_turn_is_it() == cm:get_local_faction(true)
	end,
	function(context)
		if not mod.commander_cqi then
			return
		end

		local retrain_button_index = context.string:gsub("retrain_button_", "")
		retrain_button_index = tonumber(retrain_button_index)
		if not retrain_button_index then
			dout("no retrain_button_index")
			return
		end

		-- get the current hp of the unit we're gonna upgrade, save it for later
		---@type CA_UNIT
		local unit_to_upgrade
		local commander = cm:get_character_by_cqi(mod.commander_cqi)
		if commander and not commander:is_null_interface() then
			unit_to_upgrade = commander:military_force():unit_list():item_at(mod.unit_index+mod.get_num_agents())
			if unit_to_upgrade and not unit_to_upgrade:is_null_interface() then
				mod.unit_health = unit_to_upgrade:percentage_proportion_of_full_strength()
			end
		end

		if not unit_to_upgrade then
			dout("no unit_to_upgrade")
			return
		end

		local unit_upgrades = mod.get_unit_upgrades(unit_to_upgrade:unit_key())
		local unit_upgrade = unit_upgrades[retrain_button_index]
		if not unit_upgrade then
			dout("no unit_upgrade")
			return
		end
		local new_unit_key = unit_upgrade[1]
		if not new_unit_key then
			dout("no new_unit_key")
			return
		end

		mod.add_new_unit(new_unit_key, commander, mod.unit_health, unit_upgrade)

		--- disband the unit by simulating the steps needed for the disband unit button
		--- keep running this callback until the disband dialogue box pops up
		cm:repeat_callback(
			function()
				local confirm = find_uicomponent(core:get_ui_root(),
				"dialogue_box",
				-- "both_group", "button_cancel"
				"ok_group", "button_tick"
				)
				if confirm then
					cm:remove_callback("pj_upgrade_repeat_disband_unit_confirmation")
					confirm:SimulateLClick()
				end
			end,
			0.1,
			"pj_upgrade_repeat_disband_unit_confirmation"
		)
	end,
	true
	)

	--- Stop the repeating UI update when we unselect the army.
	core:remove_listener('pj_unit_upgrades_on_closed_units_panel')
	core:add_listener(
		'pj_unit_upgrades_on_closed_units_panel',
		'PanelClosedCampaign',
		function(context)
			return context.string == "units_panel"
		end,
		function()
			cm:remove_callback("pj_unit_upgrades_callback_id_1")
			cm:remove_callback("pj_unit_upgrades_callback_id_2")
			cm:remove_callback("pj_upgrade_repeat_disband_unit_confirmation")
		end,
		true
	)

	core:remove_listener('pj_unit_upgrades_on_mouse_over_LandUnit')
	core:add_listener(
		'pj_unit_upgrades_on_mouse_over_LandUnit',
		'ComponentMouseOn',
		function(context)
			if context.string:starts_with("Agent ") then
				mod.hide_retrain_buttons()
				mod.unit_index = nil
				return false
			end
			local is_land_unit = context.string:starts_with("LandUnit ")
			return is_land_unit
		end,
		function(context)
			local unit_index_str = context.string:gsub("LandUnit ", "")
			local unit_index = tonumber(unit_index_str)
			mod.unit_index = unit_index
			mod.unit_rank = 0

			mod.hide_retrain_buttons()

			local exp = find_uicomponent(core:get_ui_root(),
			"units_panel",
			"main_units_panel",
			"units",
			"LandUnit "..tostring(unit_index),
			"experience"
			)
			if exp then
				local exp_text = exp:GetTooltipText()
				if exp_text then
					if exp_text ~= "" then
						local unit_rank_str = exp_text:gsub("Unit rank ", "")
						mod.unit_rank = tonumber(unit_rank_str)
						if not mod.unit_rank then
							mod.unit_rank = mod.get_rank_from_non_english_tooltip(exp_text)
						end
						if not mod.unit_rank then
							mod.unit_rank = 0
						end
					end
				end
			end

			mod.update_UI()
			cm:remove_callback("pj_unit_upgrades_callback_id_1")
			cm:repeat_callback(function() mod.update_UI() end, 0.1, "pj_unit_upgrades_callback_id_1")
		end,
		true
	)

	core:remove_listener('pj_unit_upgrades_on_character_selected')
	core:add_listener(
		'pj_unit_upgrades_on_character_selected',
		'CharacterSelected',
		function()
			return true
		end,
		function(context)
			---@type CA_CHAR
			local char = context:character()

			local is_player_char = char:faction():name() == cm:get_local_faction(true)
				and cm:whose_turn_is_it() == cm:get_local_faction(true)
			if not is_player_char then
				mod.hide_retrain_buttons()
				return
			end

			mod.commander_cqi = char:cqi()

			mod.build_region_data()

			cm:callback(function()
				local army_name_label = find_uicomponent(
					core:get_ui_root(),
					"units_panel",
					"main_units_panel",
					"header",
					"button_focus",
					"dy_txt"
				)
				mod.commander_name = army_name_label and army_name_label:GetStateText()
			end, 0.5)

			mod.update_upgrade_icons()
			cm:remove_callback("pj_unit_upgrades_callback_id_2")
			cm:repeat_callback(function() mod.update_upgrade_icons() end, 0.1, "pj_unit_upgrades_callback_id_2")
		end,
		true
	)
end
cm:add_first_tick_callback(mod.first_tick_cb)

--- We'll call first_tick_cb directly if hot-reloading during dev.
--- We're checking for presence of execute external lua file in the traceback.
if debug.traceback():find('pj_loadfile') then
	mod.first_tick_cb()
end

--- Dump the upgrades table to unit_upgrades.txt, in a human readable format.
--- For debugging, not called normally.
mod.dump_upgrades = function()
	local out = ""
	for _, unit_key in ipairs(mod.sorted_units) do
		local localized_unit = effect.get_localised_string("land_units_onscreen_name_"..(mod.main_unit_to_land_unit[unit_key] or unit_key))
		if localized_unit == "" then
			dout(unit_key)
		end
		out=out..tostring(localized_unit)
		out=out.."\n"
		local upgrades = mod.get_unit_upgrades(unit_key)
		for _, upgrade in ipairs(upgrades) do
			out=out.."\t"..tostring(effect.get_localised_string("land_units_onscreen_name_"..(mod.main_unit_to_land_unit[upgrade[1]] or upgrade[1])))
			out=out.." "..tostring(upgrade[2])
			if upgrade.no_icon then
				out=out.." (not showing upgrade icon)"
			end
			out=out.."\n"
		end
	end

	local file = io.open('unit_upgrades.txt', 'w')
	file:write(out)
	file:close()
end

--- Wrap all the functions calls with an out, so we can trace function calls.
--- For debugging, not called normally.
mod.wrap_functions = function()
	-- don't need this if overwriting every function from exec
	-- if mod.are_functions_wrapped then
	-- 	return
	-- end

	for k, v in pairs(mod) do
		if type(v) == "function" then
			mod[k] = function(...)
					out("PJ_UPGRADE UNITS: calling "..k)
					return v(...)
				end
		end
	end

	mod.are_functions_wrapped = true
end
