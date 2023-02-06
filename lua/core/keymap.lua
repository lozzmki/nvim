local set = vim.keymap.set 
local default_opts = { noremap = true, silent = true}
local expr_opts = { noremap = true, expr = true, silent = true }

-- nvim-tree
set("n", "<C-b>", ":NvimTreeToggle<CR>") 
