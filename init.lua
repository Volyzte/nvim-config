-- Leader Key Setup and Sync clipboard and various settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 300


-- For indentation
vim.opt.tabstop = 2         -- Number of space characters per tab
vim.opt.softtabstop = 2     -- Number of spaces to insert/remove when pressing Tab/Backspace
vim.opt.shiftwidth = 2      -- Number of spaces for each indentation level (used for auto-indent)
vim.opt.expandtab = true    -- Use spaces instead of tab characters
vim.opt.autoindent = true   -- Copy the indentation from the previous line
vim.opt.smartindent = true  -- Smarter automatic indentation for certain languages

require("config.lazy")

-- Relative Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.diagnostic.config({
 underline = true,
 virtual_text = true,
 severity_sort = true,
})

-- Diagnostics Preferences

---- Hide virtual text (inline warnings/errors)
vim.diagnostic.config({
  virtual_text = false,
  signs = true, -- Optional: keep signs in the gutter
  underline = true,
  update_in_insert = false,
})

-- Show diagnostics on hover
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})


-- Make Nvim transparent again maybe
vim.cmd [[
  colorscheme darkblue
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight CursorLine cterm=NONE ctermbg=DarkGray guibg=#3c3c3c
]]

vim.api.nvim_set_hl(0, "MatchParen", { fg = "#F3F3F3", bg = "#6B5300", bold = true })

-- Leader Key Binds
vim.keymap.set("n", "<leader>q", ":quit!<CR>", { desc = "Quit Neovim" })
vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "<leader>p", "]p<CR>", { desc = "Paste text line below cursor" })
vim.keymap.set("n", "<leader>lf", ":Telescope find_files<CR><Esc>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>s", ":wq<CR>", { desc = "Save and Quit" })
vim.keymap.set("n", "<leader>/", ":noh<CR>", { desc = "Clear higlights" })
vim.keymap.set("v", "<leader>>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<leader><", "<gv", { desc = "Unindent selection" })

