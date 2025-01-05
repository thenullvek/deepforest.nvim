local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "coq",
        highlight = {
            spec.ln("coqProofDelim", "@constructor"),
            spec.ln("coqNotationString", "@string"),
            spec.fg("coqVernacPunctuation", theme.syntax.punctuation),
            spec.fg("coqProofPunctuation", theme.syntax.punctuation),
            spec.bg("CoqtailChecked", theme.plugin_coq.checked_bg),
            spec.cf("coqTactic", theme.syntax.func_builtin, { bold = true }),
            spec.ln("coqProofKwd", "@keyword")
        },
    }
end
