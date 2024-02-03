return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "selene",
        "luacheck",
        "codespell",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "shellcheck",
        "shfmt",
        "flake8",
        "rust-analyzer",
        "ocaml-lsp",
      },
    },
  },
}
