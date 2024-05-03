local nvimtree = {
  'nvim-tree/nvim-tree.lua',
  enabled = false,
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
    local nvt = require 'nvim-tree.api'
    vim.keymap.set('n', '<leader>e', nvt.tree.focus, { desc = 'Open file [E]xplorer' })
    vim.keymap.set('n', '<C-n>', nvt.tree.toggle, { desc = 'Toggle file explorer' })
  end,
}

return { nvimtree }
