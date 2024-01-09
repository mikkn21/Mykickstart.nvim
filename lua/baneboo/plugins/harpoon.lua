return {
    "theprimeagen/harpoon2",
    brance = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness
        
        local harpoon = require("harpoon")

        -- required now
        harpoon:setup()



        keymap.set("n", "<leader>ma", function () harpoon:list():append()  end) { desc = "Harpoon [M]ark [A]dd" }
        keymap.set("n", "<leader>me", function () harpoon.ui:toogle_quick_menu(harpoon:list())  end) { desc = "Harpoon [M]ark [E]xplore ui " }

        keymap.set("n", "<leader>m1", function() harpoon:list():select(1)  end){ desc = "Harpoon [M]ark goto [1]"}
        keymap.set("n", "<leader>m2", function() harpoon:list():select(2)  end){desc = "Harpoon [M]ark goto [2]"}
        keymap.set("n", "<leader>m3", function() harpoon:list():select(3)  end){ desc = "Harpoon [M]ark goto [3]"}
        keymap.set("n", "<leader>m4", function() harpoon:list():select(4)  end){ desc = "Harpoon [M]ark goto [4]"}

        keymap.set("n", "<leader>mn", function() harpoon:list().next()  end) { desc = "Harpoon [M]ark goto [N]ext" }
        keymap.set("n", "<leader>mp", function() harpoon:list().prev() end)  { desc = "Harpoon [M]ark goto [P]revious" }
    end,
}
