vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts) -- ctrl+s save
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts) -- ctrl+q quit

vim.keymap.set('n', 'x', '"_x', opts) -- single character delete without touching clipboard


vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

vim.keymap.set('v', 'p', '"_dP', opts) -- keep last yank




vim.keymap.set('n', '<leader>e', ':Neotree toggle position=left<CR>') -- neotree with space+e

vim.keymap.set('i', '<C-BS>', '<C-W>', opts) -- ctrl+backspace delete last word
vim.keymap.set('i', 'jk', '<Esc>', opts) -- kj to enter normal mode



