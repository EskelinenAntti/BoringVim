-- Use block cursor
vim.opt.guicursor = ""

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- No wrapping because my code is not a burrito
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Something related to search, no idea what
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

-- Always show the sign column (prevents text from shifting when signs appear)
vim.opt.signcolumn = "yes"

-- Allow "@" to be recognized as part of a filename (useful for @-scoped packages or dirs)
vim.opt.isfname:append("@-@")

-- Not sure if need the configs below

vim.opt.updatetime = 50

-- Highlight column 80 to guide line length (good for keeping code readable)
-- vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true
