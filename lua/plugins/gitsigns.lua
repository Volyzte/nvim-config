return {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  opts = {
    signs = {
      add = { text = "▎" },
      chdelete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },ange = { text = "▎" },
    },
    signs_staged = {
      add          = { text = '┃' },
      change       = { text = '┃' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
      untracked    = { text = '┆' },
    },
  },
}
