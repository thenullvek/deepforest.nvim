local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "yanky",
        highlight = {
            spec.ln("YankyPut", "Visual"),
            spec.ln("YankyYanked", "Visual"),
        },
    }
end
