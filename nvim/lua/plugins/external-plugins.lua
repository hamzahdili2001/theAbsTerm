return {
	-- color scheme
	{
	"hamzahdili2001/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("nordic").load()
  end
	},

	-- color highlight
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require('nvim-highlight-colors').setup {}
		end
	},

	{
		"nvim-lua/plenary.nvim",
		config = function()
			require "plenary.async"
		end
	},

	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
					sources = {
							null_ls.builtins.formatting.stylua,
							null_ls.builtins.formatting.black.with({
							extra_args = { "--line-length=60" }
							}),
							null_ls.builtins.formatting.isort,
							null_ls.builtins.diagnostics.eslint_d,
							null_ls.builtins.diagnostics.pylint,
							null_ls.builtins.diagnostics.pycodestyle,
							null_ls.builtins.formatting.biome,
							null_ls.builtins.formatting.prettier,
					},
			})
		end

	},

	{
		-- gitlines.
		"APZelos/blamer.nvim",
	},

	{
		"lewis6991/gitsigns.nvim",
		config = function ()
			require('gitsigns').setup {
			signs = {
				add          = { text = '│' },
				change       = { text = '│' },
				delete       = { text = '_' },
				topdelete    = { text = '‾' },
				changedelete = { text = '~' },
				untracked    = { text = '┆' },
			},
			signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
			numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
			linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
			word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
			watch_gitdir = {
				follow_files = true
			},
			attach_to_untracked = true,
			current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
			current_line_blame_opts = {
				virt_text = true,
				virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
				delay = 1000,
				ignore_whitespace = false,
				virt_text_priority = 100,
			},
			current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
			sign_priority = 6,
			update_debounce = 100,
			status_formatter = nil, -- Use default
			max_file_length = 40000, -- Disable if file is longer than this (in lines)
			preview_config = {
				-- Options passed to nvim_open_win
				border = 'single',
				style = 'minimal',
				relative = 'cursor',
				row = 0,
				col = 1
			},
			yadm = {
				enable = false
			},
		}
		end
	}
}
