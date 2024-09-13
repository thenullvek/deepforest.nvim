local spec = require("deepforest.spec")
local color = require("deepforest.color")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "todo_comments",
        highlight = {
            spec.co("TodoBgTodo", color.gray9, theme.todo.todo, { bold = true }),
            spec.fg("TodoFgTodo", theme.todo.todo),
            spec.co("TodoBgNote", color.black, theme.todo.note, { bold = true }),
            spec.fg("TodoFgNote", theme.todo.note),
            spec.co("TodoBgPerf", color.gray9, theme.todo.perf, { bold = true }),
            spec.fg("TodoFgPerf", theme.todo.perf),
            spec.co("TodoBgWarn", color.black, theme.log.warn, { bold = true }),
            spec.fg("TodoFgWarn", theme.log.warn),
            spec.ln("TodoBgHack", "TodoBgWarn"),
            spec.ln("TodoFgHack", "TodoFgWarn"),
            spec.co("TodoBgFix", color.gray9, theme.todo.fix, { bold = true }),
            spec.fg("TodoFgFix", theme.todo.fix),
            spec.co("TodoBgTest", color.gray9, theme.todo.test, { bold = true }),
            spec.fg("TodoFgTest", theme.todo.test),
        },
    }
end
