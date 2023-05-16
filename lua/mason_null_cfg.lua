local success, mason_null = pcall(require, "mason-null-ls")
if success then
	mason_null.setup({
		ensure_installed = { "stylua", "clang_format", "shfmt", "prettierd" },
	})
end
