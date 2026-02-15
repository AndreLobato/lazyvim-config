return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Old-Farmer/noctis-nvim" },
  { "scottmckendry/cyberdream.nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
