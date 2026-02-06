-- Leader Key Setup and Sync clipboard
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.clipboard = "unnamedplus" 
vim.opt.mouse = 'a'

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

-- For nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- Leader Key Binds
vim.keymap.set("n", "<leader>q", ":quit!<CR>", { desc = "Quit Neovim" })
vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Save File" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle Nvim Tree" })
vim.keymap.set("n", "<leader>lf", ":Telescope find_files<CR><Esc>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>lg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>s", ":wq<CR>", { desc = "Save and Quit" })
vim.keymap.set("n", "<leader>/", ":noh<CR>", { desc = "Clear higlights" })
vim.keymap.set("v", "<leader>>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<leader><", "<gv", { desc = "Unindent selection" })

