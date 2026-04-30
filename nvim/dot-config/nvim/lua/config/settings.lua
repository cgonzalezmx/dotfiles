local opt = vim.opt

opt.shiftwidth = 2
opt.tabstop = 2
opt.spelllang = { "es", "en" }
opt.number = true
opt.relativenumber = true
opt.smartindent = true

vim.treesitter.language.register('gotmpl', 'html')
vim.cmd[[colorscheme dracula]]
