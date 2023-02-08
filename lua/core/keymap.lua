local set = vim.keymap.set
local default_opts = { noremap = true, silent = false}
local expr_opts = { noremap = true, expr = true, silent = true }

--[[
--nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

set("n", "<C-F>f", "<Plug>CtrlSFPrompt", default_opts)
set("v", "<C-F>f", "<Plug>CtrlSFVwordPath", default_opts)
set("v", "<C-F>F", "<Plug>CtrlSFVwordExec", default_opts)
set("n", "<C-F>n", "<Plug>CtrlSFCwordPath", default_opts)
set("n", "<C-F>p", "<Plug>CtrlSFPwordPath", default_opts)
set("n", "<C-F>o", ":CtrlSFOpen<CR>", default_opts)
set("n", "<C-F>t", ":CtrlSFToggle<CR>", default_opts)
set("i", "<C-F>t", "<<Esc>:CtrlSFToggle<CR>", default_opts)

]]
set("", "<C-F>f", ":Ag", default_opts)
set("", "<A-j>", ":m +1<cr>", default_opts)
set("", "<A-k>", ":m -2<cr>", default_opts)
set("", "<C-j>", "<C-e>", default_opts)
set("", "<C-k>", "<C-y>", default_opts)
