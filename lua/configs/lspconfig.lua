require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "gopls",
  "ts_ls",
  "pyright",
  "lua_ls",
  "clangd",
  "rust_analyzer",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 


