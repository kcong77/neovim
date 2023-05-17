local success, catppuccin = pcall(require, "catppuccin")
if success then
	catppuccin.setup({
		transparent_background = true,
		-- mocha flavour background color: 0x1e1e2e or rgb(30, 30, 46)
	})
  vim.cmd.colorscheme("catppuccin")
end

