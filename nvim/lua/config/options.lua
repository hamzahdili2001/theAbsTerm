-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.maplocalleader = " "
local op = vim.opt
-- opt.autoindent = false
-- opt.smartindent = false
op.cindent = true
op.number = true
op.expandtab = false
op.shiftwidth = 2
op.textwidth = 80
op.showcmd = true
op.tabstop = 2
op.termguicolors = true
op.wrap = false
op.autowrite = true
op.cursorline = true
vim.g.autoformat = false

local python3_host_prog = vim.env.HOME .. '/.local/venv/nvim/bin/python'

vim.g.python3_host_prog = python3_host_prog
