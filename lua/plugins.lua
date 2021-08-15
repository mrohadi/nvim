local execute = vim.api.nvim_command;
local fn = vim.fn;

-- local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

--[[
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  execute 'packadd packer.nvim'
end
--]]

return require("packer").startup(function()
  -- Packer can manage itself
  use "nanotee/nvim-lua-guide";
  use { "wbthomason/packer.nvim", opt = true }; 
  use "kyazdani42/nvim-tree.lua";
  use "neovim/nvim-lspconfig";
  use "hrsh7th/nvim-compe";
  use "hrsh7th/vim-vsnip";
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" };
  use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    -- config = function() require'my_statusline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  };

  -- Telescope
  use "nvim-lua/popup.nvim";
  use "nvim-lua/plenary.nvim";
  use "nvim-telescope/telescope.nvim";
  use "nvim-telescope/telescope-media-files.nvim";
  use "glepnir/lspsaga.nvim";
  use "kosayoda/nvim-lightbulb";
  use "mfussenegger/nvim-jdtls";
  use "mfussenegger/nvim-dap";
  use "christianchiarulli/nvcode-color-schemes.vim";
  use "norcalli/nvim-colorizer.lua";
  use "kevinhwang91/nvim-bqf";
  use "unblevable/quick-scope";
  use "airblade/vim-rooter";
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'};
end);
