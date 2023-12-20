-- indent_blankline.lua
return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',  
    dependencies = { 'nvim-treesitter/nvim-treesitter' },  -- Tree-sitter as a dependency
    config = function()
        require('ibl').setup()
    end
}

