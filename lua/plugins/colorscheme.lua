return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Old-Farmer/noctis-nvim" },
  { "scottmckendry/cyberdream.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
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
      colorscheme = "kanagawa",
    },
  },
}
