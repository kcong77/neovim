local lsp_ok, lsp = pcall(require, "lspconfig")
if not lsp_ok then
  return
end


lsp.lua_ls.setup({
settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
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
  filetypes = { "c", "cpp" }
})

lsp.marksman.setup({
  filetypes = { "markdown"}
})

lsp.bashls.setup({
  filetypes = {"sh"}
})

lsp.yamlls.setup({
  settings = {
    yaml = {

    }
  }
})
