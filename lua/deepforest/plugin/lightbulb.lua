local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "lightbulb",
        highlight = {
            spec.fg("lightbulbSign", theme.diagnostic.text),
        },
    }
end
