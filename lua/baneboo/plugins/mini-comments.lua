return {
    "/echasnovski/mini.comment",
    version = "*",
    config = function()
        local files = require("mini.comment")
        files.setup({
            -- Module mappings. Use `''` (empty string) to disable one.
            mappings = {
                -- Toggle comment (like `gcip` - comment inner paragraph) for both
                -- Normal and Visual modes
                comment = 'gc',

                -- Toggle comment on current line
                comment_line = 'gcc',

                -- Toggle comment on visual selection
                comment_visual = 'gc',

                -- Define 'comment' textobject (like `dgc` - delete whole comment block)
                -- Works also in Visual mode if mapping differs from `comment_visual`
                textobject = 'gc',
            },
        })

    end,
}
