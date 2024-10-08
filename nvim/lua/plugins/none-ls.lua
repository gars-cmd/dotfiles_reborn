return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
                -- LIST OF SOURCES : https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.codespell,
                null_ls.builtins.formatting.isort,
                null_ls.builtins.formatting.gofumpt,
                null_ls.builtins.formatting.goimports_reviser,


                -- null_ls.builtins.diagnostics.flake8,
                null_ls.builtins.diagnostics.cppcheck,
                -- null_ls.builtins.diagnostics.luacheck,
                null_ls.builtins.diagnostics.mypy,

                -- null_ls.builtins.code_actions.shellcheck,
                -- null_ls.builtins.code_actions.cspell,

			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
