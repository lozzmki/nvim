local set = vim.keymap.set
local opt = {noremap = true, silent = true}
set('i', '<C-p>', ":Files<CR>", opt)
set('n', '<C-p>', ":Files<CR>", opt)
set('v', '<C-p>', ":Files<CR>", opt)
