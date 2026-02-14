return {
  {
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate',
      config = function ()
        require("nvim-treesitter.config").setup({
          -- A list of parser names, or "all" (the default);
          -- if "all" is used, parse all languages that are supported.
          ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "javascript",
            "typescript",
            "html",
            "css",
            "python",
          },

          -- Install parsers synchronously (only applied when `ensure_installed` is not "all")
          sync_install = false,

          -- Automatically install missing parsers when entering buffer
          -- Set to false if you want to install parsers manually
          auto_install = true,

          -- Enable treesitter-based syntax highlighting
          highlight = {
            enable = true,
            -- Setting this to true will run `:syntax enable` and tree-sitter at the same time.
            -- Set this to `true` if you depend on standard Neovim syntax highlighting plugins.
            additional_vim_regex_highlighting = false,
          },

          -- Enable treesitter-based indentation
          indent = {
            enable = false,
          },

          -- Enable treesitter-based folding (optional)
          -- folds = {
          --   enable = true,
          -- },
        })
      end,
  }
}
