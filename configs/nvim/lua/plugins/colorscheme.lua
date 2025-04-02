return {
  {
    "Mofiqul/dracula.nvim",
  },
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "dracula",
      -- colorscheme = "gruvbox",
      colorscheme = "tokyonight",
      -- colorscheme = "kanagawa",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      return {
        options = {
          -- theme = "dracula",
          theme = "tokyonight",
          -- theme = "kanagawa",
        },
      }
    end,
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      options = { try_as_border = true },
    },
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      -- transparent = true,
      -- styles = {
      --   sidebars = "transparent",
      --   floats = "transparent",
      -- },
    },
  },
}
