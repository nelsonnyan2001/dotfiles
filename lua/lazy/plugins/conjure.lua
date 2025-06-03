return {
  'Olical/conjure',
  init = function()
    vim.g['conjure#client_on_load'] = false
    vim.keymap.set('n', '<localleader>cc', vim.cmd.ConjureConnect, { desc = 'ConjureConnect' })
    vim.keymap.set('n', '<localleader>ct', vim.cmd.ConjureCljRunCurrentNsTests, { desc = '[Clojure] Run tests for current file' })
  end,
  dependencies = {
    'guns/vim-sexp', -- Structural Editing
    'tpope/vim-sexp-mappings-for-regular-people', -- Sexp mappings
  },
}
