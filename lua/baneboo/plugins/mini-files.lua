return {
    "echasnovski/mini.files",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local files = require("mini.files")
        files.setup({

            mappings = {
                close = "q",
                go_in = "l",
                go_in_plus = "L",
                go_out = "h",
                go_out_plus = "H",
                reset = "<BS>",
                reveal_cwd = "@",
                show_help = "g?",
                synchronize = "=",
                trim_left = "<",
                trim_right = ">",
            },
        })

        -- Custom color
        vim.cmd("highlight MiniFilesDirectory guifg=#fabd2f")
        vim.cmd("highlight MiniFilesTitleFocused guifg=#ebdbd2")
        vim.cmd("highlight MiniFilesTitle guifg=#928374")

        -- set keymaps
        local keymap = vim.keymap -- for conciseness
        keymap.set("n", "<leader>fe", "<cmd>: lua MiniFiles.open()<CR>", { desc = "[F]ind file [E]xplorer" })
    end,
}
