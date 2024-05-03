local catppuccin =
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'auto', -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = 'latte',
          dark = 'frappe',
        },
      }
      local ToggleDarkMode = function()
        local current_bg = vim.o.background
        if current_bg == 'dark' then
          vim.cmd 'set background=light'
        else
          vim.cmd 'set background=dark'
        end
      end
      vim.keymap.set('n', '<leader>dm', ToggleDarkMode, { desc = 'Toggle [d]ark [m]ode' })
      if os.getenv 'darkmode' == 'true' then
        vim.cmd 'set background=dark'
      elseif os.getenv 'darkmode' == 'false' then
        vim.cmd 'set background=light'
      end
    end,
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  }
return { catppuccin }
