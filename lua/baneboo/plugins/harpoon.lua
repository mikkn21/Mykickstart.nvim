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




        keymap.set("n", "<leader>la", mark.add_file, { desc = "[L]Harpoon [A]dd file with harpoon" })
        keymap.set("n", "<leader>le", ui.toggle_quick_menu, { desc = "[L]Harpoon [E]xplore menu" })
        keymap.set("n", "<leader>l1", function()
            ui.nav_file(1)
        end, { desc = "[L]Harpoon goto mark [1]"})
        keymap.set("n", "<leader>l2", function()
            ui.nav_file(2)
        end, { desc = "[L]Harpoon goto mark [2]"})
        keymap.set("n", "<leader>l3", function()
            ui.nav_file(3)
        end, { desc = "[L]Harpoon goto mark [3]"})
        keymap.set("n", "<leader>l4", function()
            ui.nav_file(4)
        end, { desc = "[L]Harpoon goto mark [4]"})
        keymap.set("n", "<leader>ln", ui.nav_next, { desc = "[L]Harpoon goto [N]ext harpoon mark" })
        keymap.set("n", "<leader>lp", ui.nav_prev, { desc = "[L]Harpoon goto [P]revious harpoon mark" })
    end,
}
