local set = vim.keymap.set
local opt = {noremap = true, silent = true}
set('i', '<C-p>', ":GFiles<CR>", opt)
set('n', '<C-p>', ":GFiles<CR>", opt)
set('v', '<C-p>', ":GFiles<CR>", opt)
