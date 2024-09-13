local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "lsp_config",
        highlight = {
            spec.fg("lspInfoTip", theme.diagnostic.info),
        },
    }
end
