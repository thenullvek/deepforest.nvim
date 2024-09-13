local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "git_gutter",
        highlight = {
            spec.fg("GitGutterAdd", theme.diff.add),
            spec.fg("GitGutterAddLineNr", theme.diff.add),
            spec.fg("GitGutterChange", theme.diff.change),
            spec.fg("GitGutterChangeLineNr", theme.diff.change),
            spec.fg("GitGutterDelete", theme.diff.delete),
            spec.fg("GitGutterDeleteLineNr", theme.diff.delete),
        },
    }
end
