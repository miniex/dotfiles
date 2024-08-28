return {
    {
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					check_outdated_packages_on_open = true,
					border = "none",
					width = 0.8,
					height = 0.9,
					icons = {
					  -- ✓ ➜ ✗ ◍
					  package_installed = "◍",
					  package_pending = "➜",
					  package_uninstalled = "◍",
					},
				  },
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
                    -- c, c++
                    "clangd",

					-- rust
					"rust_analyzer",

                    -- python
                    "pylsp",

                    -- web
                    "html", "htmx", -- html, htmx
                    "tsserver", -- js, ts
                    "cssls", -- css
                    "somesass_ls", -- sass
                    "tailwindcss", -- tailwind css
                    "svelte",

					-- docs
                    "jsonls", --json
                    "taplo", -- toml
				},
			})
		end,
	},
}
