local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "vue-language-server",
        "terraform-ls",
        "rust-analyzer",
        "gopls",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "hashivim/vim-terraform",
    ft = "terraform"
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  }
}
return plugins
