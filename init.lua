-- Leader Key Setup and Sync clipboard
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = 'a'

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
  -- severity_sort = true, -- Highly recommended
})

-- Make Nvim transparent again maybe
vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]

-- Leader Key Binds
vim.keymap.set("n", "<leader>q", ":quit!<CR>", { desc = "Quit Neovim" })
vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Toggle Neotree" })
vim.keymap.set("n", "<leader>lf", ":Telescope find_files<CR><Esc>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>s", ":wq<CR>", { desc = "Save and Quit" })
vim.keymap.set("n", "<leader>/", ":noh<CR>", { desc = "Clear higlights" })
vim.keymap.set("v", "<leader>>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<leader><", "<gv", { desc = "Unindent selection" })

