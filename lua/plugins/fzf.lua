return {
  "folke/snacks.nvim",
  opts = {
     picker = {
      sources = {
        files = { hidden = true, ignored = false, exclude={ "**/__pycache__/", ".cache" }},
        grep = { hidden = true, ignored = false},
        explorer = {
          hidden = true,
          ignored = true,
          layout = function()
            return {
              preset = 'sidebar',
              preview = false,
              layout = {
                  width = (vim.g.explorer_size or 25),
              },
            }
          end,
          on_close = function(picker)
            vim.g.explorer_size = picker.layout.root:size().width
          end
        },
      },
    },
  },
}

