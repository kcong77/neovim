local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>s", "<CMD>lua vim.lsp.buf.format({ async = true})<CR><CMD>w!<CR>", opts)
keymap("n", "<leader>q", "<CMD>qa!<CR>", opts)
keymap("n", "<leader>f", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<leader>g", "<CMD>Telescope grep_string<CR>", opts)
keymap("n", "<leader>d", "<CMD>Telescope live_grep<CR>", opts)