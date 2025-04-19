-- leader keys
vim.g.mapleader = ","
vim.g.maplocalleader = ","

require("config.lazy")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- keymaps
vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>l', ':vsplit<CR>')
vim.keymap.set('n', '<leader>k', ':split<CR>')
vim.keymap.set('n', '<leader>0', '<C-w>o')

-- number and relnumber
vim.opt.nu = true
vim.opt.rnu = true

-- tabs
vim.opt.ts = 2
vim.opt.shiftwidth= 2
vim.opt.expandtab = true

require("kanagawa").setup({
    transparent = true,
    terminalColors=true,
  })

-- colorscheme
vim.cmd("colorscheme kanagawa-dragon")




