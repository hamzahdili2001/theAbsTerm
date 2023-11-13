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
		"jose-elias-alvarez/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
					sources = {
							null_ls.builtins.formatting.stylua,
							null_ls.builtins.formatting.black.with({
							extra_args = { "--line-length=70" }
							}),
							null_ls.builtins.formatting.isort,
							null_ls.builtins.diagnostics.eslint,
							null_ls.builtins.diagnostics.pylint,
							null_ls.builtins.completion.spell,
					},
			})
		end

	}
}
