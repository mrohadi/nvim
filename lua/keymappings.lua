vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = ' '

-- No hl
vim.api.nvim_set_keymap("n", "<Leader>h", ":set hlsearch!<CR>", { noremap = true, silent })

-- Explore 
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent })

-- Better window movements
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent })

-- Better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent })

-- I hate escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent })
vim.api.nvim_set_keymap("i", "kj", "<ESC>", { noremap = true, silent })
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent })

-- Tab switch buffer
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", { noremap = true, silent })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", { noremap = true, silent })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent })

-- TAB complete
vim.api.nvim_set_keymap("i", "<expr><TAB>", 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true })
