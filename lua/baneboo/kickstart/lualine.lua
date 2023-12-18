-- lualine.lua
return {
    'nvim-lualine/lualine.nvim',  -- Specify the lualine plugin path

    config = function()

        local lazy_status = require("lazy.status") -- to configure lazy pending updates count
        local colors = {
            green = "#b8bb26",
            black = "#1d2021",
            orange = "#fe8019",
        }
        -- load the gruvbox theme
        local custom_gruvbox = require("lualine.themes.gruvbox")

        -- Create a custom insert mode theme
        local insert_mode_custom_colors = {
            a = { bg = colors.green, fg = colors.black, gui = "bold" },
        }

        -- Set the insert mode theme in the custom Gruvbox theme
        custom_gruvbox.insert = insert_mode_custom_colors


        require('lualine').setup {
            -- Configuration options for lualine
            options = {
                icons_enabled = false,
                theme = custom_gruvbox,
                component_separators = '|',
                section_separators = '',
            },
            sections = {
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = colors.orange},
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        }
    end,
}

