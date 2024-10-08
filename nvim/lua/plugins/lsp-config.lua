return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "SmiteshP/nvim-navbuddy",
        },
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local navbuddy = require("nvim-navbuddy")
            local lspconfig = require("lspconfig")
            lspconfig.pyright.setup({
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    navbuddy.attach(client, bufnr)
                end
            })
            lspconfig.bashls.setup({
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    navbuddy.attach(client, bufnr)
                end
            })
            lspconfig.clangd.setup({
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    navbuddy.attach(client, bufnr)
                end
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                on_attach = function(client, bufnr)
                    navbuddy.attach(client, bufnr)
                end,
                settings = {
                    Lua = {
                        diagnostic = {
                            globals = {"vim"}
                        }
                    }
                }
            })
            lspconfig.gopls.setup({
                capabilities = capabilities,
                cmd = {"gopls"},
                filetypes = {"go", "gomod", "gowork", "gotmpl"},
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                    },
                },
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
            vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {})
            vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, {})
        end,
    },
}
