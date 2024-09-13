local M = {}

---@return DeepForestTheme
return function(color, color_special)
    ---@class DeepForestTheme
    local result = {}
    result.none = "none"

    ---@class DeepForestThemeUI
    result.ui = {
        use_undercurl = true,
        fg_end_of_buffer = color_special.main_background,
        fg_normal = color.gray8,
        bg_normal = color_special.main_background,
        fg_whitespace = color_special.whitespace,

        fg_icon = color.gray4,

        fg_button = color.gray5,
        bg_button = color_special.popup_background,

        fg_button_active = color.gray4,
        bg_button_active = color.gray8,

        fg_title = color.tree8,

        fg_statusline_nc = color.gray4,
        bg_statusline_nc = color.gray1,

        fg_statusline = color.gray7,
        bg_statusline = color_special.statusline,

        fg_tab_nc = color.gray4,
        bg_tab_nc = color.gray2,

        fg_tab_active = color.gray1,
        bg_tab_active = color.gray8,

        fg_line_num = color.gray4,
        fg_line_num_cur = color.gray7,

        fg_border = color.gray4,
        bg_colorcolumn = color.gray1,
        bg_cursorline = color.gray2,

        bg_visual = color.gray8,
        fg_visual = color.black,

        fg_search = color.black,
        bg_search_item = color.lack,
        bg_search_cur = color.gray8,

        bg_scrollbar = color.gray3,
        fg_scrollbar = color.gray5,

        fg_popup = color.gray8,
        bg_popup = color_special.popup_background,

        fg_menu = color.gray6,
        bg_menu = color_special.menu_background,

        fg_telescope = color.gray8,
        bg_telescope = color_special.main_background,
    }

    ---@class DeepForestThemeSyntax
    result.syntax_default = {
        tag = color.gray5,
        var = color.lavender2,
        var_member = color.tree2,
        var_builtin = color.lavender3,
        const = color.lavender1,
        const_builtin = color.lavender1,
        func_method = color.soil1,
        func_def = color.soil,
        func_call = color.soil,
        func_param = color.tree6,
        func_builtin = color.soil2,
        class = color.tree5,
        special = color.lack,
        type = color.tree3,
        type_def = color.tree3,
        type_primitive = color.grass1,
        builtin = color.gray5,
        attribute = color.rosa,
        keyword = color.tree4,
        keyword_return = color.green,
        keyword_exception = color.blue,
        string = color.lack,
        string_escape = color.green,
        punctuation = color.gray6,
        comment = color_special.comment,
        label = color.lavender,
        property = color.tree1,
        ctor_dtor = color.sakura,
        macro = color.soil3,
    }

    ---@type DeepForestThemeTodo
    result.todo = {
        todo = color.sky1,
        note = color.luster,
        perf = color.lavender4,
        warn = color.orange,
        fix = color.red,
        test = color.soil,
        bgfg = color.gray9,
    }

    --- syntax_tweaks get applied by setup()
    ---@type DeepForestThemeSyntax
    result.syntax_tweak = {}

    ---@class DeepForestThemeLog
    result.log = {
        success = color.green,
        info = color.luster,
        warn = color.orange,
        error = color.red,
        debug = color.blue,
        hint = color.gray6,
    }

    ---@class DeepForestThemeDiagnostic
    result.diagnostic = {
        -- NOTE: "text" is used for hover/virtual text and the colors are used as signs
        -- this reduces visual noise (except for error text which should always be red)
        text = color.gray4,
        ok = color.green,
        hint = color.blue,
        error = color.red,
        info = color.gray6,
        warn = color.orange,
        unnecessary = color.gray4,
        deprecated = color.orange,
    }

    ---@class DeepForestThemeFS
    result.fs = {
        dir = color.tree2,
        file = color.tree6,
        exec = color.green,
        link = color.lack,
        binary_data = color.gray7,
        socket = color.gray7,
    }

    ---@class DeepForestThemeDiff
    result.diff = {
        add = color.green,
        change = color.gray6,
        delete = color.orange,
        info = color.blue,
    }

    ---@class DeepForestThemePluginTelescope
    result.plugin_telescope = {
        fg_normal = color.gray8,
        bg_normal = color_special.main_background,
        fg_results = color.gray5,
        bg_selection = color.gray3,
        fg_preview = color.black,
        bg_preview = color.gray9,
        fg_counter = color.gray7,
        fg_border = color.gray7,
    }

    ---@class DeepForestThemePluginCmp
    result.plugin_cmp = {
        kind = color.gray7,
        snippet = color.lack,
        deprecated = color.gray4,
        fuzzymatch = color.sakura,
        interface = color.lavender4,
    }

    ---@class DeepForestThemePluginWhichKey
    result.plugin_which_key = {
        key = color.gray5,
        group = color.lack,
        separator = color.gray4,
    }

    ---@class DeepForestThemePluginLazy
    result.plugin_lazy = {
        special = color.lavender5,
        comment = color.tree2,
        bold = color.sakura2,
        h2 = color.grass4,
        reason_cmd = color.soil2,
        reason_plugin = color.lavender2,
    }

    ---@class DeepForestThemePluginTrouble
    result.plugin_trouble = {
        normal = color.grass2,
        code = color.lavender3,
    }

    ---@class DeepForestThemePluginTree
    result.plugin_tree = {
        bookmark = color.lack,
    }

    ---@class DeepForestThemePluginMason
    result.plugin_mason = {
        highlight = color.lack,
        header = color.lack,
    }

    ---@class DeepForestThemePluginFlash
    result.plugin_flash = {
        fg_label = color_special.popup_background,
        bg_label = color.blue,
        fg_match = color.gray6,
        bg_match = color_special.main_background,
        fg_current = color.black,
        bg_current = color.gray9,
    }

    ---@class DeepForestThemePluginNavic
    result.plugin_navic = {
        icon = color.gray6,
        text = color.gray9,
    }

    ---@class DeepForestThemePluginHeadline
    result.plugin_headline = {
        bg_headline = color.gray5,
        fg_headline = color.gray2,
        bg_code_block = color.gray1,
        fg_dash = color.gray4,
    }

    ---@clas DeepForestThemePluginScrollbar
    result.plugin_scrollbar = {
        bg = color.gray2,
        cursor = color.gray4,
    }

    ---@class DeepForestThemePluginRainbow
    result.plugin_rainbow = {
        red = "#555555",
        yellow = "#999999",
        blue = "#aaaaaa",
        orange = "#cccccc",
        green = "#666666",
        violet = "#BBBBBB",
        cyan = "#DDDDDD",
    }
    return result
end
