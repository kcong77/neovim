local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
  return
end

packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-treesitter/nvim-treesitter"
  use "ellisonleao/gruvbox.nvim"

end)
