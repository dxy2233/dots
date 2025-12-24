return {
  {
    "Exafunction/codeium.nvim",
    -- enabled = false,
  },
  -- {
  --   "nvim-cmp",
  --   optional = true,
  --   dependencies = { "codeium.nvim" },
  --   opts = function(_, opts)
  --     table.insert(opts.sources, 1, {
  --       name = "codeium",
  --       group_index = 1,
  --       priority = 100,
  --     })
  --   end,
  -- },
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
  --   dependencies = { "codeium.nvim", "saghen/blink.compat" },
  --   opts = {
  --     sources = {
  --       compat = { "codeium" },
  --       providers = {
  --         codeium = {
  --           kind = "Codeium",
  --           score_offset = 100,
  --           async = true,
  --         },
  --       },
  --     },
  --   },
  -- },
  {
    "saghen/blink.compat",
    optional = true,
    opts = {},
    version = not vim.g.lazyvim_blink_main and "*",
  },
  -- { import = "lazyvim.plugins.extras.lang.json" },
}
