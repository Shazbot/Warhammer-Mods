---@class CA_SETTLEMENT_CONTEXT
CA_SETTLEMENT_CONTEXT = {}

---@return CA_GARRISON_RESIDENCE
function CA_SETTLEMENT_CONTEXT:garrison_residence() end

---@class CA_CHAR_CONTEXT
CA_CHAR_CONTEXT = {}

---@return CA_CHAR
function CA_CHAR_CONTEXT:character() end

---@class CA_UIC
CA_UIC = {}

---@return CA_Component
function CA_UIC:Address() end

---@param pointer CA_Component
function CA_UIC:Adopt(pointer) end

---@return number
function CA_UIC:ChildCount() end

function CA_UIC:ClearSound() end

---@alias CA_UIC_ADDRESS number
---@alias BUTTON_STATE string

---@param name string
---@param path string
---@return CA_UIC_ADDRESS
function CA_UIC:CreateComponent(name, path) end

---@param name string
---@return CA_UIC_ADDRESS
function CA_UIC:CopyComponent(name) end

---@return BUTTON_STATE
function CA_UIC:CurrentState() end

function CA_UIC:DestroyChildren() end

---@return number, number
function CA_UIC:Dimensions() end

---@param arg number | string
---@return CA_UIC_ADDRESS
function CA_UIC:Find(arg) end

---@return string
function CA_UIC:GetTooltipText() end

---@return string
function CA_UIC:Id() end

---@param x number
---@param y number
function CA_UIC:MoveTo(x, y) end

---@return CA_Component
function CA_UIC:Parent() end

---@return number, number
function CA_UIC:Position() end

---@param w number
---@param h number
function CA_UIC:Resize(w, h) end

---@param interactive boolean
function CA_UIC:SetInteractive(interactive) end

---@param opacity number
function CA_UIC:SetOpacity(opacity) end

---@param state BUTTON_STATE
function CA_UIC:SetState(state) end

---@param text string
function CA_UIC:SetStateText(text) end

---@param visible boolean
function CA_UIC:SetVisible(visible) end

---@param disabled boolean
function CA_UIC:SetDisabled(disabled) end

---@param technique string | number
---@param unknown boolean
function CA_UIC:ShaderTechniqueSet(technique, unknown) end

---@param p1 number
---@param p2 number
---@param p3 number
---@param p4 number
---@param unknown boolean
function CA_UIC:ShaderVarsSet(p1, p2, p3, p4, unknown) end

function CA_UIC:SimulateClick() end

function CA_UIC:SimulateMouseOn() end

---@return boolean
function CA_UIC:Visible() end

---@param path string
function CA_UIC:SetImage(path) end

---@param state boolean
function CA_UIC:SetCanResizeHeight(state) end

---@param state boolean
function CA_UIC:SetCanResizeWidth(state) end

---@param tooltip string
---@param state boolean?
function CA_UIC:SetTooltipText(tooltip, state) end

---@return string
function CA_UIC:GetStateText() end

---@param priority number
function CA_UIC:PropagatePriority(priority) end

---@return number
function CA_UIC:Priority() end

---@return number, number
function CA_UIC:Bounds() end

---@return number
function CA_UIC:Height() end

---@return number
function CA_UIC:Width() end

---@param unknown number
---@param rotation number
function CA_UIC:SetImageRotation(unknown, rotation) end

---@param width number
---@param height number
function CA_UIC:ResizeTextResizingComponentToInitialSize(width, height) end

function CA_UIC:SimulateLClick() end

---@param keyString string
function CA_UIC:SimulateKey(keyString) end

---@return number
function CA_UIC:DockingPoint() end

---@param dock_point number
function CA_UIC:SetDockingPoint(dock_point) end

---@param x_offset number
---@param y_offset number
function CA_UIC:SetDockOffset(x_offset, y_offset) end

---@return number, number
function CA_UIC:GetDockOffset() end

---@param index number
---@return string
function CA_UIC:GetImagePath(index) end

---@param path string
---@param index number
function CA_UIC:SetImagePath(path, index) end

---@return number
function CA_UIC:NumImages() end

---@class CM
CM = {}
cm = CM

---@param callback function
---#param interval integer
---@param optional_name string
function CM:callback(callback, interval, optional_name) end

---@param callback function
---#param interval integer
---@param optional_name string
function CM:repeat_callback(callback, interval, optional_name) end

---@param name string
function CM:remove_callback(name) end

---@return CA_GAME
function CM:get_game_interface() end

---@return CA_MODEL
function CM:model() end

---@return boolean
function CM:is_multiplayer() end

---@return boolean
function CM:is_new_game() end

---@param force boolean?
---@return CA_FACTION
function CM:get_local_faction(force) end

---@param force boolean?
---@return string
function CM:get_local_faction_name(force) end

---@return string
function CM:whose_turn_is_it() end

---@return string[]
function CM:get_human_factions() end

---@param faction_key string
---@return CA_CHAR
function CM:get_highest_ranked_general_for_faction(faction_key) end

