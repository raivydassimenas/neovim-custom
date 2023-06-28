local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})

lspconfig.html.setup{}
<<<<<<< Updated upstream

lspconfig.eslint.setup{}
=======
>>>>>>> Stashed changes

lspconfig.cssls.setup( {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"css"},
  cmd = {"css-lsp"},
})

lspconfig.jsonls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"json-lsp"},
  filetypes = {"json", "jsonc"},
})

lspconfig.eslint.setup({
  on_attach = function(client, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
  cmd = {"eslint-lsp"},
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
})

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"java"},
  cmd = {"jdtls"},
})

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  cmd = {"rust-analyzer"},
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"},
  cmd = {"typescript-language-server", "--stdio"},
})

lspconfig.emmet_ls.setup{}
