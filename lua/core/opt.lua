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
opt.tabstop = 4
opt.cindent = true
opt.shiftwidth = 4
opt.splitright = true
opt.splitbelow = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
opt.termguicolors = true
vim.cmd[[colorscheme iceberg]]
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})

