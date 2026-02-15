return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Old-Farmer/noctis-nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "noctis-obscuro",
    },
  },
}
