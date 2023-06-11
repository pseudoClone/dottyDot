local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lualine/lualine.nvim'
	use{
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} 
		end 
	}
	use {'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
}
use {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
}

use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-buffer'
use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
})
use 'saadparwaiz1/cmp_luasnip'
use 'rafamadriz/friendly-snippets'
use {
	'numToStr/Comment.nvim',
	config = function()
		require('Comment').setup()
	end
}

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
	require('packer').sync()
end
end)