---@param cqi CA_CQI
---@return CA_CHAR
function CM:get_character_by_cqi(cqi) end

---@param regionName string
---@return CA_REGION
function CM:get_region(regionName) end

---@param factionName string
---@return CA_FACTION
function CM:get_faction(factionName) end

---@param cqi CA_CQI
---@return CA_CHAR
function CM:get_character_by_mf_cqi(cqi) end

---@param char CA_CQI | CA_CHAR | number
---@return string
function CM:char_lookup_str(char) end

---@return CUIM
function CM:get_campaign_ui_manager() end

---@param opt boolean
function CM:disable_end_turn(opt) end

---@param button string
---@param action string
---@param opt boolean
function CM:disable_shortcut(button, action, opt) end

---@param override string
---@param opt boolean
function CM:override_ui(override, opt) end

---@param opt bool
function CM:steal_user_input(opt) end

---@return number, number, number, number
function CM:get_camera_position() end

---@param unknown number
---@param unknown2 number
function CM:fade_scene(unknown, unknown2) end

---@param callback function
function CM:add_game_created_callback(callback) end

---@param name string
function CM:remove_callback(name) end

---@param faction_name string
---@param turn_offset number
---@param event_name string
---@param context_str string?
function CM:add_turn_countdown_event(faction_name, turn_offset, event_name, context_str) end

---@param num number | int
---@param max number?
---@return int
function CM:random_number(num, max) end

---@param lookup string
---@param trait_key string
---@param showMessage boolean
function CM:force_add_trait(lookup, trait_key, showMessage) end

---@param trait_key string
function CM:force_add_trait_on_selected_character(trait_key) end

---@param lookup string
---@param trait_key string
function CM:force_remove_trait(lookup, trait_key) end

---@param charName string
function CM:zero_action_points(charName) end

---@param charName string
---@param experience number
function CM:add_agent_experience(charName, experience) end

---@param lookup string
---@param skill_key string
function CM:force_add_skill(lookup, skill_key) end

---@param lookup string
---@param ancillary string
function CM:force_add_and_equip_ancillary(lookup, ancillary) end

---@param char_lookup_str string
---@param level int
function CM:award_experience_level(char_lookup_str, level) end

---@param lookup CA_CQI
---@param kill_army boolean
---@param throughcq boolean
function CM:kill_character(lookup, kill_army, throughcq) end

---@param lookup string
---@param immortal boolean
function CM:set_character_immortality(lookup, immortal) end

---@param factionName CA_FACTION
function CM:kill_all_armies_for_faction(factionName) end

---@param charString string
---@param xPos number
---@param yPos number
---@param useCommandQueue boolean
function CM:teleport_to(charString, xPos, yPos, useCommandQueue) end

---@param lookup string
function CM:replenish_action_points(lookup) end

---@param callback fun(context: WHATEVER)
function CM:add_saving_game_callback(callback) end

---@param callback fun(context: WHATEVER)
function CM:add_loading_game_callback(callback) end

---@param valueKey string
---@param value any
function CM:set_saved_value(valueKey, value) end

---@param valueKey string
---@return WHATEVER
function CM:get_saved_value(valueKey) end

---@param name string
---@param value any
---@param context WHATEVER?
function CM:save_named_value(name, value, context) end

---@param name string
---@param default any
---@param context WHATEVER?
---@return WHATEVER
function CM:load_named_value(name, default, context) end

---@param opt boolean
function CM:disable_saving_game(opt) end

---@param bundle string
---@param region string
---@param turns number
function CM:apply_effect_bundle_to_region(bundle, region, turns) end

---@param bundle string
---@param region string
function CM:remove_effect_bundle_from_region(bundle, region) end

---@param bundle string
---@param force CA_CQI
---@param turns number
function CM:apply_effect_bundle_to_force(bundle, force, turns) end

---@param bundle string
---@param faction string
---@param turns number
function CM:apply_effect_bundle(bundle, faction, turns) end

---@param bundle string
---@param faction string
function CM:remove_effect_bundle(bundle, faction) end

---@param bundleKey string
---@param charCqi CA_CQI
---@param turns number
---@param useCommandQueue boolean
function CM:apply_effect_bundle_to_characters_force(bundleKey, charCqi, turns, useCommandQueue) end

---@param bundle_key string
---@param char_cqi CA_CQI
function CM:remove_effect_bundle_from_characters_force(bundle_key, char_cqi) end

---@param lookup_string string
---@param unitID string
function CM:remove_unit_from_character(lookup_string, unitID) end

---@param lookup string
---@param unit string
function CM:grant_unit_to_character(lookup, unit) end

---@param character CA_CHAR
function CM:remove_all_units_from_general(character) end

---@param faction string
---@param other_faction string
---@param record string
---@param offer boolean
---@param accept boolean
---@param enable_payments boolean
function CM:force_diplomacy(faction, other_faction, record, offer, accept, enable_payments) end

---@param faction string
---@param other_faction string
function CM:make_diplomacy_available(faction, other_faction) end

