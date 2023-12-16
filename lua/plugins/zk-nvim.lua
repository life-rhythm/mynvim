return {
  {
    "mickael-menu/zk-nvim",
    config = function(_, opts)
      require("zk").setup()
      vim.g.zk_disable_default_keybindings = 1
      vim.g.zk_leader_key = "<leader>z"
      vim.g.zk_default_mappings = 0
      vim.g.zk_default_mappings = 0
    end,
  },
}
