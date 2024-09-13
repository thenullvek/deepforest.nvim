local spec = require("deepforest.spec")
local color = require("deepforest.color")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "todo_comments",
        highlight = {
            spec.co("TodoBgTodo", color.gray8, color.sky1, { bold = true }),
            spec.fg("TodoFgTodo", color.sky1),
            spec.co("TodoBgNote", color.black, color.luster, { bold = true }),
            spec.fg("TodoFgNote", color.luster),
            spec.co("TodoBgPerf", color.gray8, color.lavender4, { bold = true }),
            spec.fg("TodoFgPerf", color.lavender4),
            spec.co("TodoBgWarn", color.gray8, theme.log.warn, { bold = true }),
            spec.fg("TodoFgWarn", theme.log.warn),
            spec.ln("TodoBgHack", "TodoBgWarn"),
            spec.ln("TodoFgHack", "TodoFgWarn"),
            spec.co("TodoBgFix", color.gray9, theme.log.error, { bold = true }),
            spec.fg("TodoFgFix", theme.log.error),
            spec.co("TodoBgTest", color.gray8, color.soil, { bold = true }),
            spec.fg("TodoFgTest", color.soil),
        },
    }
end
