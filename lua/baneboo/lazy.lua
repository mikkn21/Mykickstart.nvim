local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "baneboo.plugins" },     -- Importing your plugin configurations, including colorscheme
    { import = "baneboo.kickstart" }, -- Importing your kickstarter configurations
    -- You can add more imports as needed
}, {
    -- Remove the colorscheme option from here since it's managed in colorscheme.lua
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
})

