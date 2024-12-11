return {
  {
    "nvim-cmp",
    optional = true,
    dependencies = { "codeium.nvim" },
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 100,
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    optional = true,
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 2, LazyVim.lualine.cmp_source("codeium"))
    end,
  },
  -- {
  --   "saghen/blink.cmp",
  --   optional = true,
  --   opts = {
  --     sources = {
  --       compat = vim.g.ai_cmp and { "codeium" } or nil,
  --     },
  --   },
  --   dependencies = {
  --     "codeium.nvim",
  --     vim.g.ai_cmp and "saghen/blink.compat" or nil,
  --   },
  -- },
}
