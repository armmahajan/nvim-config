return {
    "frankroeder/parrot.nvim",

    dependencies = { "ibhagwan/fzf-lua", "nvim-lua/plenary.nvim" },

    opts = {},

    config = function()
        require("parrot").setup({
            providers = {
                ollama = {},
            },
        })
    end,
}
