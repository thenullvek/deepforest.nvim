local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "lazy",
        highlight = {
            spec.co("LazyNormal", theme.ui.fg_normal, theme.ui.bg_popup),
            spec.co("LazyButton", theme.ui.fg_button, theme.ui.bg_button),
            spec.co("LazyButtonActive", theme.ui.fg_button_active, theme.ui.bg_button_active),
            spec.fg("LazySpecial", theme.plugin_lazy.special),
            spec.fg("LazyComment", theme.plugin_lazy.comment),
            spec.ln("LazyH1", "LazyButtonActive"),
            spec.cf("LazyH2", theme.plugin_lazy.h2, { bold = true }),
            spec.fg("Bold", theme.plugin_lazy.bold),
            spec.ln("LazyProp", "@property"),
            spec.fg("LazyReasonCmd", theme.plugin_lazy.reason_cmd),
            spec.fg("LazyReasonPlugin", theme.plugin_lazy.reason_plugin),
        },
    }
end
