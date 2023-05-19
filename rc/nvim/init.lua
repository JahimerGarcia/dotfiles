require("plugins")

local cmd = vim.cmd
cmd "colorscheme desert"

require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").lua_ls.setup {}
