ALL_PLUGINS_LOADED_SUCCESSFULL = true

function PLUGIN_FAILED_LOAD()
	return false
end

local gruvbox_ok, gruvbox = pcall(require, "gruvbox")
if not gruvbox_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local cmp_ok, cmp = pcall(require, "cmp")
if not cmp_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local lualine_ok, lualine = pcall(require, "lualine")
if not lualine_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local gs_ok, gs = pcall(require, "gitsigns")
if not gs_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local impatient_ok, impatient = pcall(require, "impatient")
if not impatient_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local lsp_ok, lsp = pcall(require, "lspconfig")
if not lsp_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local cmp_lsp_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local mason_config_ok, mason_config = pcall(require, "mason-lspconfig")
if not mason_config_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local mason_nullls_ok, mason_nullls = pcall(require, "mason-null-ls")
if not mason_nullls_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local nullls_ok, nullls = pcall(require, "null-ls")
if not nullls_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
	ALL_PLUGINS_LOADED_SUCCESSFULL = PLUGIN_FAILED_LOAD()
	return
end

local capabilities = cmp_lsp.default_capabilities()

local loader = {

ALL_PLUGINS_LOADED_SUCCESSFULL = ALL_PLUGINS_LOADED_SUCCESSFULL, 
	gruvbox = gruvbox,
	treesitter = treesitter,
	lualine = lualine,
	autopairs = autopairs,
	gs = gs,
	impatient = impatient,
	cmp = cmp,
	lsp = lsp,
	capabilities = capabilities,
	mason = mason,
	mason_config = mason_config,
	mason_nullls = mason_nullls,
	nullls = nullls,
	telescope = telescope,
}

return loader
