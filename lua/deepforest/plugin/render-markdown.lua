local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    return {
        plugin_name = "rainbow_delimiter",
        highlight = {
            spec.ln("RenderMarkdownH1", "@markup.heading.1"),
            spec.ln("RenderMarkdownH2", "@markup.heading.2"),
            spec.ln("RenderMarkdownH3", "@markup.heading.3"),
            spec.ln("RenderMarkdownH4", "@markup.heading.4"),
            spec.ln("RenderMarkdownH5", "@markup.heading.5"),
            spec.ln("RenderMarkdownH6", "@markup.heading.6"),
            spec.bg("RenderMarkdownCode", theme.render_markdown.code_bg),
        },
    }
end
