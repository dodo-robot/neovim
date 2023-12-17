vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            }
        }
    }

    use({
        'navarasu/onedark.nvim',
		as = 'onedark.nvim',
		config = function()
			vim.cmd("colorscheme onedark")
		end
	})


	use('nvim-treesitter/nvim-treesitter', {requires = {'nvim-treesitter/nvim-treesitter-textobjects',}, run =  ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('vim-test/vim-test')
	use('folke/neodev.nvim')
	use('mbbill/undotree')

    -- file explorer
    --use("nvim-tree/nvim-tree.lua")

    -- vs-code like icons
    use("nvim-tree/nvim-web-devicons")
    use("nvim-tree/nvim-tree.lua")

    use("ryanoasis/vim-devicons")


	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			--- Uncomment these if you want to manage LSP servers from neovim
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{'neovim/nvim-lspconfig'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'}
		}
	}
	use('tpope/vim-fugitive')
	use('theprimeagen/harpoon')

end)
