vim.opt.guicursor = ""

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.path:append("**")
vim.opt.wildmenu = true
vim.opt.wildignore:append("**/node_modules/*")
vim.opt.wildignore:append("**/.git/*")

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.textwidth = 80
vim.opt.listchars = {
  eol = "$",
  tab = ">-",
	trail = "~",
	extends = ">",
	precedes = "<",
	space = "·",
};

vim.opt.smartindent = true

vim.opt.wrap = false
