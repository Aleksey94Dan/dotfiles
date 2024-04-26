
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


vim.g.mapleader = " "

vim.o.number = true
vim.o.spelllang = "ru_ru,en_us"
vim.o.linebreak = true
vim.g.autoformat = false

vim.cmd([[set colorcolumn=80]])


vim.keymap.set('n', '<Leader>t', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<Leader>f', '<Cmd>Neotree focus<CR>')
