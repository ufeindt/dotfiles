return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-mocha",
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1
          }
        }
      },
      inactive_sections = {
        lualine_c = {
          {
            "filename",
            path = 1
          }
        }
      }
    })
  end
}
