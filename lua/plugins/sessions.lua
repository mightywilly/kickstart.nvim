return {
  {
    'gennaro-tedesco/nvim-possession',
    dependencies = {
      'ibhagwan/fzf-lua',
    },
    config = function()
      require('nvim-possession').setup {
        autosave = true,
      }
    end,
    init = function()
      local possession = require 'nvim-possession'
      vim.keymap.set('n', '<leader>sl', function()
        possession.list()
      end, { desc = '[S]ession [L]ist' })
      vim.keymap.set('n', '<leader>sc', function()
        possession.new()
      end, { desc = '[S]ession [C]reate' })
      vim.keymap.set('n', '<leader>su', function()
        possession.update()
      end, { desc = '[S]ession [U]pdate' })
      vim.keymap.set('n', '<leader>sd', function()
        possession.delete()
      end, { desc = '[S]ession [D]elete' })
    end,
  },
}
