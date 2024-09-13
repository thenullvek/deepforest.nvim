local spec = require("deepforest.spec")
local color = require("deepforest.color")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "mason",
        highlight = {
            spec.fg("MasonHighlight", theme.plugin_mason.highlight),
            spec.co("MasonHeader", color.gray9, theme.plugin_mason.header, { bold = true }),
            spec.co("MasonHeaderSecondary", color.gray9, theme.plugin_mason.header2, { bold = true }),
            spec.co("MasonHighlightBlock", theme.ui.fg_button, theme.ui.bg_button),
            spec.co("MasonHighlightBlockBold", theme.ui.fg_button_active, theme.ui.bg_button_active),
            spec.ln("MasonMutedBlock", "MasonHighlightBlock"),
            spec.co("MasonHighlightBlockBoldSecondary", color.gray9, color.lavender4),
        },
    }
end
