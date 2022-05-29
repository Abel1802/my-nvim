require('init-plugins')

vim.o.number = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.clipboard = unnamed
vim.o.tabstop = 2
vim.o.autoindent = true
vim.o.scrolloff = 5

local keymap = vim.api.nvim_set_keymap
keymap('n', '<space>', ':', {})
keymap('i', 'jj', '<Esc>', {})
