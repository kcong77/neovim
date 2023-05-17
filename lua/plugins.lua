local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

local success, packer = pcall(require, "packer")
if success then
	packer.init({
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "rounded" })
			end,
		},
	})

	return packer.startup(function(use)
		use("wbthomason/packer.nvim")
		use("nvim-lua/plenary.nvim")
		use({ "catppuccin/nvim", as = "catppuccin" })
		use("windwp/nvim-autopairs")
		use("nvim-treesitter/nvim-treesitter")
		use("nvim-lualine/lualine.nvim")
		use({ "nvim-tree/nvim-web-devicons", opt = true })
		use("lewis6991/gitsigns.nvim")
		use("nvim-telescope/telescope.nvim")
		use("lewis6991/impatient.nvim")
		use("williamboman/mason.nvim")
		use("williamboman/mason-lspconfig.nvim")
		use("neovim/nvim-lspconfig")
		use("jay-babu/mason-null-ls.nvim")
		use("jose-elias-alvarez/null-ls.nvim")
		use("hrsh7th/nvim-cmp")
		use("hrsh7th/cmp-nvim-lsp")
		use("hrsh7th/cmp-buffer")
		use("hrsh7th/cmp-path")
		use("L3MON4D3/LuaSnip")
		use("saadparwaiz1/cmp_luasnip")
		use("numToStr/Comment.nvim")

		if packer_bootstrap then
			packer.sync()
		end
	end)
end
