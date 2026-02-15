return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "Old-Farmer/noctis-nvim" },
  { "scottmckendry/cyberdream.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
