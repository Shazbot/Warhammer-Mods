vfs = {}
effect = {}

dout = function(...) end
ddraw = function(...) end
ddump = function(...) end

---@alias CA_CQI number

---@param faction_key string
---@param start_x number
---@param start_y numberu
---@param in_same_region boolean
---@param OPT_preferred_spawn_distance number
function CM:find_valid_spawn_location_for_character_from_position(faction_key, start_x, start_y, in_same_region, OPT_preferred_spawn_distance) end

---@param faction_key string
---@param settlement_region_key string
---@param on_sea boolean
---@param in_same_region boolean
---@param OPT_preferred_spawn_distance number
function CM:find_valid_spawn_location_for_character_from_settlement(faction_key, settlement_region_key, on_sea, in_same_region, OPT_preferred_spawn_distance) end

---@param faction_key string
---@param character_lookup string
---@param in_same_region boolean
---@param OPT_preferred_spawn_distance number
function CM:find_valid_spawn_location_for_character_from_character(faction_key, character_lookup, in_same_region, OPT_preferred_spawn_distance) end

---@param attacker_force_cqi CA_CQI
---@param target_force_cqi CA_CQI
---@param is_ambush boolean
function CM:force_attack_of_opportunity(attacker_force_cqi, target_force_cqi, is_ambush) end

---@param id string
---@param marker_key string
---@param x integer
---@param y integer
---@param radius integer
---@param opt_faction_key string
---@param opt_subculture_key string
function CM:add_interactable_campaign_marker(id, marker_key, x, y, radius, opt_faction_key, opt_subculture_key) end

CampaignUI = {}
function CampaignUI.TriggerCampaignScriptEvent(cqi, string) end
function CampaignUI.ClearSelection() end

---@class battle_vector
battle_vector = {}

---@class script_unit
script_unit = {}

get_bm = function() end

eight_peaks_check = function(faction_name) end
is_karak_eight_peaks_owner_faction = function(faction_name) end
