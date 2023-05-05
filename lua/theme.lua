local theme_ok, theme = pcall(require, "gruvbox")
if not theme_ok then
	return	
end

theme.setup({
 undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = false,
    comments = true,
    operators = false,
    folds = true,
  },
  transparent_mode = true,
})

vim.cmd([[colorscheme gruvbox]])

