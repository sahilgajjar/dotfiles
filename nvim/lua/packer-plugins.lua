return require('packer').startup(function()

	-- packer can manager itself 
	use 'wbthomason/packer.nvim'
    
	-- colorscheme 
	use 'gruvbox-community/gruvbox'
    use 'catppuccin/nvim'

	-- treesitter is love
	use 'nvim-treesitter/nvim-treesitter'

    -- nvim tree
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons' -- for icons

    -- lualine 
    use 'nvim-lualine/lualine.nvim'

    -- web dev plugins
    use 'windwp/nvim-ts-autotag' -- html/css autotag
    use 'm4xshen/autoclose.nvim' -- will find out ! 

    -- surround 
    use 'tpope/vim-surround'

    -- comment out stuff
    use 'terrortylor/nvim-comment'

    -- startup screen 
    use "startup-nvim/startup.nvim"
    use "nvim-telescope/telescope.nvim" -- prerequities
    use "nvim-lua/plenary.nvim" -- prerequities

end)
