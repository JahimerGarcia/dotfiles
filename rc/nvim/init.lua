require("plugins")
require("lsp")
local cmd = vim.cmd
local keymap = vim.keymap

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

cmd "colorscheme industry"
-- https://github.com/VonHeikemen/lsp-zero.nvim/tree/v2.x -> This is my main dependency


