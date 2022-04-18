return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- vim wiki
    use 'vimwiki/vimwiki'

    -- closes brackets
    use 'jiangmiao/auto-pairs'

    -- lsp native
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

    -- snippets
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'rafamadriz/friendly-snippets' -- Snippets databse
    
    -- highlihgting
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    --status line (lualine) (bufferline)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

    --vifm 
    use 'vifm/vifm.vim'
    use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

end)

