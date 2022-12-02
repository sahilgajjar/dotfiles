return require('packer').startup(function()

	-- packer can manager itself 
	use 'wbthomason/packer.nvim'
    


	-- colorscheme 
	use 'navarasu/onedark.nvim'
	use 'gruvbox-community/gruvbox'
	use 'folke/tokyonight.nvim'
	use 'luisiacc/gruvbox-baby'
	-- treesitter is love
	use 'nvim-treesitter/nvim-treesitter'


	-- file tree for neovim just like nerd tree	
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		},
		config = function() require'nvim-tree'.setup {} end
	}
	

	-- autopair for speed
	-- use 'jiangmiao/auto-pairs'


	-- autotag for web
	use 'windwp/nvim-ts-autotag'


	-- surround 
	use 'tpope/vim-surround'


	-- lifeline 
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	
	-- comment out stuff
	use 'terrortylor/nvim-comment'


	-- which key ? 
	use {
	  "folke/which-key.nvim",
	  config = function()
		require("which-key").setup {
		  -- your configuration comes here
		  -- or leave it empty to use the default settings
		  -- refer to the configuration section below
		}
	  end
	}

	
	-- diffview 
	use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
	

	-- blackline
	use 'lukas-reineke/indent-blankline.nvim'

	-- telescope for neovim 
	use 'nvim-telescope/telescope.nvim'

	--  startup screen for neovim
	use 'startup-nvim/startup.nvim'
	
	-- Gaze deeply into the unknown
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--Use fzf native for telescope
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	
	-- html plugins
    use 'm4xshen/autoclose.nvim'

    use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
    })

    -- lsp for neovim 
    local use = require('packer').use
    require('packer').startup(function()
      use 'wbthomason/packer.nvim' -- Package manager
      use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    end)

    -- cattputccin color theme
    use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
        require("catppuccin").setup {
            flavour = "macchiato" -- mocha, macchiato, frappe, latte
        }
        vim.api.nvim_command "colorscheme catppuccin"
    end
    }
end)
