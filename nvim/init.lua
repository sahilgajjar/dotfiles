vim.g.mapleader = " "

vim.api.nvim_set_keymap('i','jk','<ESC>', { noremap = true })

vim.o.relativenumber = true

local set = vim.opt -- set options
set.tabstop = 4
set.softtabstop = 4 
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.autoindent = true


-- treesitter 
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- packer 
require('packer-plugins')

-- theme one dark 
		-- Lua
		-- require('onedark').setup {
		-- 	style = 'darker'
		-- }
		-- require('onedark').load()
		--
		--theme gruvbox 
		--vim.cmd[[colorscheme gruvbox]]
		--tokyonight--
		vim.cmd[[colorscheme catppuccin "catppuccin mocha"]]


-- cattppucin theme
    require("catppuccin").setup(
        {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
        compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
        transparent_background = false,
        term_colors = false,
        dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.15,
        },
        styles = {
            comments = { "italic" },
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
        },
        color_overrides = {},
        custom_highlights = {},
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            telescope = true,
            treesitter = true,
            -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
    })
-- lifeline 
require('lualine').setup()
--require('lualine').setup{
--	 options = {
--	    -- ... your lualine config
--	 }
--}


-- indent guide
--	
--	-- setup 0 
    vim.opt.list = true
    vim.opt.listchars:append "eol:↴"

    require("indent_blankline").setup {
        show_end_of_line = true,
    }
--	-- setup 1
	--  vim.opt.list = true
	--  vim.opt.listchars:append "space:⋅"
	--  vim.opt.listchars:append "eol:↴"
	--
	--  require("indent_blankline").setup {
	--  	show_end_of_line = true,
	--  	space_char_blankline = " ",
	-- }
	--setup 2
	-- vim.opt.termguicolors = true
	-- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
	-- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
	-- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
	-- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
	-- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
	-- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
	--
	-- vim.opt.list = true
	-- vim.opt.listchars:append "space:⋅"
	-- vim.opt.listchars:append "eol:↴"
	--
	-- require("indent_blankline").setup {
	-- 	space_char_blankline = " ",
	-- 	char_highlight_list = {
	-- 		"IndentBlanklineIndent1",
	-- 		"IndentBlanklineIndent2",
	-- 		"IndentBlanklineIndent3",
	-- 		"IndentBlanklineIndent4",
	-- 		"IndentBlanklineIndent5",
	-- 		"IndentBlanklineIndent6",
	-- 	},
	-- }
	
	
	-- setup 3
	-- vim.opt.list = true
	-- vim.opt.listchars:append "space:⋅"
	-- vim.opt.listchars:append "eol:↴"

	-- require("indent_blankline").setup {
	-- 	space_char_blankline = " ",
	-- 	show_current_context = true,
	-- 	show_current_context_start = true,
	-- }	
    
 

-- auto tag for web dev 
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

-- comment out stuff

 require('nvim_comment').setup()


 -- which key 

	require("which-key").setup() 
	      -- your configuration comes here
	      -- or leave it empty to use the default settings
	      -- refer to the configuration section below

-- lsp for neovim
    require'lspconfig'.pyright.setup{}
