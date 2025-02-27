return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    opts = {
        strategies = {
            chat = {
                adapter = "ollama",
                inline = "ollama",
            },
        },
        adapters = {
            ollama = function()
                return require("codecompanion.adapters").extend("ollama", {
                    name = "qwen2.5:7b",
                    schema = {
                        model = {
                            default = "qwen2.5:7b",
                        },
                    },
                })
            end,
        },
        opts = {
            log_level = "DEBUG",
        },
    },
}
