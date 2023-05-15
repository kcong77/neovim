local loader = require("loader_plugins")

local gruvbox = loader.gruvbox
local treesitter = loader.treesitter
local status = loader.status
local autopairs = loader.autopairs
local gs = loader.gs
local impatient = loader.impatient
local cmp = loader.cmp
local lsp = loader.lsp
local capabilities = loader.capabilities
local mason = loader.mason
local telescope = loader.telescope
local mason_config = loader.mason_config
local mason_nullls = loader.mason_nullls
local nullls = loader.nullls

gruvbox.setup({
	underline = false,
	transparent_mode = true,
})
vim.cmd([[colorscheme gruvbox]])

treesitter.setup({
	ensure_installed = { "lua", "c", "cpp", "bash", "markdown_inline" },
	indent = {
		enable = true,
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
})

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

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_nullls.setup({
	ensure_installed = { "stylua", "clang_format", "shfmt", "prettierd" },
})

mason_config.setup({
	ensure_installed = { "lua_ls", "clangd", "bashls", "marksman" },
	automatic_installation = false,
})

nullls.setup({
	autostart = true,
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
			filetypes = { "markdown", "json", "yaml" },
		}),
	},
})

cmp.setup({
	sources = loader.cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	}),
})

telescope.setup({
	defaults = {
		layout_strategy = "vertical",
		layout_config = {
			width = 0.85,
			height = 0.85,
		},
	},
})

status.setup({
	options = {
		icons_enabled = true,
		theme = "gruvbox",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { { "filename", path = 1, symbols = { modified = "[~]" } } },
		lualine_x = { "encoding", "filetype" },
		lualine_y = { "progress" },
	},
})

autopairs.setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})

gs.setup()

impatient.enable_profile()
