-- Fuzzy Finder (files, lsp, etc)
return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
			cond = function()
				return vim.fn.executable 'make' == 1
			end,
		},
	},
	config = function()
		local telescope = require('telescope')
		local t_builtin = require('telescope.builtin')

		-- Telescope setup configuration
		telescope.setup {
			defaults = {
				mappings = {
					i = {
						['<C-u>'] = false,
						['<C-d>'] = false,
					},
				},
			},
		}

		-- Enable telescope fzf native, if installed
		pcall(require('telescope').load_extension, 'fzf')

		-- Function to find the git root directory
		local function find_git_root()
			-- Use the current buffer's path as the starting point for the git search
			local current_file = vim.api.nvim_buf_get_name(0)
			local current_dir
			local cwd = vim.fn.getcwd()
			-- If the buffer is not associated with a file, return nil
			if current_file == '' then
				current_dir = cwd
			else
				-- Extract the directory from the current file's path
				current_dir = vim.fn.fnamemodify(current_file, ':h')
			end
			-- Find the Git root directory from the current file's path
			local git_root = vim.fn.systemlist('git -C ' ..
			vim.fn.escape(current_dir, ' ') .. ' rev-parse --show-toplevel')[1]
			if vim.v.shell_error ~= 0 then
				print 'Not a git repository. Searching on current working directory'
				return cwd
			end
			return git_root
		end

		local function live_grep_git_root()
			local git_root = find_git_root()
			if git_root then
				telescope.builtin.live_grep {
					search_dirs = { git_root },
				}
			end
		end


		local function current_buffer_fuzzy_find()
			local telescope_builtin = require('telescope.builtin')
			local telescope_themes = require('telescope.themes')

			telescope_builtin.current_buffer_fuzzy_find(telescope_themes.get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end


		local function telescope_live_grep_open_files()
			require('telescope.builtin').live_grep({
				grep_open_files = true,
				prompt_title = 'Live Grep in Open Files',
			})
		end

		-- Create a user command 'LiveGrepGitRoot'
		vim.api.nvim_create_user_command('LiveGrepGitRoot', live_grep_git_root, {})



		-- Telescope key mappings
		local keymap = vim.keymap -- for conciseness

		-- Find recently opened files
		keymap.set('n', '<leader>?', t_builtin.oldfiles, { desc = '[?] Find recently opened files' })


		-- Find existing buffers
		keymap.set('n', '<leader><space>', t_builtin.buffers, { desc = '[ ] Find existing buffers' })

		-- Fuzzily search in the current buffer
		keymap.set('n', '<leader>/', current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer' })

		-- Search in open files using live grep
		keymap.set('n', '<leader>s/', telescope_live_grep_open_files, { desc = '[S]earch [/] in Open Files' })

		-- Select Telescope search options
		keymap.set('n', '<leader>ss', t_builtin.builtin, { desc = '[S]earch [S]elect Telescope' })

		-- Search Git files
		keymap.set('n', '<leader>gf', t_builtin.git_files, { desc = 'Search [G]it [F]iles' })

		-- Search files
		keymap.set('n', '<leader>sf', t_builtin.find_files, { desc = '[S]earch [F]iles' })

		-- Search help tags
		keymap.set('n', '<leader>shd', t_builtin.help_tags, { desc = '[S]earch [H]elp' })

		-- Search the current word
		keymap.set('n', '<leader>sw', t_builtin.grep_string, { desc = '[S]earch current [W]ord' })

		-- Search by grep
		keymap.set('n', '<leader>sg', t_builtin.live_grep, { desc = '[S]earch by [G]rep' })

		-- Search by grep in Git root directory
		keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })

		-- Search diagnostics
		keymap.set('n', '<leader>sd', t_builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

		-- Resume previous Telescope search
		keymap.set('n', '<leader>sr', t_builtin.resume, { desc = '[S]earch [R]esume' })
	end,
}
