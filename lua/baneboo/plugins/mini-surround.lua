return {
    "echasnovski/mini.surround",
    version = "*",
    config = function()
        local files = require("mini.surrounds")
        files.setup({
            -- Module mappings. Use `''` (empty string) to disable one.
            mappings = {
                add = 'sa', -- Add surrounding in Normal and Visual modes
                delete = 'sd', -- Delete surrounding
                find = 'sf', -- Find surrounding (to the right)
                find_left = 'sF', -- Find surrounding (to the left)
                highlight = 'sh', -- Highlight surrounding
                replace = 'sr', -- Replace surrounding
                update_n_lines = 'sn', -- Update `n_lines`

                suffix_last = 'l', -- Suffix to search with sprev" method
                suffix_next = 'n', -- Suffix to search with "next" method
            },
        })
    end,
}



