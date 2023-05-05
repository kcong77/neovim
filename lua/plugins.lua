local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

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
  use "windwp/nvim-autopairs"
  use  {"nvim-lualine/lualine.nvim", 
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
  use "lewis6991/gitsigns.nvim"
  if packer_bootstrap then
    require('packer').sync()
  end
end)
