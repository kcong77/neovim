local success, mason_lspconfig = pcall(require, "mason-lspconfig")
if success then
	mason_lspconfig.setup({
		ensure_installed = { "lua_ls", "clangd", "bashls", "marksman" },
		automatic_installation = false,

	})

end
