return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "astro",
          "lua_ls",
          "pylsp",
          "pyright",
          "ruff",
          "rust_analyzer",
          "svelte",
          "ts_ls",
          "volar"
        },
        automatic_installation = true,
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.pylsp.setup({
        settings = {
          pylsp = {
            plugins = {
              mccabe = { enabled = false },
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },
              pylsp_rope = { enabled = true },
            }
          }
        }
      })
      lspconfig.pyright.setup({
        on_attach = function(client, _)
          client.server_capabilities.codeActionProvider = false
        end,
        settings = {
          pyright = {
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              autoSearchPaths = true,
              typeCheckingMode = "standard",
              useLibraryCodeForTypes = true,
            },
          },
        },
      })
      lspconfig.ruff.setup({})
      lspconfig.svelte.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig["astro"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "astro" },
      })
      lspconfig.volar.setup {
        -- add filetypes for typescript, javascript and vue
        filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
        init_options = {
          vue = {
            -- disable hybrid mode
            hybridMode = false,
          },
        },
      }


      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
      vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
    end
  }
}
