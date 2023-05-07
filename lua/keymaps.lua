local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Change <leader> to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Format code when <leader>f
keymap("n", "<leader>f", "<CMD>lua vim.lsp.buf.format({ async = true })<CR><CMD>echo 'FORMATTED'<CR>", opts)
-- Find files in current folder
keymap("n", "<leader>s", "<CMD>Telescope find_files<CR>", opts)
-- Find words in current folder
keymap("n", "<leader>g", "<CMD>Telescope live_grep<CR>", opts)
