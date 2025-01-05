local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "coq",
        highlight = {
            spec.ln("coqProofDelim", "@constructor"),
            spec.ln("coqNotationString", "@string"),
            spec.bg("CoqtailChecked", theme.plugin_coq.checked_bg),
        },
    }
end
