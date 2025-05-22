-- General configuration
vim.cmd('filetype off') -- Explicitly turn off first, matching original flow
vim.cmd('filetype plugin indent on') -- Turn on plugin and indent loading
vim.cmd('syntax on') -- Turn on syntax highlighting

-- Automatic reloading of init.lua
-- In Neovim, the equivalent of .vimrc is init.lua
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = vim.fn.stdpath('config') .. '/init.lua', -- Assumes your config is in ~/.config/nvim/init.lua
  command = 'source %',
})

-- Color scheme
-- Note: Setting t_Co and background is usually handled by the colorscheme itself in Neovim.
-- You would typically install a colorscheme using a plugin manager and then set it.
vim.opt.termguicolors = true -- Recommended for true color support if your terminal supports it
vim.opt.background = 'dark'
vim.cmd('colorscheme snazzy') 

-- Mouse and backspace
vim.opt.mouse = 'a' -- 'a' enables mouse in all modes, 'n' is for normal mode only
vim.opt.backspace = { 'indent', 'eol', 'start' } -- equivalent to set bs=indent,eol,start

-- Showing line numbers and length
vim.opt.number = true -- show line numbers
vim.opt.wrap = false -- don't automatically wrap on load
vim.opt.formatoptions:remove('t') -- don't automatically wrap text when typing

-- Useful settings
vim.opt.history = 700
vim.opt.undolevels = 700

-- Functions for tabs and spaces
local function use_tabs()
  vim.opt.tabstop = 4     -- Size of a hard tabstop (ts).
  vim.opt.shiftwidth = 4  -- Size of an indentation (sw).
  vim.opt.expandtab = false -- Always uses tabs instead of space characters (noet).
  vim.opt.autoindent = true -- Copy indent from current line when starting a new line (ai).
end

local function use_spaces()
  vim.opt.tabstop = 2     -- Size of a hard tabstop (ts).
  vim.opt.shiftwidth = 2  -- Size of an indentation (sw).
  vim.opt.expandtab = true  -- Always uses spaces instead of tab characters (et).
  vim.opt.softtabstop = 2 -- Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  vim.opt.autoindent = true -- Copy indent from current line when starting a new line.
  vim.opt.smarttab = true   -- Inserts blanks on a <Tab> key (as per sw, ts and sts).
end

-- By default, use tabs
use_tabs()

-- Searching
vim.opt.hlsearch = true      -- highlight matches
vim.opt.incsearch = true     -- incremental searching
vim.opt.ignorecase = true    -- searches are case insensitive...
vim.opt.smartcase = true     -- ... unless they contain at least one capital letter

-- Disable backup and swap files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Set <Leader> key
-- In Lua, you can set the leader key directly in vim.g
vim.g.mapleader = ','
vim.g.maplocalleader = ',' -- Also set local leader if you use it

-- Mappings
-- Using vim.keymap.set is the recommended way in Neovim
-- Arguments are: {mode}, {lhs}, {rhs}, {opts}
-- {mode}: 'n' (normal), 'v' (visual), 'i' (insert), '' (all modes where applicable)
-- {opts}: can include { noremap = true }, { silent = true }, { desc = "description" }

-- Copy to clipboard for Mac (assuming 'pbcopy' is available)
vim.keymap.set('n', '<Leader>c', ':w !pbcopy<CR><CR>', { noremap = true, silent = true, desc = 'Copy current buffer to clipboard' })

-- Bind nohl (Remove search highlighting)
vim.keymap.set('', '<C-n>', ':nohl<CR>', { noremap = true, silent = true, desc = 'Clear search highlight' })

-- Bind Ctrl+<movement> keys to move between windows
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = 'Move to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = 'Move to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = 'Move to right window' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = 'Move to left window' })

-- Easier moving of code blocks (better indentation in visual mode)
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true, desc = 'Indent block left and re-select' })
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true, desc = 'Indent block right and re-select' })

-- difftool mappings
vim.keymap.set('n', '<Leader>l', ':diffget LOCAL<CR>', { noremap = true, silent = true, desc = 'Diffget LOCAL' })
vim.keymap.set('n', '<Leader>r', ':diffget REMOTE<CR>', { noremap = true, silent = true, desc = 'Diffget REMOTE' })
vim.keymap.set('n', '<Leader>b', ':diffget BASE<CR>', { noremap = true, silent = true, desc = 'Diffget BASE' })

-- To open a new empty buffer
vim.keymap.set('n', '<Leader>T', ':enew<cr>', { noremap = true, silent = true, desc = 'Open new empty buffer' })

-- Move to the next buffer
vim.keymap.set('n', '<Leader>m', ':bnext<CR>', { noremap = true, silent = true, desc = 'Next buffer' })

-- Move to the previous buffer
vim.keymap.set('n', '<Leader>n', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Previous buffer' })

-- Close the current buffer and move to the previous one
vim.keymap.set('n', '<Leader>bq', ':bp | bd #<CR>', { noremap = true, silent = true, desc = 'Close current buffer and go to previous' })

-- Show all open buffers (no mapping needed, just the command)
-- You can still type :ls<CR> in normal mode.
