require("main.plugin-setup")
require("main.core.options")
require("main.core.colorscheme")
require("main.core.keymaps")
require("main.plugins.comment")
require("main.plugins.nvim-tree")
require("main.plugins.lualine")
require("main.plugins.treesitter")
require("main.plugins.lsp")
require("main.plugins.autopairs")
require("main.plugins.gitsigns")
require("main.plugins.none-ls")
require("main.plugins.treesitter-context")
require("main.plugins.indent-blankline")
if vim.fn.has('wsl')==1 then
    vim.api.nvim_create_autocmd('TextYankPost',{
        group=vim.api.nvim_create_augroup('Yank',{clear=true}),
        callback=function()
            vim.fn.system('/mnt/c/Windows/System32/clip.exe',vim.fn.getreg('"'))
        end,
    })
end


