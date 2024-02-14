return {
    --     "telescope.nvim",
    --     dependencies = {
    --         "nvim-telescope/telescope-file-browser.nvim",
    --     },
    --     },
    -- {
    --     "kylechui/nvim-surround",
    --     version = "*", -- Use for stability; omit to use `main` branch for the latest features
    --     event = "VeryLazy",
    --     config = function()
    --         require("nvim-surround").setup({
    --             -- Configuration here, or leave empty to use defaults
    --         })
    --     end,
    -- },
    {
        "Wansmer/treesj",
        keys = { "<space>m", "<space>j", "<space>s" },
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesj").setup({})
        end,
    },
    {
        "folke/twilight.nvim",
        opts = {},
    },
    {
        "folke/zen-mode.nvim",
        opts = {},
    },
    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        ft = { "rust" },
    },
}
