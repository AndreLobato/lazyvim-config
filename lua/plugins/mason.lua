return {
  "mason-org/mason.nvim",
  config = function()
    require("mason").setup()
    local mason_plugins = {
      "bash-language-server",
      "black",
      "codelldb",
      "docker-compose-language-service",
      "dockerfile-language-server",
      "hadolint",
      "markdown-toc",
      "markdownlint-cli2",
      "marksman",
      "shfmt",
      "sqlfluff",
      "stylua",
      "yaml-language-server",
      "pyright",
    }
    local mason_registry = require("mason-registry")

    local function install_package(name)
      local package = mason_registry.get_package(name)
      if not package:is_installed() then
        package:install()
      end
    end

    for _, name in ipairs(mason_plugins) do
      install_package(name)
    end
  end,
}