---@param faction string
---@param other_faction string
function CM:force_make_peace(faction, other_faction) end

---@param declarer string
---@param declaree string
---@param attacker_allies boolean
---@param defender_allies boolean
---@param command_queue boolean?
function CM:force_declare_war(declarer, declaree, attacker_allies, defender_allies, command_queue) end

---@param vassaliser string
---@param vassal string
function CM:force_make_vassal(vassaliser, vassal) end

---@param faction1 string
---@param faction2 string
function CM:force_make_trade_agreement(faction1, faction2) end

---@param first_faction CA_FACTION
---@param second_faction CA_FACTION
function CM:faction_has_trade_agreement_with_faction(first_faction, second_faction) end

---@param first_faction CA_FACTION
---@param second_faction CA_FACTION
function CM:faction_has_nap_with_faction(first_faction, second_faction) end

---@param confederator string
---@param confederated string
function CM:force_confederation(confederator, confederated) end

---@param faction string
---@param other_faction string
---@param unknown_bool boolean
function CM:force_alliance(faction, other_faction, unknown_bool) end

---@param pos int) --> (CA_CQI
---@return CA_CQI, CA_CQI, string
function CM:pending_battle_cache_get_defender(pos) end

---@param pos int) --> (CA_CQI
---@return CA_CQI, CA_CQI, string
function CM:pending_battle_cache_get_attacker(pos) end

---@param char CA_CHAR
---@return CA_CHAR[]
function CM:pending_battle_cache_get_enemies_of_char(char) end

---@return boolean
function CM:pending_battle_cache_attacker_victory() end

---@param faction_key string
---@return boolean
function CM:pending_battle_cache_faction_is_involved(faction_key) end

---@return int
function CM:pending_battle_cache_num_attackers() end

---@return int
function CM:pending_battle_cache_num_defenders() end

---@param key string
---@param personality string
function CM:force_change_cai_faction_personality(key, personality) end

---@param name string
function CM:remove_marker(name) end

---@param region string
---@param faction string
function CM:transfer_region_to_faction(region, faction) end

---@param region string
function CM:set_region_abandoned(region) end

---@param faction string
function CM:win_next_autoresolve_battle(faction) end

---@param attacker_win_chance number
---@param defender_win_chance number
---@param attacker_losses_modifier number
---@param defender_losses_modifier number
---@param wipe_out_loser boolean
function CM:modify_next_autoresolve_battle(attacker_win_chance, defender_win_chance, attacker_losses_modifier, defender_losses_modifier, wipe_out_loser) end

---@param faction_key string
---@param dilemma_key string
---@param trigger_immediately boolean
function CM:trigger_dilemma(faction_key, dilemma_key, trigger_immediately) end

---@param factionName string
---@param incidentKey string
---@param fireImmediately boolean
function CM:trigger_incident(factionName, incidentKey, fireImmediately) end

---@param faction_key string
---@param mission_key string
---@param trigger_immediately boolean
function CM:trigger_mission(faction_key, mission_key, trigger_immediately) end

---@param faction_key string
---@param mission_key string
function CM:cancel_custom_mission(faction_key, mission_key) end

---@param disable boolean
---@param categories string
---@param subcategories string
---@param events string
function CM:disable_event_feed_events(disable, categories, subcategories, events) end

---@param mission_key string
---@param objective_key string
---@param success boolean
function CM:complete_scripted_mission_objective(mission_key, objective_key, success) end

---@param faction_key string
---@param tech_key string
function CM:lock_technology(faction_key, tech_key) end

---@param startpos string
---@param faction string
function CM:unlock_starting_general_recruitment(startpos, faction) end

---@param faction_key string
---@param tech_key string
function CM:unlock_technology(faction_key, tech_key) end

---@param unit string
---@param faction_key string
function CM:add_event_restricted_unit_record_for_faction(unit, faction_key) end

---@param unit string
---@param faction_key string
function CM:remove_event_restricted_unit_record_for_faction(unit, faction_key) end

---@param faction_key string
---@param building_key string
function CM:add_restricted_building_level_record(faction_key, building_key) end

---@param faction_key string
---@param building_key string
function CM:remove_restricted_building_level_record(faction_key, building_key) end

---@param cqi CA_CQI
---@param rite_key string
---@param unlock boolean
function CM:set_ritual_unlocked(cqi, rite_key, unlock) end

---@param cqi CA_CQI
---@param ritual_chain_key string
---@param unlock boolean
function CM:set_ritual_chain_unlocked(cqi, ritual_chain_key, unlock) end

---@param chain_key string
---@param level number
function CM:rollback_linked_ritual_chain(chain_key, level) end

---@param faction_key string
---@param quantity number
function CM:treasury_mod(faction_key, quantity) end

---@param cqi CA_CQI
---@param pooled_resource string
---@param factor string
---@param quantity number
function CM:pooled_resource_mod(cqi, pooled_resource, factor, quantity) end

---@param faction_key string
---@param factor_key string
---@param quantity number
function CM:faction_set_food_factor_value(faction_key, factor_key, quantity) end

---@param char CA_CHAR
---@return boolean
function CM:char_is_mobile_general_with_army(char) end

---@param building_chain string
---@param settlement_skin string
function CM:override_building_chain_display(building_chain, settlement_skin) end

---@class CUIM
CUIM = {}

---@return string
function CUIM:get_char_selected() end

---@param ui_override string
---@return CUIM_OVERRIDE
function CUIM:override(ui_override) end

function CUIM:start_scripted_sequence() end

function CUIM:stop_scripted_sequence() end

---@class CUIM_OVERRIDE
CUIM_OVERRIDE = {}

---@param allowed bool
function CUIM_OVERRIDE:set_allowed(allowed) end

---@class CA_GAME
CA_GAME = {}

---@param filePath string
---@param matchRegex string
---@return string
function CA_GAME:filesystem_lookup(filePath, matchRegex) end

---@class CA_CHAR
CA_CHAR = {}

---@param traitName string
---@return boolean
function CA_CHAR:has_trait(traitName) end

---@return number
function CA_CHAR:logical_position_x() end

---@return number
function CA_CHAR:logical_position_y() end

---@return number
function CA_CHAR:display_position_x() end

---@return number
function CA_CHAR:display_position_y() end

---@return string
function CA_CHAR:character_subtype_key() end

---@return CA_REGION
function CA_CHAR:region() end

---@return CA_FACTION
function CA_CHAR:faction() end

---@return CA_MILITARY_FORCE
function CA_CHAR:military_force() end

---@return CA_GARRISON_RESIDENCE
function CA_CHAR:garrison_residence() end

---@param subtype string
---@return boolean
function CA_CHAR:character_subtype(subtype) end

---@param char_type string
---@return boolean
function CA_CHAR:character_type(char_type) end

---@return string
function CA_CHAR:get_forename() end

---@return string
function CA_CHAR:get_surname() end

---@return CA_CQI
function CA_CHAR:command_queue_index() end

---@return CA_CQI
function CA_CHAR:cqi() end

---@return number
function CA_CHAR:rank() end

---@return boolean
function CA_CHAR:won_battle() end

---@return number
function CA_CHAR:battles_fought() end

---@return boolean
function CA_CHAR:is_wounded() end

---@return boolean
function CA_CHAR:has_military_force() end

---@return boolean
function CA_CHAR:is_faction_leader() end

---@return CA_CHAR
function CA_CHAR:family_member() end

---@return boolean
function CA_CHAR:is_null_interface() end

---@param skill_key string
---@return boolean
function CA_CHAR:has_skill(skill_key) end

---@return boolean
function CA_CHAR:is_politician() end

---@return boolean
function CA_CHAR:has_garrison_residence() end

---@class CA_CHAR_LIST
CA_CHAR_LIST = {}

---@return number
function CA_CHAR_LIST:num_items() end

---@param index number
---@return CA_CHAR
function CA_CHAR_LIST:item_at(index) end

---@class CA_MILITARY_FORCE
CA_MILITARY_FORCE = {}

---@return CA_CHAR
function CA_MILITARY_FORCE:general_character() end

---@return CA_UNIT_LIST
function CA_MILITARY_FORCE:unit_list() end

---@return CA_CQI
function CA_MILITARY_FORCE:command_queue_index() end

---@param bundle string
---@return boolean
function CA_MILITARY_FORCE:has_effect_bundle(bundle) end

---@return CA_CHAR_LIST
function CA_MILITARY_FORCE:character_list() end

---@return boolean
function CA_MILITARY_FORCE:has_general() end

---@return boolean
function CA_MILITARY_FORCE:is_armed_citizenry() end

---@return number
function CA_MILITARY_FORCE:morale() end

---@class CA_MILITARY_FORCE_LIST
CA_MILITARY_FORCE_LIST = {}

---@return number
function CA_MILITARY_FORCE_LIST:num_items() end

---@param index number
---@return CA_MILITARY_FORCE
function CA_MILITARY_FORCE_LIST:item_at(index) end

---@class CA_UNIT
CA_UNIT = {}

---@return number
function CA_UNIT:command_queue_index() end

---@return CA_FACTION
function CA_UNIT:faction() end

---@return string
function CA_UNIT:unit_key() end

---@return boolean
function CA_UNIT:has_force_commander() end

---@return CA_CHAR
function CA_UNIT:force_commander() end

---@return CA_MILITARY_FORCE
function CA_UNIT:military_force() end

---@return boolean
function CA_UNIT:has_military_force() end

---@return number
function CA_UNIT:percentage_proportion_of_full_strength() end

---@class CA_UNIT_LIST
CA_UNIT_LIST = {}

---@return number
function CA_UNIT_LIST:num_items() end

---@param j number
---@return CA_UNIT
function CA_UNIT_LIST:item_at(j) end

---@param unit string
---@return boolean
function CA_UNIT_LIST:has_unit(unit) end

---@class CA_REGION
CA_REGION = {}

---@return CA_SETTLEMENT
function CA_REGION:settlement() end

---@return CA_GARRISON_RESIDENCE
function CA_REGION:garrison_residence() end

---@return string
function CA_REGION:name() end

---@return string
function CA_REGION:province_name() end

---@return number
function CA_REGION:public_order() end

---@return boolean
function CA_REGION:is_null_interface() end

---@return boolean
function CA_REGION:is_abandoned() end

---@return CA_FACTION
function CA_REGION:owning_faction() end

---@return CA_SLOT_LIST
function CA_REGION:slot_list() end

---@return boolean
function CA_REGION:is_province_capital() end

---@param building string
---@return boolean
function CA_REGION:building_exists(building) end

---@param resource_key string
---@return boolean
function CA_REGION:resource_exists(resource_key) end

---@return boolean
function CA_REGION:any_resource_available() end

---@return CA_REGION_LIST
function CA_REGION:adjacent_region_list() end

---@class CA_SETTLEMENT
CA_SETTLEMENT = {}

---@return number
function CA_SETTLEMENT:logical_position_x() end

---@return number
function CA_SETTLEMENT:logical_position_y() end

---@return number
function CA_SETTLEMENT:display_position_x() end

---@return number
function CA_SETTLEMENT:display_position_y() end

---@return string
function CA_SETTLEMENT:get_climate() end

---@return boolean
function CA_SETTLEMENT:is_null_interface() end

---@return CA_FACTION
function CA_SETTLEMENT:faction() end

---@return CA_CHAR
function CA_SETTLEMENT:commander() end

---@return boolean
function CA_SETTLEMENT:has_commander() end

---@return CA_SLOT_LIST
function CA_SETTLEMENT:slot_list() end

---@return boolean
function CA_SETTLEMENT:is_port() end

---@return CA_REGION
function CA_SETTLEMENT:region() end

---@return string
function CA_SETTLEMENT:get_climate() end

---@return CA_SLOT
function CA_SETTLEMENT:primary_slot() end

---@return CA_SLOT
function CA_SETTLEMENT:port_slot() end

---@return CA_SLOT_LIST
function CA_SETTLEMENT:active_secondary_slots() end

---@return CA_SLOT
function CA_SETTLEMENT:first_empty_active_secondary_slot() end

---@class CA_SLOT_LIST
CA_SLOT_LIST = {}

---@return number
function CA_SLOT_LIST:num_items() end

---@param index number
---@return CA_SLOT
function CA_SLOT_LIST:item_at(index) end

---@param slot_key string
---@return boolean
function CA_SLOT_LIST:slot_type_exists(slot_key) end

---@param building_key string
---@return boolean
function CA_SLOT_LIST:building_type_exists(building_key) end

---@class CA_SLOT
CA_SLOT = {}

---@return boolean
function CA_SLOT:has_building() end

---@return CA_BUILDING
function CA_SLOT:building() end

---@return string
function CA_SLOT:resource_key() end

---@class CA_BUILDING
CA_BUILDING = {}

---@return string
function CA_BUILDING:name() end

---@return string
function CA_BUILDING:chain() end

---@return string
function CA_BUILDING:superchain() end

---@return CA_FACTION
function CA_BUILDING:faction() end

---@return CA_REGION
function CA_BUILDING:region() end

---@class CA_GARRISON_RESIDENCE
CA_GARRISON_RESIDENCE = {}

---@return CA_REGION
function CA_GARRISON_RESIDENCE:region() end

---@return CA_FACTION
function CA_GARRISON_RESIDENCE:faction() end

---@return boolean
function CA_GARRISON_RESIDENCE:is_under_siege() end

---@return CA_SETTLEMENT
function CA_GARRISON_RESIDENCE:settlement_interface() end

---@return CA_MILITARY_FORCE
function CA_GARRISON_RESIDENCE:army() end

---@return CA_CQI
function CA_GARRISON_RESIDENCE:command_queue_index() end

---@return number
function CA_GARRISON_RESIDENCE:unit_count() end

---@param faction_key string
---@return boolean
function CA_GARRISON_RESIDENCE:can_be_occupied_by_faction(faction_key) end

---@class CA_MODEL
CA_MODEL = {}

---@return CA_WORLD
function CA_MODEL:world() end

---@return number
function CA_MODEL:difficulty_level() end

---@return number
function CA_MODEL:turn_number() end

---@return CA_PENDING_BATTLE
function CA_MODEL:pending_battle() end

---@return int
function CA_MODEL:combined_difficulty_level() end

---@param campaign_name string
---@return boolean
function CA_MODEL:campaign_name(campaign_name) end

---@return number
function CA_MODEL:campaign_type() end

---@return boolean
function CA_MODEL:is_multiplayer() end

---@param cqi CA_CQI
---@return CA_MILITARY_FORCE
function CA_MODEL:military_force_for_command_queue_index(cqi) end

---@param cqi CA_CQI
---@return CA_CHAR
function CA_MODEL:character_for_command_queue_index(cqi) end

---@param chance number
---@return boolean
function CA_MODEL:random_percent(chance) end

---@param faction_key string
---@return boolean
function CA_MODEL:faction_is_local(faction_key) end

---@param cqi CA_CQI
---@return CA_FACTION
function CA_MODEL:faction_for_command_queue_index(cqi) end

---@return boolean
function CA_MODEL:is_player_turn() end

---@class CA_WORLD
CA_WORLD = {}

---@return CA_FACTION_LIST
function CA_WORLD:faction_list() end

---@param factionKey string
---@return CA_FACTION
function CA_WORLD:faction_by_key(factionKey) end

---@return CA_FACTION
function CA_WORLD:whose_turn_is_it() end

---@return CA_REGION_MANAGER
function CA_WORLD:region_manager() end

---@class CA_REGION_MANAGER
CA_REGION_MANAGER = {}

---@return CA_REGION_LIST
function CA_REGION_MANAGER:region_list() end

---@param key string
---@return CA_REGION
function CA_REGION_MANAGER:region_by_key(key) end

---@class CA_FACTION
CA_FACTION = {}

---@return CA_CHAR_LIST
function CA_FACTION:character_list() end

---@return number
function CA_FACTION:treasury() end

---@return string
function CA_FACTION:name() end

---@return string
function CA_FACTION:subculture() end

---@return string
function CA_FACTION:culture() end

---@return CA_MILITARY_FORCE_LIST
function CA_FACTION:military_force_list() end

---@return boolean
function CA_FACTION:is_human() end

---@return boolean
function CA_FACTION:is_dead() end

---@param faction CA_FACTION
---@return boolean
function CA_FACTION:is_vassal_of(faction) end

---@return boolean
function CA_FACTION:is_vassal() end

---@param faction string
---@return boolean
function CA_FACTION:is_ally_vassal_or_client_state_of(faction) end

---@param faction CA_FACTION
function CA_FACTION:allied_with(faction) end

---@param faction CA_FACTION
---@return boolean
function CA_FACTION:at_war_with(faction) end

---@return CA_REGION_LIST
function CA_FACTION:region_list() end

---@param bundle string
---@return boolean
function CA_FACTION:has_effect_bundle(bundle) end

---@return CA_REGION
function CA_FACTION:home_region() end

---@return CA_CQI
function CA_FACTION:command_queue_index() end

---@return boolean
function CA_FACTION:is_null_interface() end

---@return CA_CHAR
function CA_FACTION:faction_leader() end

---@return boolean
function CA_FACTION:has_home_region() end

---@return CA_FACTION_LIST
function CA_FACTION:factions_met() end

---@return CA_FACTION_LIST
function CA_FACTION:factions_at_war_with() end

---@return boolean
function CA_FACTION:at_war() end

---@param resource string
---@return boolean
function CA_FACTION:has_pooled_resource(resource) end

---@param resource string
---@return CA_POOLED
function CA_FACTION:pooled_resource(resource) end

---@return CA_FACTION_RITUALS
function CA_FACTION:rituals() end

---@return boolean
function CA_FACTION:has_rituals() end

---@param province_key string
---@param include_vassals boolean
function CA_FACTION:holds_entire_province(province_key, include_vassals) end

---@class CA_FACTION_LIST
CA_FACTION_LIST = {}

---@return number
function CA_FACTION_LIST:num_items() end

---@param index number
---@return CA_FACTION
function CA_FACTION_LIST:item_at(index) end

---@class CA_REGION_LIST
CA_REGION_LIST = {}

---@return number
function CA_REGION_LIST:num_items() end

---@param i number
---@return CA_REGION
function CA_REGION_LIST:item_at(i) end

---@class CA_PENDING_BATTLE
CA_PENDING_BATTLE = {}

---@return CA_CHAR
function CA_PENDING_BATTLE:attacker() end

---@return CA_CHAR
function CA_PENDING_BATTLE:defender() end

---@return boolean
function CA_PENDING_BATTLE:ambush_battle() end

---@return boolean
function CA_PENDING_BATTLE:has_been_fought() end

---@return string
function CA_PENDING_BATTLE:set_piece_battle_key() end

---@class CORE
CORE = {}
core = CORE

---@return CA_UIC
function CORE:get_ui_root() end

---@param listenerName string
---@param eventName string
---@param predicate function
---@param callback function
---@param is_repeating bool
function CORE:add_listener(listenerName, eventName, predicate, callback, is_repeating) end

---@param listenerName string
function CORE:remove_listener(listenerName) end

function CORE:add_ui_created_callback() end

---@return number, number
function CORE:get_screen_resolution() end

---@param event_name string
function CORE:trigger_event(event_name, ...) end

---@class CA_POOLED
CA_POOLED = {}

---@return number
function CA_POOLED:value() end

---@class CA_FACTION_RITUALS
CA_FACTION_RITUALS = {}

---@return CA_RITUAL_LIST
function CA_FACTION_RITUALS:active_rituals() end

---@param ritual_key string
---@return boolean
function CA_FACTION_RITUALS:ritual_status(ritual_key) end

---@class CA_RITUAL
CA_RITUAL = {}

---@return CA_REGION_LIST
function CA_RITUAL:ritual_sites() end

---@return string
function CA_RITUAL:ritual_chain_key() end

---@return string
function CA_RITUAL:ritual_key() end

---@return boolean
function CA_RITUAL:is_part_of_chain() end

---@return CA_FACTION
function CA_RITUAL:target_faction() end

---@return number
function CA_RITUAL:cast_time() end

---@return boolean
function CA_RITUAL:is_null_interface() end

---@return number
function CA_RITUAL:cooldown_time() end

---@return number
function CA_RITUAL:expended_resources() end

---@return number
function CA_RITUAL:slave_cost() end

---@return string
function CA_RITUAL:ritual_category() end

---@class CA_RITUAL_LIST
CA_RITUAL_LIST = {}

---@param i int
---@return CA_RITUAL
function CA_RITUAL_LIST:item_at(i) end

---@return boolean
function CA_RITUAL_LIST:is_empty() end

---@return int
function CA_RITUAL_LIST:num_items() end

---@class RITE_UNLOCK
RITE_UNLOCK = {}

---@param rite_key string
---@param event_name string
---@param condition fun()
---@param faction_name string)
---@param faction string
---@return RITE_UNLOCK
function RITE_UNLOCK:new(rite_key, event_name, condition, faction_name, faction) end

