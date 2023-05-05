local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
  return
end

local mason_config_ok, mason_config = pcall(require, "mason-lspconfig")
if not mason_config_ok then
  return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_config.setup({
    ensure_installed = { "lua_ls", "clangd", "marksman", "bashls", "yamlls"  },
    automatic_installation = false,
})
