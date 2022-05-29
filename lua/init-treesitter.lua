require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "bash",
        "c",
        "cpp",
        "cmake",
        "lua",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "json",
        "json5",
        "jsonc",
        "python",
        "comment",
    },
    -- auto tag with nvim-ts-autotag
    autotag = { enable = true },
    highlight = { enable = true },
    context_commentstring = {
        enable = true,
        enable_autocmd = false
    }
})

