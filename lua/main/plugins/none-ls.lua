local null_ls = require("null-ls")
local formatting=null_ls.builtins.formatting
local diagnostics=null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        formatting.stylua,
        formatting.prettier,
        formatting.prismaFmt,
        formatting.blackd,
        formatting.clang_format,
        formatting.leptosfmt,
        formatting.markdownlint,
        formatting.beautysh,
        diagnostics.clang_check,
        diagnostics.cmake_lint,
        diagnostics.jsonlint,
        diagnostics.actionlint,
        diagnostics.eslint,
        diagnostics.cppcheck,
        null_ls.builtins.completion.spell, 

    },
    on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        filter = function(client)
                            --  only use null-ls for formatting instead of lsp server
                            return client.name == "null-ls"
                        end,
                        bufnr = bufnr,
                    })
                end,
            })
        end
    end,
})
