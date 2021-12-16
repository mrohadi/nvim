local execute = vim.api.nvim_command;
local fn = vim.fn;

 local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

---[[
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  execute 'packadd packer.nvim'
end
--]]

return require("packer").startup(
  function()
    -- Packer can manage itself
    use "wbthomason/packer.nvim"; 

    -- TODO: refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
    use { "nanotee/nvim-lua-guide", otp = true };
    use { "kabouzeid/nvim-lspinstall", opt = true };

    -- Telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Autocomplete
    use "hrsh7th/nvim-compe";
    use "hrsh7th/vim-vsnip";
    use { "rafamadriz/friendly-snippets", opt = true }
    
    -- Treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" };
    use "nvim-treesitter/playground";
    use "windwp/nvim-ts-autotag"

    -- Explorer
    use "kyazdani42/nvim-tree.lua";
    -- TODO remove when open on dir is supported by nvimtree
    use "kevinhwang91/rnvimr"

    -- use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'};
    use {"lewis6991/gitsigns.nvim", opt = true}
    -- use {"liuchengxu/vim-which-key", opt = true};
    use {"folke/which-key.nvim", opt = true};
    use {"ChristianChiarulli/dashboard-nvim", opt = true}
    use {"windwp/nvim-autopairs", opt = true}
    use "terrortylor/nvim-comment"
    use "kevinhwang91/nvim-bqf";

    -- Colors 
    use { "christianchiarulli/nvcode-color-schemes.vim", opt = true };

    -- Icons
    use {"kyazdani42/nvim-web-devicons", opt = true}
    

    -- Status line and bufferline
    use {
    'glepnir/galaxyline.nvim',
      branch = 'main',
      -- your statusline
      -- config = function() require'my_statusline' end,
      -- some optional icons
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    };
    use {"romgrk/barbar.nvim", opt = true};

    use "neovim/nvim-lspconfig";
    use "p00f/nvim-ts-rainbow";
    use "glepnir/lspsaga.nvim";
    use "kosayoda/nvim-lightbulb";
    use "mfussenegger/nvim-jdtls";
    use "mfussenegger/nvim-dap";
    use "norcalli/nvim-colorizer.lua";
    use "unblevable/quick-scope";
    use "airblade/vim-rooter";
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'};

end);
