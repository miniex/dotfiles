local map_key = require("utils.key_mapper").map_key

return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local util = require("lspconfig/util")

        -- c, c++
        lspconfig.clangd.setup({})
        
        -- rust
        lspconfig.rust_analyzer.setup({
            root_dir = util.root_pattern("Cargo.toml"),
            settings = {
                ["rust-analyzer"] = {
                    procMacro = { enable = true },
                    cargo = { allFeatures = true },
                    checkOnSave = {
                        command = "clippy",
                        extraArgs = { "--no-deps" },
                    },
                },
            },
        })

        -- web
        lspconfig.html.setup({})
        lspconfig.htmx.setup({})
        lspconfig.tsserver.setup({})
        lspconfig.cssls.setup({})
        lspconfig.somesass_ls.setup({})
        lspconfig.tailwindcss.setup({})
        lspconfig.svelte.setup({})

        -- docs
        lspconfig.jsonls.setup({})
        lspconfig.taplo.setup({})

        -- keymaps
        map_key("K", vim.lsp.buf.hover)
        map_key("gd", vim.lsp.buf.definition)
        map_key("<leader>cc", vim.diagnostic.open_float)
        map_key("<leader>ca", vim.lsp.buf.code_action)
    end,
}
