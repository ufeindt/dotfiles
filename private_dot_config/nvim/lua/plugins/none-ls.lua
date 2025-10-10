return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier.with({
        extra_filetypes = { "svelte", "typescriptreact", "astro" },
      }),
    })


    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = buffer,
      callback = function()
        vim.lsp.buf.format { async = false }
      end
    })
  end
}
