local execute = vim.api.nvim_command
local fn = vim.fn

-- local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

--[[
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  execute 'packadd packer.nvim'
end
--]]

return require("packer").startup(function()
  -- Packer can manage itself
  use { "wbthomason/packer.nvim", opt = true } 
  use "kyazdani42/nvim-tree.lua"
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
end)


