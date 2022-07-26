-- auto install vim-plug and plugins:

local cfg_path = vim.fn.stdpath('config')

local Plug = vim.fn["plug#"]
vim.call('plug#begin', cfg_path .. '/plugged')

-- plugin on GitHub repo
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'morhetz/gruvbox'
Plug 'szw/vim-maximizer'
-- Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
-- LSP
Plug 'neovim/nvim-lspconfig'
-- Completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
-- vsnip
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
-- TreeSitter
Plug('nvim-treesitter/nvim-treesitter', {
	["do"] = ":TSUpdate"
})
Plug 'nvim-treesitter/playground'
-- Debugger
Plug 'puremourning/vimspector'

vim.call("plug#end")
vim.call("plug#helptags")
