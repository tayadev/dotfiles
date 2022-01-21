require('options')
require('plugins')
require('keymap')
require('lsp')

-- Theme
vim.opt.termguicolors = true
vim.cmd('colorscheme catppuccin')
vim.cmd('highlight Normal guibg=none')
