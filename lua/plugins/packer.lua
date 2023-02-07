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
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use ("christoomey/vim-tmux-navigator")
	use ("nvim-treesitter/nvim-treesitter")
	use ("p00f/nvim-ts-rainbow")
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use {
		'hrsh7th/nvim-cmp',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'dcampos/nvim-snippy',
		'dcampos/cmp-snippy'
	}
	use ('neoclide/coc.nvim')

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
