return {
  'nvim-tree/nvim-tree.lua',
  version = '*', -- Use the latest stable version
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- Optional, but recommended for file icons
  },
  config = function()
    require('nvim-tree').setup({
      -- Add your desired configuration options here.
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}

