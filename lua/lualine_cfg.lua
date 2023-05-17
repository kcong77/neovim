local success, lualine = pcall(require, "lualine")
if success then
	lualine.setup({
		options = {
			icons_enabled = true,
			theme = "catppuccin",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = { { "filename", path = 1, symbols = { modified = "[~]" } } },
			lualine_x = { "encoding", "filetype" },
			lualine_y = { "progress" },
		},
	})
end