---@param human_faction_name string
function RITE_UNLOCK:start(human_faction_name) end

---@class MISSION_MANAGER
MISSION_MANAGER = {}

---@param faction_key string
---@param mission_key string
---@param success_callback fun()
---@param failure_callback fun()
---@param cancellation_callback fun()
---@return MISSION_MANAGER
function MISSION_MANAGER:new(faction_key, mission_key, success_callback, failure_callback, cancellation_callback) end

---@param objective_type CA_MISSION_OBJECTIVE
function MISSION_MANAGER:add_new_objective(objective_type) end

---@param condition_string string
function MISSION_MANAGER:add_condition(condition_string) end

---@param payload_string string
function MISSION_MANAGER:add_payload(payload_string) end

---@param turns number
function MISSION_MANAGER:set_turn_limit(turns) end

---@param turns integer
function MISSION_MANAGER:set_chapter(turns) end

---@param issuer string
function MISSION_MANAGER:set_mission_issuer(issuer) end

---@param heading_loc_key string
function MISSION_MANAGER:add_heading(heading_loc_key) end

---@param description_loc_key string
function MISSION_MANAGER:add_description(description_loc_key) end

---@param objective_loc_key string
---@param event string
---@param condition fun(context: WHATEVER)
---@param script_key string?
function MISSION_MANAGER:add_new_scripted_objective(objective_loc_key, event, condition, script_key) end

