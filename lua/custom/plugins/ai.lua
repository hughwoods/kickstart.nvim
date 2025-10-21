local githubCopilot = {
  'github/copilot.vim',
  enabled = true,
  lazy = true,
  cmd = { 'Copilot' },
  event = { 'InsertEnter' }, -- Load Copilot when entering insert mode
  keys = {
    vim.keymap.set('i', '<C-;>', 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false }),
    vim.keymap.set('i', '<C-L>', 'copilot#Accept-Word()', { expr = true, replace_keycodes = false }),
    vim.keymap.set('i', '<C-Q>', 'copilot#Dismiss()', { expr = true, replace_keycodes = false }),
    vim.keymap.set('i', '<C-K>', 'copilot#Previous()', { expr = true, replace_keycodes = false }),
    vim.keymap.set('i', '<C-S>', 'copilot#Suggest()', { expr = true, replace_keycodes = false }),
  },
  config = function()

    -- Custom key mapping for accepting Copilot suggestion
    vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
          expr = true,
          replace_keycodes = false
        })
    -- vim.keymap.set('i', '<C-;>', 'copilot#Accept("\\<CR>")', {
    --       expr = true,
    --       replace_keycodes = false
    --     })
    -- vim.keymap.set('i', '<C-L>', 'copilot#Accept-Word()', {
    --       expr = true,
    --       replace_keycodes = false
    --     })
    -- vim.keymap.set('i', '<C-Q>', 'copilot#Dismiss()', {
    --       expr = true,
    --       replace_keycodes = false
    --     })
    -- vim.keymap.set('i', '<C-J>', 'copilot#Next()', {
    --       expr = true,
    --       replace_keycodes = false
    --     })
    -- vim.keymap.set('i', '<C-K>', 'copilot#Previous()', {
    --       expr = true,
    --       replace_keycodes = false
    --     })
    -- vim.keymap.set('i', '<C-S>', 'copilot#Suggest()', {
    --       expr = true,
    --       replace_keycodes = false
    --     })
    --
    vim.g.copilot_no_tab_map = true -- Disable default <Tab> mapping
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_tab_fallback = ""

  end,
}

return { githubCopilot }
