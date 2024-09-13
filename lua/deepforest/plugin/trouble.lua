local spec = require("deepforest.spec")
local color = require("deepforest.color")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "trouble",
        highlight = {
            spec.co("TroubleNormal", theme.plugin_trouble.normal, theme.ui.bg_popup),
            spec.fg("TroubleSource", theme.plugin_trouble.normal),
            spec.fg("TroubleCode", theme.plugin_trouble.code),
            spec.fg("TroubleLocation", theme.plugin_trouble.code),
            spec.fg("TroubleInformation", theme.diagnostic.info),
            spec.fg("TroubleTextError", theme.diagnostic.error),
            spec.fg("TroubleTextWarning", theme.diagnostic.warn),
            spec.cf("TroubleTodoTag", theme.plugin_trouble.normal, { bold = true }),
            spec.fg("TroubleDirectory", theme.fs.dir),
            spec.fg("TroubleFile", theme.fs.file),
            spec.fg("TroublePos", color.tree5),
            spec.fg("TroubleText", theme.ui.fg_popup),
        },
    }
end
