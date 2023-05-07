local cmp_ok, cmp = pcall(require, "cmp")
if not cmp_ok then
  print("cmp not working!")
  return
end

cmp.setup({
  mapping = {

    ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
  },
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "buffer" },
    { name = "path" },
  }),
})
