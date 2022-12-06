vim.g.mapleader = " "

vim.api.nvim_set_keymap('i','jk','<ESC>', { noremap = true })

vim.o.relativenumber = true

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4 
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.autoindent = true

-- packer 
require('packer-plugins')


