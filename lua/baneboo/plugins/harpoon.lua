return {
    "theprimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")




        keymap.set("n", "<leader>ma", mark.add_file, { desc = "Harpoon [M]ark [A]dd" })
        keymap.set("n", "<leader>me", ui.toggle_quick_menu, { desc = "Harpoon [M]ark [E]xplore ui " })
        keymap.set("n", "<leader>m1", function()
            ui.nav_file(1)
        end, { desc = "Harpoon [M]ark goto [1]"})
        keymap.set("n", "<leader>m2", function()
            ui.nav_file(2)
        end, { desc = "Harpoon [M]ark goto [2]"})
        keymap.set("n", "<leader>m3", function()
            ui.nav_file(3)
        end, { desc = "Harpoon [M]ark goto [3]"})
        keymap.set("n", "<leader>m4", function()
            ui.nav_file(4)
        end, { desc = "Harpoon [M]ark goto [4]"})
        keymap.set("n", "<leader>mn", ui.nav_next, { desc = "Harpoon [M]ark goto [N]ext" })
        keymap.set("n", "<leader>mp", ui.nav_prev, { desc = "Harpoon [M]ark goto [P]revious" })
    end,
}
