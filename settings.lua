-- settings.lua
-- 1st file in mod loading sequence. First in the Settings stage.
-- This stage is used to define all mod settings that are later shown in the in-game mod settings GUI, and has no other functions or possibilities.
-- @autor: Johnson1893 @ 05.10.2022

--[[ Settings examples (https://wiki.factorio.com/Tutorial:Mod_settings)

    Possible type:
        bool-setting - a true/false checkbox
        int-setting - a signed 64 bit integer textfield (or selection dropdown)
        double-setting - a double precision floating point textfield (or selection dropdown)
        string-setting - a string textfield (or selection dropdown)

    Possible setting_type:
        startup: This kind of setting is available in the prototype stage, and can not be changed runtime. They have to be set to the same values for all players on a server.
        runtime-global: This kind of setting is global to an entire save game and can be changed runtime. On servers, only admins can change these settings.
        runtime-per-user: This kind of setting is only available runtime in the control.lua stage and each player has their own instance of this setting.
            When a player joins a server their local setting of "keep mod settings per save" determines if the local settings they have set are synced to the loaded save or if
            the save's settings are used.

]]
data:extend({
    {
        type = "bool-setting",
        name = "fmt-bool-setting",
        setting_type = "startup",
        default_value = false,
    },
    {
        type = "double-setting",
        name = "fmt-double-setting",
        setting_type = "runtime-per-user",
        default_value = 50,
        allowed_values = { 10, 20, 30, 40, 50, 100 }
    },
    {
        type = "int-setting",
        name = "fmt-int-setting",
        setting_type = "runtime-per-user",
        default_value = 50,
        minimum_value = 1,
        maximum_value = 100
    },
    {
        type = "string-setting",
        name = "fmt-string-setting",
        setting_type = "startup",
        default_value = "test",
        allow_blank = false,
        auto_trim = true
    },
})
