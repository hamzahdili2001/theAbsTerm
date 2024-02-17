-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Set The theme
vim.cmd([[
  augroup AutoBlackPython
    autocmd!
    autocmd BufWritePost *.py !black -l 70 %
  augroup END
]])

vim.g.blamer_enabled = true
vim.g.blamer_delay = 100
vim.g.blamer_prefix = '  ➜ '

local cmp = require('cmp')
cmp.popup = {
  hidden = true,
}
