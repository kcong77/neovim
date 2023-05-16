local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<Space>", "<Leader>", opts)
vim.g.mapleader = " "

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>s", "<CMD>lua vim.lsp.buf.format()<CR><CMD>w!<CR>", opts)
keymap("n", "<leader>q", "<CMD>lua vim.lsp.buf.format()<CR><CMD>q!<CR>", opts)
keymap("n", "<leader>f", "<CMD>Telescope find_files<CR>", opts)
keymap("n", "<leader>h", "<CMD>Telescope live_grep<CR>", opts)
keymap("n", "<leader>g", "<CMD>Telescope grep_string<CR>", opts)
