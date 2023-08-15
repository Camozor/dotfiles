-- local lsp = require("lsp-zero").preset({})
--
-- lsp.on_attach(function(_, bufnr)
--   -- see :help lsp-zero-keybindings
--   -- to learn the available actions
--   lsp.default_keymaps({buffer = bufnr})
-- end)
--
-- local mason = require("mason-lspconfig")
-- mason.setup({
-- 	ensure_installed = {"lua_ls"}
-- })
--
-- require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
-- lsp.setup()



local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {"tsserver", "rust_analyzer"},
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
    end,
  }
})

require("lsp-zero").extend_cmp()

local cmp = require("cmp")

cmp.setup({
  sources = {
    {name = "path"},
    {name = "nvim_lsp"},
    {name = "nvim_lua"},
  },
  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
  },
})

