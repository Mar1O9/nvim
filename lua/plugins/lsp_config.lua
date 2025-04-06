return {
  -- add lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ----@type lspconfig.options
      servers = {
        clangd = {},
        cmake = {},
        lua_ls = {},
        rust_analyzer = {},
        gopls = {},
      },
    },
  },
}
