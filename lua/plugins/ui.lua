return {
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enabel = false,
      }
    end,
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = {
          skip = true,
        },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },

  {
    "b0o/incline.nvim",
    dependencies = {
      "craftzdog/solarized-osaka.nvim",
    },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("solarized-osaka.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = {
              guifg = colors.base04,
              guibg = colors.magenta500,
            },
            InclineNormalNC = {
              guifg = colors.violet500,
              guibg = colors.base03,
            },
          },
        },
        window = {
          margin = { vertical = 0, horizontal = 1 },
        },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferlineCycleNext<CR>", desc = "Next Buffer" },
      { "<S-Tab>", "<Cmd>BufferlineCyclePrev<CR>", desc = "Previous Buffer" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },
  {
    --- Logo
    "nvimdev/dashboard-nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local logo = [[
 ██████╗██████╗  █████╗ ███████╗████████╗███████╗███████╗
██╔════╝██╔══██╗██╔══██╗██╔════╝╚══██╔══╝██╔════╝╚══███╔╝
██║     ██████╔╝███████║█████╗     ██║   █████╗    ███╔╝ 
██║     ██╔══██╗██╔══██║██╔══╝     ██║   ██╔══╝   ███╔╝  
╚██████╗██║  ██║██║  ██║██║        ██║   ███████╗███████╗
 ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝        ╚═╝   ╚══════╝╚══════╝
]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
