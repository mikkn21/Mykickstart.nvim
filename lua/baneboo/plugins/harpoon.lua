return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness
         
        -- both of these are required
        local harpoon = require("harpoon")
        harpoon:setup({
            settings = {
                save_on_toggle = true,
            }
        })
        
        local hp = harpoon:list()
        

        keymap.set("n", "<leader>ma", function () hp:append()  end, { desc = "Harpoon [M]ark [A]dd" }) 
        keymap.set("n", "<leader>me", function () harpoon.ui:toggle_quick_menu(hp) end, { desc = "Harpoon [M]ark [E]xplore ui " })

        keymap.set("n", "<leader>m1", function() hp:select(1)  end, { desc = "Harpoon [M]ark goto [1]"})
        keymap.set("n", "<leader>m2", function() hp:select(2)  end, {desc = "Harpoon [M]ark goto [2]"})
        keymap.set("n", "<leader>m3", function() hp:select(3)  end, { desc = "Harpoon [M]ark goto [3]"})
        keymap.set("n", "<leader>m4", function() hp:select(4)  end, { desc = "Harpoon [M]ark goto [4]"})

        keymap.set("n", "<leader>mn", function() hp.next()  end, { desc = "Harpoon [M]ark goto [N]ext" })
        keymap.set("n", "<leader>mp", function() hp.prev() end,  { desc = "Harpoon [M]ark goto [P]revious" })
    end,
}
