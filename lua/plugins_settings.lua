local theme_ok, theme = pcall(require, "gruvbox")
if not theme_ok then
  print("gruvbox not working!")
  return
end

local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not treesitter_ok then
  print("treesitter not working!")
  return
end

local status_ok, status = pcall(require, "lualine")
if not status_ok then
  print("lualine not working!")
  return
end

local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then
  print("autopairs not working!")
  return
end

local gs_ok, gs = pcall(require, "gitsigns")
if not gs_ok then
  print("gitsigns not working!")
  return
end

local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
  print("mason not working!")
  return
end

local mason_config_ok, mason_config = pcall(require, "mason-lspconfig")
if not mason_config_ok then
  print("mason config not working!")
  return
end

local lsp_ok, lsp = pcall(require, "lspconfig")
if not lsp_ok then
  print("lsp not working!")
  return
end

local nullls_ok, nullls = pcall(require, "null-ls")
if not nullls_ok then
  print("null_ls not working")
  return
end

local mason_nullls_ok, mason_nullls = pcall(require, "mason-null-ls")
if not mason_nullls_ok then
  print("mason null_ls not working!")
  return
end

local formatting = nullls.builtins.formatting

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

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_config.setup({
  ensure_installed = { "lua_ls", "clangd" },
  automatic_installation = false,
})

mason_nullls.setup({
    ensure_installed = { "stylua", "clang_format" }
})

treesitter.setup({
  ensure_installed = { "lua", "c", "cpp" }
})

status.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { { 'filename', path = 1, symbols = { modified = "[~]" } } },
    lualine_x = { 'encoding', 'filetype' },
    lualine_y = { 'progress' },
  },
}


autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})

gs.setup()

nullls.setup({
  formatting.stylua.with({
    filetypes = { "lua" }
  }),
  formatting.clang_format.with({
    filetypes = { "c", "cpp" }
  })
})

lsp.lua_ls.setup({
  filetypes = { "lua" },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

lsp.clangd.setup({
  filetypes = { "c", "cpp" },
})

vim.cmd([[colorscheme gruvbox]])
