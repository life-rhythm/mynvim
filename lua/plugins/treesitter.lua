return {
  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "fish",
        "html",
        "javascript",
        "typescript",
        "css",
        "astro",
        "cmake",
        "gitignore",
        "http",
        "java",
        "cpp",
        "scss",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "vim",
        "yaml",
        "rust",
        "zig",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      --MDX
      vim.filetype.add({
        extension = { mdx = "mdx" },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
