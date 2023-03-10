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
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
vim.cmd[[colorscheme gruvbox]]
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})
-- indent
vim.cmd [[
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
    autocmd FileType vue setlocal shiftwidth=2 tabstop=2
]]
opt.expandtab = true
