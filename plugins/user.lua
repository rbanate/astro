-- TODO: test

local prefix = "<leader>x"
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        -- event = "User Astrfile",
      }
    end,
    event = "User Astrofile",
    cmd = { "TodoQuickFix" },
    keys = { "<leader>T", "<cmd>Telescope<cr>", desc = "Open TODOs in Telescope" },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "Wansmer/treesj",
    keys = { "<leader>m", "<leaderjj", "<leader>s" },
    cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup { --[[ your config ]]
        use_default_keymaps = false,
      }
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = "VeryLazy",
    opts = {},
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- keys = {
    --   {
    --     { prefix,        desc = "Trouble" },
    --     { prefix .. "X", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
    --     { prefix .. "x", "<cmd>TroubleToggle document_diagnostics<cr>",  desc = "Document Diagnostics" },
    --     { prefix .. "q", "<cmd>TroubleToggle quickfix<cr>",              desc = "Quickfix List (Trouble)" },
    --   },
    -- },
    opts = {
      use_diagnostic_signs = true,
      action_keys = {
        close = { "q", "<esc>" },
        cancel = "<c-e>",
      },
    },
  },
}
