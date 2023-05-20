local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json"),
})

lspconfig.volar.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "vue" },
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json"),
})

lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "terraform", "terraform-vars" },
  root_dir = lspconfig.util.root_pattern(".terraform", ".git"),
})

lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparameters = true,
      }
    }
  }
})
