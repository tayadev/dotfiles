vim.g.mapleader = ' '

local opts = { noremap = true, silent = true }

-- LSP
vim.api.nvim_set_keymap('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)

-- Fileexplorer (CHADTree)
vim.api.nvim_set_keymap('n', '<Leader>f', ':CHADopen<CR>', opts)
