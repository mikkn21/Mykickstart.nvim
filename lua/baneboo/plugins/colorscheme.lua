return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        local gruvbox = require("gruvbox")
        gruvbox.setup({
            transparent_mode = false,
        })
        -- load the colorscheme here
        vim.cmd([[colorscheme gruvbox]])

        -- change the color of highlight in visual mode
        -- This does not work for on-line highlight
        -- vim.cmd("highlight Visual guibg=#7a1d1e guifg=NONE")
    end,
}
