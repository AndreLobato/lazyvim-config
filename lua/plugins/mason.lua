require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" }, -- Add your desired packages here
})
local mason_plugins = {
  "bash-language-server",
  "black",
  "codelldb",
  "docker-compose-language-service",
  "dockerfile-language-server",
  "gofumpt",
  "goimports",
  "golangci-lint",
  "gopls",
  "hadolint",
  "lua-language-server",
  "markdown-toc",
  "markdownlint-cli2",
  "marksman",
  "pyright",
  "shfmt",
  "sqlfluff",
  "stylua",
  "yaml-language-server",
  "lua-language-server",
  "pyright",
  "bash-language-server",
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

return {}
