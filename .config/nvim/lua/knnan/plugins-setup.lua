local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') ..
                             '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'https://github.com/wbthomason/packer.nvim', install_path
            'git', 'clone', '--depth', '1',
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

-- automatically install and set up packer.nvim on any machineVy
local packer_bootstrap = ensure_packer()

-- Autocommand to run :PackerCompile whenever plugins.lua gets updated with a autocommand
-- Autoocommand that reloads neovim whenever you save this file
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then return end

return packer.startup(function(use)
    -- Packer Manager              
    use 'wbthomason/packer.nvim'

    -- Git related plugins
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'

    -- appearance
    use {"kaicataldo/material.vim", branch = "main"}
    use 'navarasu/onedark.nvim' -- Theme inspired by Atom
    use {
        "2nthony/vitesse.nvim",
        requires = {
            "tjdevries/colorbuddy.nvim"
            }
        }
    use {'kyazdani42/nvim-web-devicons'} -- icons
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    } -- Fancier statusline

    -- code editing
   use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines
    -- use {
    -- 'numToStr/Comment.nvim',
    -- config = function()
    --     require('Comment').setup()
    -- end
    -- }
    -- use 'tpope/vim-commentary'
    use 'tpope/vim-sleuth' -- Detect tabstop and shiftwidth automatically

    -- Fuzzy Finder (files, lsp, etc)
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
        cond = vim.fn.executable 'make' == 1
    }

    -- treesitter

    use { -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        run = function()
            pcall(require('nvim-treesitter.install').update {with_sync = true})
        end
    }

    use { -- Additional text objects via treesitter
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter'
    }

    -- lsp configs
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'}, -- Required
            {'williamboman/mason.nvim'}, -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            -- Autocompletion
            {'hrsh7th/nvim-cmp'}, -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-buffer'}, -- Optional
            {'hrsh7th/cmp-path'}, -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'}, -- Optional
            -- Snippets
            {'L3MON4D3/LuaSnip'}, -- Required
            {'rafamadriz/friendly-snippets'} -- Optional
        }
    }
    use "lukas-reineke/lsp-format.nvim"
    use "jose-elias-alvarez/null-ls.nvim"

    use { -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        requires = {
            -- Automatically install LSPs to stdpath for neovim
            'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            'j-hui/fidget.nvim',

            -- Additional lua configuration, makes nvim stuff amazing
            'folke/neodev.nvim'
        }
    }

    use { -- Autocompletion
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip', "rafamadriz/friendly-snippets"

        }
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then require('packer').sync() end
end)
