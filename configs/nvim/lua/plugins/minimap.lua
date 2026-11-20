return {
  {
    "petertriho/nvim-scrollbar",
    event = "BufReadPost",
    config = function()
      local scrollbar = require("scrollbar")
      local colors = require("dracula").colors()
      scrollbar.setup({
        exclude = {
          filetypes = { "prompt", "TelescopePrompt", "noice", "notify", "nerdtree" },
        },
        providers = { gitsigns = true },
        scrollbar = {
          visibility = "active",
          thumb = { highlight = { bg = "#a80216" } },
        },
        marks = {
          Search = { highlight = { fg = colors.orange } },
          Error = { highlight = { fg = colors.red } },
          Warn = { highlight = { fg = colors.cyan } },
          Info = { highlight = { fg = colors.green } },
          Hint = { highlight = { fg = colors.yellow } },
          Misc = { highlight = { fg = colors.purple } },
        },
      })
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- {
  --   "wfxr/minimap.vim",
  --   build = "cargo install --locked code-minimap",
  --   lazy = false,
  --   cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
  --   init = function()
  --     vim.cmd("let g:minimap_width = 10")
  --     vim.cmd("let g:minimap_auto_start = 1")
  --     vim.cmd("let g:minimap_auto_start_win_enter = 1")
  --   end,
  -- },
}
