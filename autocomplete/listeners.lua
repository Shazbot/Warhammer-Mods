core:remove_listener('pj_unit_upgrades_on_mouse_over_LandUnit111')
core:add_listener(
	'pj_unit_upgrades_on_mouse_over_LandUnit111',
	'ComponentMouseOn',
	function(context)
		return context.string
	end,
	function(context)
	end,
	true
)

core:remove_listener('pj_unit_upgrades_on_clicked_retrain_button111')
core:add_listener(
	'pj_unit_upgrades_on_clicked_retrain_button111',
	'ComponentLClickUp',
	function(context)
		return context.string
	end,
	function(context)
	end,
	true
)

core:remove_listener("pj_outposts_on_settlement_captured_panel_opened11")
core:add_listener(
	"pj_outposts_on_settlement_captured_panel_opened11",
	"PanelOpenedCampaign",
	function(context)
		return context.string == "building_browser"
		-- settlement_panel
	end,
	function()
		cm:callback(function()
		end, 0.1)
	end,
	true
)

core:remove_listener("pj_selectable_start_SettlementSelected_Listener111")
core:add_listener(
	"pj_selectable_start_SettlementSelected_Listener111",
	"SettlementSelected",
	function(context)
		return true
	end,
	function(context)
		---@type CA_GARRISON_RESIDENCE
		local garrison = context:garrison_residence()
	end,
	true
)

core:remove_listener("pj_dogs_of_war_CharacterSelected_Listen111122er")
core:add_listener(
	"pj_dogs_of_war_CharacterSelected_Listen111122er",
	"CharacterSelected",
	function()
		return true
	end,
	function(context)
		---@type CA_CHAR
		local char = context:character()

		cm:replenish_action_points(cm:char_lookup_str(char))
	end,
	true
)
