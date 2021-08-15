lua require'bufferline'.setup{}
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent });
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent });
