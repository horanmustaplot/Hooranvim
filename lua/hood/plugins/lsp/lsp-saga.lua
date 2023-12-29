-- lsp-saga provides a lot of stuff such as outliner, ...

return {
  'nvimdev/lspsaga.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons'
  },

  config = function()
    require('lspsaga').setup({
      win_width = 25,
      auto_close = false
    })
  end,
}
