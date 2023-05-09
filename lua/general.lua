local theme_ok, theme = pcall(require, "gruvbox")
if not theme_ok then
  print("gruvbox not working!")
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
  transparent_mode = false,
})
vim.cmd([[colorscheme gruvbox]])

local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
  print("treesitter not working!")
  return
end
treesitter.setup({
  ensure_installed = { "lua", "c", "cpp", "bash", "markdown" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

local status_ok, status = pcall(require, "lualine")
if not status_ok then
  print("lualine not working!")
  return
end
status.setup({
  options = {
    icons_enabled = true,
    theme = "gruvbox",
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

local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then
  print("autopairs not working!")
  return
end
autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})

local gs_ok, gs = pcall(require, "gitsigns")
if not gs_ok then
  print("gitsigns not working!")
  return
end
gs.setup()

local impatient_ok, impatient = pcall(require, "impatient")
if not impatient_ok then
  return
end
impatient.enable_profile()
