local nullls_ok, nullls = pcall(require, "null-ls")
if not nullls_ok then
  print("null_ls not working")
  return
end

nullls.setup({
  sources = {
    nullls.builtins.formatting.stylua.with({
      filetypes = { "lua" },
    }),
    nullls.builtins.formatting.clang_format.with({
      filetypes = { "c", "cpp" },
    }),
    nullls.builtins.formatting.shfmt.with({
      filetypes = { "sh" },
    }),
    nullls.builtins.formatting.prettierd.with({
      filetypes = { "markdown" },
    }),
  },
})
