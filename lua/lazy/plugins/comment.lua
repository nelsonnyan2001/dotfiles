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
      keys = {
        {
          ']t',
          function()
            require('todo-comments').jump_next()
          end,
          desc = 'Next [T]odo',
        },
        {
          '[t',
          function()
            require('todo-comments').jump_prev()
          end,
          desc = 'Previous [T]odo',
        },
      },
    },
  },
}
