local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "neotree",
        highlight = {
            spec.fg("NeoTreeFileName", theme.fs.file),
            spec.cf("NeoTreeGitUntracked", theme.diff.add, { italic = true }),

        },
    }
end
