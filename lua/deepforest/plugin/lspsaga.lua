local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "lspsaga",
        highlight = {
            spec.fg("SagaWinbarFileName", theme.fs.file),
            spec.ln("SagaWinbarFolderName", "SagaWinbarFileName"),
            spec.ln("SagaFileName", "SagaWinbarFileName"),
            spec.ln("SagaFolderName", "SagaWinbarFolderName"),
        },
    }
end
