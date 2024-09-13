local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    local icon = theme.ui.fg_icon
    local header = theme.syntax.keyword
    local file = theme.syntax.var
    return {
        plugin_name = "dashboard",
        highlight = {
            spec.fg("DashboardHeader", header),
            spec.fg("DashboardProjectTitle", header),
            spec.fg("DashboardProjectTitleIcon", icon),
            spec.fg("DashboardProjectIcon", icon),
            spec.fg("DashboardMruTitle", header),
            spec.fg("DashboardMruTitleIcon", icon),
            spec.fg("DashboardMruIcon", icon),
            spec.fg("DashboardFiles", file),
            spec.fg("DashboardShortcut", header),
        },
    }
end
