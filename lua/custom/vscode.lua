local vscode_neovim = require 'vscode-neovim'
local vscode = function(command)
  return function()
    vscode_neovim.action(command)
  end
end
-- vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
-- vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
vim.keymap.set('n', '<leader>sf', vscode 'workbench.action.quickOpen', { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sa', vscode 'workbench.action.showCommands', { desc = '[S]earch [A]ctions' })
-- vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
-- vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
-- vim.keymap.set('n', '<leader>sG', extensions.live_grep_args.live_grep_args, { desc = '[S]earch by [G]rep with arguments' })
-- vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
-- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
-- vim.keymap.set('n', '<leader>sa', builtin.builtin, { desc = '[S]earch [A]ll telescope options' })
-- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
-- vim.keymap.set('n', '<leader>th', builtin.colorscheme, { desc = '[T][h]eme selector' })
-- vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', 'gd', vscode 'editor.action.revealDefinition', { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', 'gr', vscode 'editor.action.goToReferences', { desc = '[G]oto [R]eferences' })
vim.keymap.set('n', 'gi', vscode 'editor.action.goToImplementation', { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', '<leader>gt', vscode 'editor.action.goToTypeDefinition', { desc = '[G]oto [T]ype Definition' })
-- vim.keymap.set('n', '<leader>ds', require('telescope.builtin').lsp_document_symbols, { desc = '[D]ocument [S]ymbols' })
-- vim.keymap.set('n', '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = '[W]orkspace [S]ymbols' })
vim.keymap.set('n', '<leader>rn', vscode 'editor.action.rename', { desc = '[R]e[n]ame' })
vim.keymap.set('n', '<leader>ca', vscode 'editor.action.quickFix', { desc = '[C]ode [A]ction' })
vim.keymap.set('n', 'K', vscode 'editor.action.showHover', { desc = 'Hover Documentation' })
vim.keymap.set('n', 'gD', vscode 'editor.action.goToDeclaration', { desc = '[G]oto [D]eclaration' })

return {}
