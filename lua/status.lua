local status_ok, status = pcall(require, "lualine")
if not status_ok then
  return
end

status.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    refresh = {
      statusline = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {{'filename', path = 1, symbols = {modified = "[~]"}}},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
  },
}
