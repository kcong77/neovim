local success, gruvbox = pcall(require, "gruvbox")
if success then
gruvbox.setup({
		underline = false,
		transparent_mode = true,
	})
	vim.cmd([[colorscheme gruvbox]])
end
