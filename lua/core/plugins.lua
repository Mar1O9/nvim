local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  { 
      "christoomey/vim-tmux-navigator",
      lazy = false,
  },
  "ellisonleao/gruvbox.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-lualine/lualine.nvim",
  "nvim-treesitter/nvim-treesitter",
  {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { { "nvim-lua/plenary.nvim" } }
      },
  {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
   },
  "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-nvim-lsp",
   "L3MON4D3/LuaSnip",
   "saadparwaiz1/cmp_luasnip",
   "rafamadriz/friendly-snippets",
   {'akinsho/toggleterm.nvim', version = "*", config = true},
    'UtkarshVerma/molokai.nvim',
    "blazkowolf/gruber-darker.nvim",
    {
    'Exafunction/codeium.vim',
    config = function ()
        -- Change '<C-g>' here to any keycode you like.
        vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
        vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
        vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
        vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
    },
}

local opt = {}

require("lazy").setup(plugins, opt)
