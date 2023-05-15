local gruvbox_ok, gruvbox = pcall(require, "gruvbox")
if not gruvbox_ok then
	print("gruvbox not working!")
	return
end

local cmp_ok, cmp = pcall(require, "cmp")
if not cmp_ok then
	print("cmp not working!")
	return
end

local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
	print("treesitter not working!")
	return
end

local status_ok, status = pcall(require, "lualine")
if not status_ok then
	print("lualine not working!")
	return
end

local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then
	print("autopairs not working!")
	return
end

local gs_ok, gs = pcall(require, "gitsigns")
if not gs_ok then
	print("gitsigns not working!")
	return
end

local impatient_ok, impatient = pcall(require, "impatient")
if not impatient_ok then
	print("impatient not working!")
	return
end

local lsp_ok, lsp = pcall(require, "lspconfig")
if not lsp_ok then
	print("lsp not working!")
	return
end

local cmp_lsp_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_ok then
	print("cmp_nvim_lsp not working!")
	return
end

local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
	print("mason not working!")
	return
end

local mason_config_ok, mason_config = pcall(require, "mason-lspconfig")
if not mason_config_ok then
	print("mason config not working!")
	return
end

local mason_nullls_ok, mason_nullls = pcall(require, "mason-null-ls")
if not mason_nullls_ok then
	print("mason null_ls not working!")
	return
end

local nullls_ok, nullls = pcall(require, "null-ls")
if not nullls_ok then
	print("null_ls not working")
	return
end

local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
	print("telescope not working!")
	return
end

local capabilities = cmp_lsp.default_capabilities()

local loader = {
	gruvbox = gruvbox,
	treesitter = treesitter,
	status = status,
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
