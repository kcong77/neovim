local success, treesitter = pcall(require, "nvim-treesitter.configs")
if success then
	treesitter.setup({
		ensure_installed = "maintained",
		indent = {
			enable = true,
		},
		highlight = {
			enable = true,
		},
	})
end
