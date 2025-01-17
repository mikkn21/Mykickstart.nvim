-- which-key.lua
return {
    -- Specify the plugin path
    'folke/which-key.nvim',

    -- which-key setup function
    config = function()
        local which_key = require('which-key')

        -- Configure which-key
        which_key.setup {
            -- Your specific which-key configuration here
        }

        -- Register your keybindings here
        which_key.register({
            ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
            ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
            ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
            ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
            ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
            ['<leader>s'] = { name = '[S]plit window', _ = 'which_key_ignore' },
            ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
            ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
            ['<leader>f'] = {
                name = '[F]ind',
                _ = 'which_key_ignore',
                s = { name = '[S]econd layer' },
                -- Add other bindings for '<leader>f' submenu if needed
            },
            ['<leader>m'] = { name = 'Harpoon [M]ark', _ = 'which_key_ignore' },
            -- Add additional keybindings as needed
        })

        -- Optional: Configure which-key for VISUAL mode, if required
        which_key.register({
            ['<leader>'] = { name = 'VISUAL <leader>' },
            ['<leader>h'] = { 'Git [H]unk' },
        }, { mode = 'v' })
    end,
}

