local success, lspconfig = pcall(require, "lspconfig")
local _, cmp_lsp = pcall(require, "cmp_nvim_lsp")

local capabilities = cmp_lsp.default_capabilities()

if _ then
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
end
