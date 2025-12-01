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

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    if not args.data then
      return
    end

    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if not client then
      return
    end

    if client.server_capabilities.signatureHelpProvider then
      local ok, signature = pcall(require, "nvchad.lsp.signature")
      if ok then
        signature.setup(client, args.buf)
      end
    end
  end,
})

-- read :h vim.lsp.config for changing options of lsp servers 


