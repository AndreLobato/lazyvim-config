local exclude = {
  "**/__pycache__/",
  ".cache",
  ".git",
  ".vscode.template",
  ".venv",
  ".ruff_cache",
  ".local",
  ".pytest_cache"
}
return {
  "folke/snacks.nvim",
  opts = {
     picker = {
      sources = {
        files = { hidden = true, ignored = false, exclude=exclude},
        grep = { hidden = true, ignored = false, exclude=exclude},
        explorer = {
          hidden = true,
          ignored = true,
          exclude = exclude,
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

