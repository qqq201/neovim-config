local glob = vim.g
glob.mapleader = ','
glob.localleader = '\\'

local set = vim.opt
set.relativenumber = true
set.nu = true
set.smartindent = true
set.cursorline = true
set.list = true
set.termguicolors = true
set.fillchars:append { eob = " " }
set.signcolumn = "yes"

local setting = vim.o
setting.mouse = 'a'

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<c-n>', ':bnext<CR>', opts)
keymap('n', '<c-p>', ':bprev<CR>', opts)
keymap('n', '<c-t>', ':NvimTreeToggle<CR>', opts)

-- telescope
keymap('n', 'ff', ':Telescope find_files<CR>', opts)
keymap('n', 'fg', ':Telescope live_grep<CR>', opts)
keymap('n', 'fb', ':Telescope buffers<CR>', opts)
keymap('n', 'fh', ':Telescope help_tags<CR>', opts)


-- diagnostic signs
local signs = { Error = "✘ ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.cmd('colorscheme melange')
vim.cmd("highlight NvimTreeNormal guibg=#352f2a")
--https://github.com/NvChad/NvChad
