local success, treesitter = pcall(require, "nvim-treesitter.configs")
if success then
	treesitter.setup({
		ensure_installed = { "lua", "cpp", "bash", "markdown" },
		indent = {
			enable = true,
		},
		highlight = {
			enable = true,
		},
	})
end