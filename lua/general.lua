local autopairs_ok, autopairs = pcall(require, "nvim-autopairs")
if not autopairs_ok then
  return
end

local gs_ok, gs = pcall(require, "gitsigns")
if not gs_ok then
  return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt", "vim" },
})

gs.setup()
