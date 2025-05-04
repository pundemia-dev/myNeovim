
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- ******************** UI ********************
    -- dashboard *****
    {
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
	    require('dashboard').setup {
	      -- config
	    }
	  end,
	  dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
    -- lualine *****
    { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
    -- bufferline *****
	{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    -- keymap *****
    {
	  "folke/which-key.nvim",
	  event = "VeryLazy",
	  init = function()
	    vim.o.timeout = true
	    vim.o.timeoutlen = 300
	  end,
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	  }
	},
    -- colorschemes *****
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "rebelot/kanagawa.nvim", name = "kanagawa", priority = 1000 },
    { "EdenEast/nightfox.nvim" },
    { "rose-pine/neovim", name = "rose-pine", 
      config = function()
            require("rose-pine").setup({styles = {transparency = true},})
	  end,
    },
    
    -- syntax color *****
    { 'nvim-treesitter/nvim-treesitter' },

    -- text animation
    { 'Eandrju/cellular-automaton.nvim' },
    
    -- text color
    { 'norcalli/nvim-colorizer.lua' },

    -- smooth cursor *****
    { 'sphamba/smear-cursor.nvim', opts = {}, },

    -- ******************** Autocomplete ********************
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'hrsh7th/nvim-cmp' },
    { 'echasnovski/mini.nvim', version = false },
    { 'echasnovski/mini.pairs', version = false },

    -- ******************** Navigation ********************
    -- treeview *****
    {
	  "nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
	  config = function()
	    require("nvim-tree").setup {}
	  end,
	},
    -- jk instead esc *****
    {
      "max397574/better-escape.nvim",
      config = function()
        require("better_escape").setup()
      end,
    },
    -- fzf search in files *****
    { 'nvim-telescope/telescope.nvim', tag = '0.1.6', dependencies = { 'nvim-lua/plenary.nvim' } },
    -- move code *****
    { 'echasnovski/mini.move', version = false },

    -- ******************** Comments ********************
    
    {
	  "folke/todo-comments.nvim",
	  dependencies = { "nvim-lua/plenary.nvim" },
	  opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	  }
	},
    {
	    'numToStr/Comment.nvim',
	    opts = {
	        -- add any options here
	    },
	    lazy = false,
	},

    -- ******************** Code analysis ********************
	{ 'neovim/nvim-lspconfig' },
    -- Asynchronous Lint Engine
    {
	    'dense-analysis/ale',
	    config = function()
	        -- Configuration goes here.
	        local g = vim.g
            -- g.ale_virtualenv_dir_names = {'.venv', 'venv', 'env'}
            -- g.ale_virtualenv_dir_names = {}
            -- g.ale_python_mypy_auto_uv = 0--{ vim.env.VIRTUAL_ENV } 
            -- g.ale_python_auto_uv = true
            -- g.ale_python_auto_virtualenv = 1
            local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
            g.ale_python_mypy_executable = virtual .. "/bin/python"
	        g.ale_linters = {
	        	python = {'mypy'},
	            lua = {'lua_language_server'}
	        }
	    end
	},
    {
	    "folke/trouble.nvim",
	    dependencies = { "nvim-tree/nvim-web-devicons" },
	    opts = {
	    -- your configuration comes here
	    -- or leave it empty to use the default settings
	    -- refer to the configuration section below
	    },
	},

    -- ******************** Git integration ********************
    { 'lewis6991/gitsigns.nvim' },
    { 'tpope/vim-fugitive' },

	{ 'williamboman/mason.nvim' },
    -- higliting other uses of word
	{ 'RRethy/vim-illuminate' },
	{
	    "vhyrro/luarocks.nvim",
	    priority = 1001, -- this plugin needs to run before anything else
	    opts = {
	        rocks = { "magick" },
	    },
	},
    -- floating terminal
	{'akinsho/toggleterm.nvim', version = "*", config = true},
    -- Авто-сейв
    { 'Pocco81/auto-save.nvim' },
    { 'benomahony/uv.nvim' }
})
