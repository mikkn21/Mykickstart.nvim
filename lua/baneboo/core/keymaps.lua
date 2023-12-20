-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps
-- Use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Basic Keymaps for a better default experience
-- Disable the <Space> key in normal and visual modes
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<leader>s>", ":vertical resize +5<CR>", { desc = "Increase window width" })
keymap.set("n", "<leader>s<", ":vertical resize -5<CR>", { desc = "Decrease window width" })
keymap.set("n", "<leader>s+", ":resize +5<CR>", { desc = "Increase window height" })
keymap.set("n", "<leader>s-", ":resize -5<CR>", { desc = "Decrease window height" })

-- cursor stay in place when appending
keymap.set("n", "J", "mzJ`z", { desc = "J appends the line underneath to the current line" })

-- Awesome vertical movement
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u", "<C-u>zz")

-- search team stay in the middle
keymap.set("n", "n", "nzzzv", { desc = "go to next search that stays in middle of screen" })
keymap.set("n", "N", "Nzzzv", { desc = "go to previous search that stays in middle of screen" })


-- Move text up and down
-- using capital v (V) to put the entire line in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Insert empty lines above and below without leaving normal mode
keymap.set("n", "<leader>o", "o<ESC>", { desc = "Inserts empty line below cursor without leaving normal mode" })
keymap.set("n", "<leader>O", "O<ESC>", { desc = "Inserts empty line above cursor without leaving normal mode" })
