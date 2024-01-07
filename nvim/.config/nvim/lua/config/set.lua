local opt = vim.opt

-- use system clipboard as default register
opt.clipboard:append("unnamedplus")

opt.nu = true
opt.rnu = true

opt.wrap = false
opt.scrolloff = 8

-- Search
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- UI
opt.guicursor = ""
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "80"
opt.cursorline = true

-- Indent
opt.smartindent = true
opt.softtabstop = 4
opt.tabstop = 4      -- insert 4 spaces
opt.shiftwidth = 4   -- mange indentation when use << and >> operators
opt.expandtab = true -- use spaces indenting

-- Undo
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
