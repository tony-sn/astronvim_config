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
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {

    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup {
        windows = {
          mappings = {
            ["S"] = "",
            ["s"] = "",
          },
        },
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- config = function()
    --   require("todo-comments").setup {}
    -- end,
    opts = {
      keywords = {
        PERF = { icon = "󰅒 ", color = "#C09DE3", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = "󰍨 ", color = "hint", alt = { "INFO" } },
      },
    },
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
}

-- TODO:
-- BUG:
-- HACK:
-- WARN:
-- PERF:
-- NOTE:
-- TEST:
