return {
  {
    'yorickpeterse/nvim-window',
    keys = {
      { ',', "<cmd>lua require('nvim-window').pick()<cr>", desc = 'nvim-window: Jump to window' },
    },
    config = function()
      require('nvim-window').setup {
        hint_hl = 'Bold',
      }
    end,
  },
}
