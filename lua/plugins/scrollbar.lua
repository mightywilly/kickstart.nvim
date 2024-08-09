return {
  {
    'petertriho/nvim-scrollbar',
    config = function()
      require('scrollbar').setup({
        excluded_filetypes = {
          "lazy",
          "mason",
          "oil",
        }
      })
      require('scrollbar.handlers.gitsigns').setup()
    end,
  },
}
