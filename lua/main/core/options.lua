local opt=vim.opt

--line numbers
--opt.number=true
opt.relativenumber=true

--tabs
opt.tabstop=4
opt.softtabstop=4
opt.shiftwidth=4
opt.expandtab=true
opt.autoindent=true

--line-wrapping
opt.wrap=true

--search-settings
opt.ignorecase=true
opt.smartcase=true

--colors
opt.termguicolors=true
opt.background="dark"
opt.signcolumn="yes"

--backspace
opt.backspace="eol,indent,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split window
opt.splitright=true
opt.splitbelow=true

--scrolling
opt.scrolloff=8

opt.iskeyword:append("-")

