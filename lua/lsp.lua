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

local mason_nullls_ok, mason_nullls = pcall(require, "mason-null-ls")
if not mason_nullls_ok then
  print("mason null_ls not working!")
  return
end

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
  ensure_installed = { "stylua", "clang_format" },
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
