return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false,
          cmd = {
            "/opt/homebrew/opt/llvm/bin/clangd",
            "--query-driver=/opt/homebrew/bin/g++-*",
          },
        },
      },
    },
  },
}