---@param event string
---@param condition fun()
---@param script_key string?
function MISSION_MANAGER:add_scripted_objective_success_condition(event, condition, script_key) end

---@param event string
---@param condition fun()
---@param script_key string?
function MISSION_MANAGER:add_scripted_objective_failure_condition(event, condition, script_key) end

---@param script_key string?
function MISSION_MANAGER:force_scripted_objective_success(script_key) end

---@param script_key string?
function MISSION_MANAGER:force_scripted_objective_failure(script_key) end

---@param override_text_loc string
---@param script_key string?
function MISSION_MANAGER:update_scripted_objective_text(override_text_loc, script_key) end

function MISSION_MANAGER:set_should_cancel_before_issuing() end

function MISSION_MANAGER:set_should_should_whitelist() end

---@param callback fun()
function MISSION_MANAGER:set_first_time_startup_callback(callback) end

---@param callback fun()
function MISSION_MANAGER:set_each_time_startup_callback(callback) end

---@param dismiss_callback fun()
---@param delay number?
function MISSION_MANAGER:trigger(dismiss_callback, delay) end

---@param mission_key string
---@return MISSION_MANAGER
function CM:get_mission_manager(mission_key) end

---@param unit_interface CA_UNIT
---@param rank number
function CM:add_experience_to_unit(unit_interface, rank) end

