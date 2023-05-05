local nullls_ok, nullls = pcall(require, "null-ls")
if not nullls_ok then
  return
end

local formatting = nullls.builtins.formatting


nullls.setup({

  formatting.stylua.with({
    filetypes = { "lua" }
  }),
  formatting.clang_format.with({
    filetypes = { "c", "cpp" }
  })
})
