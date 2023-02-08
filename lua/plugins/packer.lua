local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'cocopon/iceberg.vim'
	use { "ellisonleao/gruvbox.nvim" }
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use ("christoomey/vim-tmux-navigator")
--	use ("nvim-treesitter/nvim-treesitter")
--	use ("p00f/nvim-ts-rainbow")
----use {
----	"williamboman/mason.nvim",
----	"williamboman/mason-lspconfig.nvim",
----	"neovim/nvim-lspconfig",
----}

	use ('neoclide/coc.nvim')
	use ('dyng/ctrlsf.vim')
--	use ('ctrlpvim/ctrlp.vim')
	use { 'junegunn/fzf', run = ":call fzf#install()" }
	use {'junegunn/fzf.vim'}

	vim.cmd([[
		augroup packer_user_config
			autocmd!
			autocmd BufWritePost packer.lua source <afile> | PackerSync
		augroup end
	]])
	if packer_bootstrap then
		require('packer').sync()
	end
end)
