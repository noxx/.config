return require('packer').startup(function()

    -- Packer can manage itself
	use 'webthomas/packer.nvim'
    ----------------------------


    --colorschemes


    -- vimwiki
    use 'vimwiki/vimwiki'
    -- closes brackets
    use 'jiangmiao/auto-pairs'


    -- vifm
     use 'vifm/vifm.vim'

    -- using packer.nvim
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}


    --lsp
    use 'neovim/nvim-lspconfig'
    --autocompletion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'saadparwaiz1/cmp_luasnip'

    --lua snips
    use 'L3Mon4D3/LuaSnip'
    use "rafamadriz/friendly-snippets"



    use 'kyazdani42/nvim-tree.lua'

    use {'glepnir/dashboard-nvim'}


    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ":TSUpdate",
    }
    use 'RRethy/nvim-base16'


end)
