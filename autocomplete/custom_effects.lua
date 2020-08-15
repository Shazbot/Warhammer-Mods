
---@param effect_bundle_key string
---@return CUSTOM_EFFECT_BUNDLE
function CM:create_new_custom_effect_bundle(effect_bundle_key) end

---@param custom_effect_bundle CUSTOM_EFFECT_BUNDLE
---@param faction CA_FACTION
function CM:apply_custom_effect_bundle_to_faction(custom_effect_bundle, faction) end

---@param custom_effect_bundle CUSTOM_EFFECT_BUNDLE
---@param character CA_CHAR
function CM:apply_custom_effect_bundle_to_character(custom_effect_bundle, character) end

---@param custom_effect_bundle CUSTOM_EFFECT_BUNDLE
---@param force CA_MILITARY_FORCE
function CM:apply_custom_effect_bundle_to_force(custom_effect_bundle, force) end

---@param custom_effect_bundle CUSTOM_EFFECT_BUNDLE
---@param character CA_CHAR
function CM:apply_custom_effect_bundle_to_characters_force(custom_effect_bundle, character) end

---param custom_effect_bundle CUSTOM_EFFECT_BUNDLE
---@param region CA_REGION
function CM:apply_custom_effect_bundle_to_region(custom_effect_bundle, region) end

---@param custom_effect_bundle CUSTOM_EFFECT_BUNDLE
---@param region CA_REGION
function CM:apply_custom_effect_bundle_to_faction_province(custom_effect_bundle, region) end

---@class LIST_INTERFACE
LIST_INTERFACE = {}
---@return number
function LIST_INTERFACE:num_items() end

---@return table
function LIST_INTERFACE:item_at() end

---@return boolean
function LIST_INTERFACE:is_empty() end

EFFECT_LIST = {}

---@class CUSTOM_EFFECT_BUNDLE
CUSTOM_EFFECT_BUNDLE = {}

---@return string
function CUSTOM_EFFECT_BUNDLE:key() end

---@return LIST_INTERFACE
function CUSTOM_EFFECT_BUNDLE:effects() end

---@return number
function CUSTOM_EFFECT_BUNDLE:duration() end

---param num_rounds number
function CUSTOM_EFFECT_BUNDLE:set_duration(num_rounds) end

---@param effect_key string
---@param scope_key string
---@param value number
function CUSTOM_EFFECT_BUNDLE:add_effect(effect_key, scope_key, value) end

---@param effect EFFECT
---@param new_value number
function CUSTOM_EFFECT_BUNDLE:set_effect_value(effect, new_value) end

---@param effect EFFECT
function CUSTOM_EFFECT_BUNDLE:remove_effect(effect) end

---@class EFFECT
EFFECT = {}

---@return string
function EFFECT:key() end

---@return string
function EFFECT:scope() end

---@return number
function EFFECT:value() end
