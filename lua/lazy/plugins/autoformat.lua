return {
  -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = true,
    format_on_save = {
      timeout_ms = 2500,
      lsp_fallback = true,
    },
    formatters = {
      black = {
        prepend_args = { '--fast' },
      },
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'black' },
      -- Conform can also run multiple formatters sequentially
      --
      -- You can use a sub-list to tell conform to run *until* a formatter
      -- is found.
      ['javascript'] = { 'prettier' },
      ['javascriptreact'] = { 'prettier' },
      ['typescript'] = { 'prettier' },
      ['typescriptreact'] = { 'prettier' },
      ['vue'] = { 'prettier' },
      ['css'] = { 'prettier' },
      ['scss'] = { 'prettier' },
      ['less'] = { 'prettier' },
      ['html'] = { 'prettier' },
      ['json'] = { 'prettier' },
      ['jsonc'] = { 'prettier' },
      ['yaml'] = { 'prettier' },
      ['markdown'] = { 'prettier' },
      ['markdown.mdx'] = { 'prettier' },
      ['graphql'] = { 'prettier' },
      ['handlebars'] = { 'prettier' },
    },
  },
}
