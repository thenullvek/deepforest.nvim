---@class DeepForestHighlightSpec
---@field name string name of highlight
---@field bg ?string bg color
---@field fg ?string fg color
---@field link ?string highlight link name
---@field undercurl ?boolean undercurl toggle
---@field underline ?boolean undercurl toggle

local M = {}

--- create a color spec
--- @param fg string
--- @param bg string
--- @param opts ?{[string]:any}
--- @return DeepForestHighlightSpec
M.co = function(name, fg, bg, opts)
    opts = opts or {}
    if fg == nil then
        assert(false, name .. " fg cannot be nil")
    end
    if bg == nil then
        assert(false, name .. " bg cannot be nil")
    end

    return vim.tbl_extend("force", opts, {
        name = name,
        fg = fg,
        bg = bg,
    })
end

--- create a color spec with foreground color
--- @param fg string
--- @param opts ?{[string]:any}
--- @return DeepForestHighlightSpec
M.cf = function(name, fg, opts)
    return M.co(name, fg, "none", opts)
end

--- set only foreground
--- @param name string
--- @param fg string
--- @return DeepForestHighlightSpec
M.fg = function(name, fg)
    return M.co(name, fg, "none")
end

--- set only background
--- @param name string
--- @param bg string
--- @return DeepForestHighlightSpec
M.bg = function(name, bg)
    return M.co(name, "none", bg)
end

--- set only options
--- @param name string
--- @param opts {[string]: any}
--- @return DeepForestHighlightSpec
M.op = function(name, opts)
    return M.co(name, "none", "none", opts)
end

--- create a hi link
--- @param name string
--- @param link string
--- @return DeepForestHighlightSpec
M.ln = function(name, link)
    return {
        name = name,
        link = link,
    }
end

return M
