-- control.lua
-- 7th file in mod loading sequence. First (and single) file in the Control stage (in-game).
-- @autor: Johnson1893 @ 05.10.2022


-- Settings read example
script.on_event(defines.events.on_built_entity, function(event)
    -- Please cache settings table if you will use it multiple times!
    local setting = settings.get_player_settings(event.player_index)["fmt-double-setting"]
    local value = setting.value
    local defaultValue = setting.default_value
    if value == defaultValue then
        log("FMT: Double setting is default")
    end
end)