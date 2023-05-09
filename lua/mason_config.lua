local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
  print("mason not working!")
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

local mason_config_ok, mason_config = pcall(require, "mason-lspconfig")
if not mason_config_ok then
  print("mason config not working!")
  return
end
mason_config.setup({
  ensure_installed = { "lua_ls", "clangd", "bashls", "marksman" },
  automatic_installation = false,
})

local mason_nullls_ok, mason_nullls = pcall(require, "mason-null-ls")
if not mason_nullls_ok then
  print("mason null_ls not working!")
  return
end
mason_nullls.setup({
  ensure_installed = { "stylua", "clang_format", "shfmt", "prettierd" },
})
