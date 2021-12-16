require("nv-globals");
vim.cmd("luafile ~/.config/nvim/nv-settings.lua");
require("settings");
require("plugins");
require("nv-utils");
require("nv-autocommands");
require("keymappings");
require("nv-nvimtree");
require("colorscheme");
require("nv-galaxyline");
require("nv-comment");
require("nv-compe");
require("nv-barbar");
require("nv-dashboard");
require("nv-telescope");
--require("gitsigns");
--require("nv-autopairs");
require("nv-rnvimr");
--require("nv-which-key");

-- TODO: is there a better way to do this withour vimscript
vim.cmd("source ~/.config/nvim/vimscript/functions.vim");

-- Plugins 
require("nv-colorizer");
require("nv-treesitter");
require("nv-bufferline");

-- LSP
require("lsp");
require("lsp.angular-ls");
require("lsp.bash-ls");
require("lsp.clangd-ls");
require("lsp.css-ls");
require("lsp.dart-ls");
require("lsp.docker-ls");
require("lsp.efm-general-ls");
require("lsp.elm-ls");
require("lsp.emmet-ls");
require("lsp.graphql-ls");
require("lsp.go-ls");
require("lsp.html-ls");
require("lsp.json-ls");
require("lsp.js-ts-ls");
require("lsp.kotlin-ls");
require("lsp.latex-ls");
require("lsp.lua-ls");
require("lsp.php-ls");
require("lsp.python-ls");
require("lsp.ruby-ls");
require("lsp.rust-ls");
require("lsp.svelte-ls");
require("lsp.terraform-ls");
require("lsp.tailwindcss-ls");
require("lsp.vim-ls");
require("lsp.vue-ls");
require("lsp.yaml-ls");
require("lsp.elixir-ls");
