local lsp_ok, lsp = pcall(require, "lspconfig")
if not lsp_ok then
  print("lsp not working!")
  return
end

local cmp_lsp_ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_lsp_ok then
  print("cmp_nvim_lsp not working!")
  return
end

local capabilities = cmp_lsp.default_capabilities()

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
  capabilities = capabilities,
})

lsp.clangd.setup({
  filetypes = { "c", "cpp" },
  capabilities = capabilities,
})

lsp.bashls.setup({
  filetypes = { "sh" },
  capabilities = capabilities,
})

lsp.marksman.setup({
  filetypes = { "markdown" },
  capabilities = capabilities,
})
