-- This is the automatic installation of package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "



require("lazy").setup({
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v2.x',
	dependencies = {
		-- LSP Support
		{ 'neovim/nvim-lspconfig' }, -- Required
		{'williamboman/mason.nvim'},
		{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

		-- Autocompletion
		{ 'hrsh7th/nvim-cmp' }, -- Required
		{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
		{ 'L3MON4D3/LuaSnip' }, -- Required
	}
})
