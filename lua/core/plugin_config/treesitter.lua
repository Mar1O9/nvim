require"nvim-treesitter.configs".setup {
        -- list of parser names or, "all"
        ensure_installed = { "c", "lua", "rust", "go", "vim"},
        -- install parsers synchronously (only applied to 'ensure_installed
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        },
}
