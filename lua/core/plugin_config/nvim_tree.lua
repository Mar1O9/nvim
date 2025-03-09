vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    update_cwd = true,
    actions = {
        open_file = {
        resize_window = true,
        },
    },
    view = {
        side = "right",
    },
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    filters = {
        dotfiles = false,
    },
    diagnostics = {
        enable = true,
    },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<CR>")
