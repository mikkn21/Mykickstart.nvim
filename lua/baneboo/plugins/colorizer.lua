return {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local colorizer = require("colorizer")

        colorizer.setup({
            user_default_options = {
                names = false,
            },
        })
    end,
}
