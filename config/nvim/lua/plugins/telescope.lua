return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')

      vim.keymap.set('n', '<c-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader><leader>', builtin.oldfiles, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>ff', function()
        builtin.lsp_document_symbols({ ignore_symbols = { 'field', 'variable' } })
      end, {})
      vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
      vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
      vim.keymap.set('n', '<leader>ft', builtin.lsp_type_definitions, {})
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
