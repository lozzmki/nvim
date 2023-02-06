local opt = vim.opt
local g = vim.g
opt.relativenumber = true
opt.cursorline = true
opt.number = true
opt.signcolumn = 'yes' 
opt.smartcase = true
opt.ignorecase = true
opt.autoindent = true
opt.smartindent = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true
vim.cmd[[colorscheme iceberg]]
