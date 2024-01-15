local keymap=vim.keymap
vim.g.mapleader=" "

keymap.set("n","<leader>pv",":Ex<CR>")

keymap.set("n","x",'"_x')

--increment and decrement
keymap.set("n","<leader>+","<C-a>")
keymap.set("n","<leader>-","<C-x>")

--split window shortcuts
--vertically, horizontally, equal, close
keymap.set("n","<leader>sv","<C-w>v")
keymap.set("n","<leader>sh","<C-w>s")
keymap.set("n","<leader>se","<C-w>=")
keymap.set("n","<leader>sx",":close<CR>")

--tabs
--new tab,close tab,next tab,previous tab
keymap.set("n","<leader>to",":tabnew<CR>")
keymap.set("n","<leader>tx",":tabclose<CR>")
keymap.set("n","<leader>tn",":tabn<CR>")
keymap.set("n","<leader>tp",":tabp<CR>")

--vim-maximizer
keymap.set("n","<leader>sm",":MaximizerToggle<CR>")

--nvim-tree
keymap.set("n","<leader>ee","<cmd>NvimTreeToggle<CR>")
keymap.set("n","<leader>ef","<cmd>NvimTreeFindFileToggle<CR>")
keymap.set("n","<leader>ec","<cmd>NvimTreeCollapse<CR>")
keymap.set("n","<leader>er","<cmd>NvimTreeRefresh<CR>")

--telescope
local builtin=require("telescope.builtin")
keymap.set("n","<leader>pf",builtin.find_files)
keymap.set("n","<C-p>",builtin.git_files)
keymap.set("n","<leader>pg",builtin.live_grep)
keymap.set("n","<leader>ph",builtin.help_tags)

