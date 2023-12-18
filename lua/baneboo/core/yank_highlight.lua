return {
    -- This could be the name of an imaginary plugin if it was one,
    -- but since this is just a configuration, we don't need a plugin path.
    config = function()
        -- Highlight on yank
        local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
        vim.api.nvim_create_autocmd('TextYankPost', {
            callback = function()
                vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
            end,
            group = highlight_group,
            pattern = '*',
        })
    end,
}

