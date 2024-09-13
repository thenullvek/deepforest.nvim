local spec = require("deepforest.spec")

---@param theme DeepForestTheme
---@return DeepForestHighlightGroup
return function(theme)
    local cmp = theme.plugin_cmp
    return {
        plugin_name = "cmp",
        highlight = {
            ---spec.fg("CmpItemKind", cmp.kind),
            spec.fg("CmpItemKindSnippet", cmp.snippet),
            spec.cf("CmpItemAbbrDeprecated", cmp.deprecated, { strikethrough = true }),
            spec.fg("CmpItemAbbrMatch", cmp.fuzzymatch),
            spec.ln("CmpItemAbbrMatchFuzzy", "CmpItemAbbrMatch"),
            spec.ln("CmpItemKindVariable", "@variable"),
            spec.ln("CmpItemKindText", "@text"),
            spec.ln("CmpItemKindFunction", "@function"),
            spec.ln("CmpItemKindMethod", "@function.method"),
            spec.ln("CmpItemKindConstructor", "@constructor"),
            spec.ln("CmpItemKindProperty", "@property"),
            spec.ln("CmpItemKindField", "@property"),
            spec.ln("CmpItemKindKeyword", "@keyword"),
            spec.ln("CmpItemKindUnit", "@keyword"),
            spec.ln("CmpItemKindEnumMember", "@variable.member"),
            spec.ln("CmpItemKindClass", "@lsp.type.class"),
            spec.ln("CmpItemKindStruct", "@lsp.type.class"),
            spec.fg("CmpItemKindInterface", cmp.interface),
            spec.ln("CmpItemKindConstant", "@constant"),
        },
    }
end
