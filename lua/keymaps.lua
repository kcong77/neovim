local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap(
  "n",
  "<leader>f",
  "<CMD>lua vim.lsp.buf.format({ async = true })<CR><CMD>echo '---------------------------------> FORMATTED <---------------------------------'<CR>",
  opts
)
