return {
  "folke/snacks.nvim",
  opts = {
    explorer = {},
    picker = {
      sources = {
        files = { hidden = true, ignored = false, exclude={ "**/__pycache__/", ".cache" }},
        grep = { hidden = true, ignored = false},
        explorer = { hidden = true, ignored = true},
      },
    },
  },
}
