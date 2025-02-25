return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "williamboman/mason.nvim",
    },

    config = function()
        local lspconfig = require("lspconfig")
        local mason = require("mason")

        mason.setup()
        lspconfig.tailwindcss.setup({})
        lspconfig.svelte.setup({})
        lspconfig.html.setup({})
        lspconfig.ts_ls.setup({})
    end,
}
