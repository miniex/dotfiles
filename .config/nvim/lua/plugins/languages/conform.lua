return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
                -- c, c++
                c = { "clang-format" },
                cpp = { "clang-format" },

				-- rust
				rust = { "rust-analyzer" },

                -- web
                javascript = { { "prettierd", "prettier" } },
                typescript = { { "prettierd", "prettier" } },

				-- docs
                json = { "jsonls" },
                toml = { "taplo" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true,
			},
		})
    end
}