---@class RAM
RAM = {}
random_army_manager = RAM

---@param key string
function RAM:new_force(key) end

---@param forcekey string
---@param unitkey string
---@param q number
function RAM:add_mandatory_unit(forcekey, unitkey, q) end

---@param forcekey string
---@param unitkey string
---@param q number
function RAM:add_unit(forcekey, unitkey, q) end

---@param id string
---@param sizes number
---@param return_as_table boolean
---@return string
function RAM:generate_force(id, sizes, return_as_table) end

---@class CA_CUTSCENE
CA_CUTSCENE = {}

---@param key string
---@param time number
---@return CA_CUTSCENE
function CA_CUTSCENE:new(key, time) end

---@param setting boolean
function CA_CUTSCENE:set_disable_settlement_labels(setting) end

---@param setting boolean
function CA_CUTSCENE:set_restore_shroud(setting) end

---@param action fun()
---@param timer number
function CA_CUTSCENE:action(action, timer) end

---@class LL_UNLOCK
LL_UNLOCK = {}

---@param faction_key string
---@param startpos_id string
---@param forename_key string
---@param event string
---@param condition fun()
---@return LL_UNLOCK
function LL_UNLOCK:new(faction_key, startpos_id, forename_key, event, condition) end

function LL_UNLOCK:start() end

