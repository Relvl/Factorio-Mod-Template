# Factorio Mod Template

# Checklist

1. The mod folder **MUST BE** named the same as the mod ID (`info.json:name`)

# Mod loading sequence

+ [Settings stage](https://lua-api.factorio.com/latest/Data-Lifecycle.html#settings-stage)

1. `settings.lua`
3. `settings-updates.lua`
4. `settings-final-fixes.lua`

+ [Data stage](https://lua-api.factorio.com/latest/Data-Lifecycle.html#data-stage)

5. `data.lua`
6. `data-updates.lua`
7. `data-final-fixes.lua`

+ Runtime stage

8. `control.lua`

# Recomendations
1. The root directory should contain only the load sequence files. The remaining files should be located in nested directories.
2. Define multiple locale files for the appropriate categories (`settings.cfg`, `items.cfg`, `strings.cfg`, etc...)
3. 