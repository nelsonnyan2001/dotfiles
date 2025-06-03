return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local filetype = { 'filetype', icon_only = true }

    local function file_location()
      return vim.fn.expand '%'
    end

    local function clojure_ns()
      local lines = vim.api.nvim_buf_get_lines(0, 0, 1, false) -- Check the first 20 lines for the ns form
      return table.concat(lines, '')
    end

    local function context()
      local ftype = vim.bo.filetype
      if ftype == 'clojure' then
        return clojure_ns()
      else
        return file_location()
      end
    end

    require('lualine').setup {
      options = {
        globalstatus = true,
      },
      sections = {
        lualine_b = { context, 'diagnostics' },
        lualine_c = {},
        lualine_x = { filetype },
        lualine_y = {},
      },
    }
  end,
}
