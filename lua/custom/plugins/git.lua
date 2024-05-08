local fugitive = {
    'tpope/vim-fugitive',
    config = function()
      local prDiff = function()
        vim.cmd 'leftabove Gvdiffsplit origin/main...HEAD'
      end
      local prReview = function()
        vim.cmd 'Git difftool --name-only origin/main...HEAD'
      end
      vim.keymap.set('n', '<leader>df', prDiff, { desc = 'View [d]i[f]f against main branch' })
      vim.api.nvim_create_user_command('Review', prReview, { desc = 'Pull request review' })
    end,
  }

  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`. This is equivalent to the following Lua:
  --    require('gitsigns').setup({ ... })
  --
  -- See `:help gitsigns` to understand what the configuration keys do
local gitsigns = { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  }
return { fugitive, gitsigns }
