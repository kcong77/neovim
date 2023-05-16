local success, cmp = pcall(require, "cmp")
if success then
	cmp.setup({
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "buffer" },
			{ name = "path" },
		}),
	})
end
