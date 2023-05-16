local success, lspconfig = pcall(require, "lspconfig")
local cmp_lsp_success, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_success then
	return
end

local capabilities = cmp_lsp.default_capabilities()

vim.diagnostic.config({
	underline = false,
})

if success then
	lspconfig.lua_ls.setup({
		filetypes = { "lua" },
		settings = {
			Lua = {
				runtime = {
					version = "LuaJIT",
				},
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = vim.api.nvim_get_runtime_file("", true),
					checkThirdParty = false,
				},
				telemetry = {
					enable = false,
				},
			},
		},
		capabilities = capabilities,
	})
	lspconfig.clangd.setup({
		filetypes = { "cpp" },
		capabilities = capabilities,
	})
	lspconfig.bashls.setup({
		filetypes = { "sh" },
		capabilities = capabilities,
	})
	lspconfig.marksman.setup({
		filetypes = { "markdown" },
		capabilities = capabilities,
	})
end
