return {
  {
    -- Smarter comments
    'numToStr/Comment.nvim',
    opts = {},
  },
  {
    {
      -- Highlight TODO/NOTE/etc. in comments
      'folke/todo-comments.nvim',
      event = 'VimEnter',
      dependencies = { 'nvim-lua/plenary.nvim' },
      opts = { signs = false },
    },
  },
}
