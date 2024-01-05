return {
    "williamboman/mason.nvim",
    opts = function(_, ops)
        vim.list_extend(ops.ensure_installed, {
            "stylua",
            "luacheck",
            "shfmt",
            "shellcheck",
        })
    end,
}
