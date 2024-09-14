local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "neotree",
        highlight = {
            spec.fg("NeoTreeFileName", theme.fs.file),
            spec.cf("NeoTreeGitUntracked", theme.diff.add, { italic = true, bold = true }),
            spec.fg("NeoTreeGitStaged", theme.plugin_neotree.staged),
            spec.fg("NeoTreeGitModified", theme.diff.change),
        },
    }
end
