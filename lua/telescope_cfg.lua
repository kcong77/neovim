local success, telescope = pcall(require, "telescope")
if success then
	telescope.setup({
		defaults = {
			layout_strategy = "vertical",
			layout_config = {
				width = 0.85,
				height = 0.85,
			},
		},
	})
end
