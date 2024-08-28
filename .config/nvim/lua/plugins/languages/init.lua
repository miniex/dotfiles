-- Langauges
local autopairs = require("plugins.languages.autopairs");
local cmp = require("plugins.languages.cmp")
local conform = require("plugins.languages.conform")
local mason = require("plugins.languages.mason")
local nvim_lspconfig = require("plugins.languages.nvim-lspconfig")

return {
    autopairs,
    cmp,
    conform,
    mason,
    nvim_lspconfig,
}