---@class INVASION_MANAGER
INVASION_MANAGER = {}
invasion_manager = INVASION_MANAGER

--- @section Creating Invasions
--- @function new_invasion
--- @desc Adds a new invasion to the invasion manager
--- @p string key, The key of this invasion
--- @p string faction_key, The key of the faction that this invasion belongs to
--- @p string force_list, The units that will be part of this invasion
--- @p object spawn_location, Pass either a table of x/y coordinates or a string for the key of a preset location
--- @return invasion The new invasion object created by this function
function INVASION_MANAGER:new_invasion(key, faction_key, force_list, spawn_location) end

function INVASION_MANAGER:new_invasion_from_existing_force(key, force) end
function INVASION_MANAGER:new_spawn_location(key, x, y) end
function INVASION_MANAGER:parse_spawn_location(spawn_location) end
function INVASION_MANAGER:is_valid_position(x, y) end
function INVASION_MANAGER:get_invasion(key) end
function INVASION_MANAGER:remove_invasion(key) end
function INVASION_MANAGER:kill_invasion_by_key(key) end
function INVASION_MANAGER:remove_invasion(key) end
function INVASION_MANAGER:remove_invasion(key) end
function INVASION_MANAGER:remove_invasion(key) end

---@class INVASION
INVASION = {}
invasion = INVASION

