local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then
  return
end

telescope.setup({
  defaults = {
    layout_strategy = "vertical",
    layout_config = {
      width = 0.85,
      height = 0.85,
    },
  },
})
