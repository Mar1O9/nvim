return {
  {
    "blazkowolf/gruber-darker.nvim",
    opts = {
      bold = true,
      invert = {
        signs = false,
        tabline = false,
        visual = false,
      },
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    },
  },

  -- Configure LazyVim to load gruber-darker
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruber-darker",
    },
  },
}