---@param target_type INVASION_TARGETS
---@param target WHATEVER
---@param target_faction_key string
function INVASION:set_target(target_type, target, target_faction_key) end

---@param effect_key string
---@param turns number
function INVASION:apply_effect(effect_key, turns) end

---@param quanity number
function INVASION:add_character_experience(quanity) end

---@param quantity number
function INVASION:add_unit_experience(quantity) end

---@param callback fun()
---@param declare_war boolean?
---@param invite_attacker_allies boolean?
---@param invite_defender_allies boolean?
function INVASION:start_invasion(callback, declare_war, invite_attacker_allies, invite_defender_allies) end

---@class _G
_G = {}

---@param parent CA_UIC
---@return CA_UIC
find_uicomponent = function(parent, ...) end

---@param pointer CA_Component
---@return CA_UIC
UIComponent = function(pointer) end

---@param root CA_UIC
---@param findtable string[]
---@return CA_UIC
find_uicomponent_from_table = function(root, findtable) end

---@param root CA_UIC
---@param parent_name string
---@return boolean
uicomponent_descended_from = function(root, parent_name) end

---@param out string | number
out = function(out) end

---@param component CA_UIC
print_all_uicomponent_children = function(component) end

---@param object any
---@return boolean
is_uicomponent = function(object) end

---@param uic CA_UIC
---@param omit_children boolean
output_uicomponent = function(uic, omit_children) end

---@param faction CA_FACTION
---@return boolean
wh_faction_is_horde = function(faction) end

---@param component CA_UIC
---@return string
uicomponent_to_str = function(component) end

---@param arg string
---@return boolean
is_string = function(arg) end

---@param arg table
---@return boolean
is_table = function(arg) end

---@param arg number
---@return boolean
is_number = function(arg) end

---@param arg function
---@return boolean
is_function = function(arg) end

---@param arg boolean
---@return boolean
is_boolean = function(arg) end

---@return string
get_timestamp = function() end

---@param msg string
script_error = function(msg) end

---@param n any
---@return number
to_number = function(n) end

load_script_libraries = function() end

---@return CM
get_cm = function() end

---@param context WHATEVER?
get_events = function(context) end

---@param char CA_CHAR
---@return BATTLE_SIDE
Get_Character_Side_In_Last_Battle = function(char) end

q_setup = function() end

---@param subtype string
set_up_rank_up_listener = function(quest_table, subtype, infotext) end

---@param attacker string
---@param defender string
---@param use_command_queue boolean
function CM:attack(attacker, defender, use_command_queue) end

---@param attacker_force_cqi number
---@param target_force_cqi number
---@param is_ambush boolean
function CM:force_attack_of_opportunity(attacker_force_cqi, target_force_cqi, is_ambush) end

---@param slot CA_SLOT
---@param target_building_key string
function CM:instantly_upgrade_building_in_region(slot, target_building_key) end

---@param x1 number
---@param x2 number
---@param y1 number
---@param y2 number
---@return boolean
distance_squared = function(x1, y1, x2, y2) end

---@param degrees number
d_to_r = function(degrees) end

---@param fun function
function CM:add_first_tick_callback(fun) end
