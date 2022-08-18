local get_hex = require('cokeline/utils').get_hex

local map = vim.api.nvim_set_keymap

map('n', '<S-Tab>',   '<Plug>(cokeline-focus-prev)',  { silent = true })
map('n', '<Tab>',     '<Plug>(cokeline-focus-next)',  { silent = true })
map('n', 'b[', '<Plug>(cokeline-switch-prev)', { silent = true })
map('n', 'b]', '<Plug>(cokeline-switch-next)', { silent = true })

require('cokeline').setup({
  default_hl = {
    fg = function(buffer)
      return
        buffer.is_focused
        and get_hex('Normal', 'fg')
         or get_hex('Normal', 'bg')
    end,
    bg = function(buffer)
      return
        buffer.is_focused
        and get_hex('Normal', 'bg')
         or get_hex('TabLineFill', 'fg')
    end,
  },

  components = {
    {
      text = function(buffer) return ' ' .. buffer.devicon.icon end,
      fg = function(buffer) return buffer.devicon.color end,
    },
    {
        text = function(buffer) return buffer.unique_prefix end,
      fg = get_hex('Comment', 'bg'),
      style = 'italic',
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
    },
    {
      text = '',
      delete_buffer_on_left_click = true,
    },
    {
      text = ' ',
    }
  },
})
