local success, treesitter = pcall(require, "nvim-treesitter.configs")
if success then
	treesitter.setup({
		ensure_installed = "all",
		indent = {
			enable = true,
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
	})
end
