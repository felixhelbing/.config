local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.backspace = "indent,eol,start"
vim.cmd('colorscheme nightfly')
require('lualine').setup({
  options = {
    theme = require("lualine.themes.nightfly"),
  }
})
require('nvim-tree').setup()
