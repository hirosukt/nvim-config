local opt = vim.opt

opt.title = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.tabstop = 4
opt.smarttab = true
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.history = 2000
opt.cmdheight = 1
opt.showcmd = true
opt.laststatus = 2
opt.cmdwinheight = 5
opt.background = dark
opt.wrap = false
opt.wrapscan = true
opt.linebreak = trues
opt.autoread = true
opt.mouse = a
opt.clipboard = "unnamedplus"
opt.backspace = "start,eol,indent"
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5

vim.cmd("syntax on")
vim.cmd("colorscheme everforest")

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0
