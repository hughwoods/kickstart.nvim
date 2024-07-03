local nvimtree = {
  'nvim-tree/nvim-tree.lua',
  enabled = true,
  version = '*',
  lazy = true,
  keys = {
    { '<leader>e', '<cmd>lua require("nvim-tree.api").tree.find_file({ update_root = false, open = true, focus = true, })<cr>', desc = 'Open file [E]xplorer' },
    { '<C-n>', '<cmd>lua require("nvim-tree.api").tree.toggle()<cr>', desc = 'Toggle file explorer' },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 40,
        side = 'right',
      },
      filters = {
        dotfiles = false,
      },
    }
  end,
}

return { nvimtree }
