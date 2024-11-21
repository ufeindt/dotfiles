return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_no_map_tab = 1
    vim.g.codeium_enabled = 1
    vim.g.codeium_filetypes = {
      javascript = true,
      javascriptreact = true,
      lua = true,
      svelte = true,
      typescript = true,
      typescriptreact = true
    }
    vim.g.codeium_enable_chat = 1
    vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
  end
}
