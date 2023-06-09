local success, null = pcall(require, "null-ls")
if success then
	null.setup({
		sources = {
			null.builtins.formatting.stylua.with({
				filetypes = { "lua" },
			}),
			null.builtins.formatting.clang_format.with({
				filetypes = { "cpp" },
			}),
			null.builtins.formatting.shfmt.with({
				filetypes = { "sh" },
			}),
			null.builtins.formatting.prettierd.with({
				filetypes = { "markdown", "json", "yaml", "html", "css", "scss", "javascript", "typescript", "graphql" },
			}),
			null.builtins.formatting.black.with({
				filetypes = { "python" },
			}),
		},
	})
end
