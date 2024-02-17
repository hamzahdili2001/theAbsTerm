return {
	function ()
		local null_ls = require("none-ls")
		null_ls.setup({
				sources = {
						null_ls.builtins.formatting.stylua,
						null_ls.builtins.formatting.black.with({
						extra_args = { "--line-length=80" }
						}),
						null_ls.builtins.formatting.isort,
						null_ls.builtins.diagnostics.eslint,
						null_ls.builtins.diagnostics.pylint,
						null_ls.builtins.completion.spell,
				},
		})
	end,
}
