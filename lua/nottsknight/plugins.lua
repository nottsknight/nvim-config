-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Language Server
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    use('vim-autoformat/vim-autoformat')

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- File search
    use {
        'nvim-lua/telescope.nvim', tag = '0.1.x',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- Git
    use('tpope/vim-fugitive')

    -- Colorscheme
    use('sainnhe/everforest')

    use('ledger/vim-ledger')

    use ('echasnovski/mini.nvim')

    use('HiPhish/gradle.nvim')

    use {
        'mrcjkb/haskell-tools.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'}
        },
        version = '^2',
        ft = {'haskell', 'lhaskell', 'cabal', 'cabalproject'}
    }

    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
end)
