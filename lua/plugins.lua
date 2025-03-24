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
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("config.lualine")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        config = function()
            require("config.noice")
        end,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    { 
        "lukas-reineke/indent-blankline.nvim", 
        main = "ibl",
        config = function()
            require("config.indent-blankline")
        end,
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "akinsho/bufferline.nvim", 
        config = function()
            require("config.bufferline")
        end, 
        dependencies = "nvim-tree/nvim-web-devicons"
    },
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        },
        config = function()
            require("config.nvim-tree")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        dependencies = {
            "nvim-telescope/telescope-symbols.nvim",
            "BurntSushi/ripgrep",
            "nvim-lua/plenary.nvim"
        },
        config = function()
            require("config.telescope")
        end
    },
    {
        "lukas-reineke/headlines.nvim",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true, -- or `opts = {}`
    },
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("config.dashboard")
        end,
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        }
    },
    { 
        "itchyny/vim-highlighturl", 
        event = "VeryLazy" 
    },
    {
        "tyru/open-browser.vim",
        enabled = function()
            if vim.g.is_win then
                return true
            else
                return false
            end
        end,
        event = "VeryLazy",
    },
    {
        "tpope/vim-fugitive",
    },
    {
        "voldikss/vim-floaterm"
    },
    {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget")
        end,
    },
    {
        "kevinhwang91/nvim-hlslens",
        config = true
    },
    {
        "NvChad/nvim-colorizer.lua",
        config = true
    },
    {
        "gaborvecsei/usage-tracker.nvim",
        config = true
    },
    {
        "mateuszwieloch/automkdir.nvim"
    },
    {
        "alienman5k/jdecomp.nvim",
        opts = {
            decompiler = 'fernflower', -- cfr, procyon, fernflower
            provider = {
                cfr = {
                    jar = os.getenv('PATH') .. '/cfr-0.152.jar'
                },
                procyon = {
                    jar = os.getenv('PATH') .. '/procyon-decompiler-0.6.0.jar'
                },
                fernflower = {
                    jar = os.getenv('PATH') .. '/vineflower-1.10.1.jar'
                }
            }
        }   
    },

    -- code completions
    {
        "nvimdev/lspsaga.nvim",
        config = function()
            require("config.lspsaga")
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        }
    },
    {
        "prabirshrestha/vim-lsp"
    },
    {
        "mattn/vim-lsp-settings"
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("config.mason")
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("config.mason-lspconfig")
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("config.nvim-lspconfig")
        end,
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("config.nvim-cmp")
        end,
        dependencies = {
            "onsails/lspkind.nvim",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
        }
    },

    -- colorschemes
    { "w0ng/vim-hybrid", lazy = true },
    { "catppuccin/nvim", name = "catppuccin", lazy = true },
    { "cocopon/iceberg.vim", lazy = true },
    { "nanotech/jellybeans.vim", lazy = true },
    { "navarasu/onedark.nvim", lazy = true },
    { "sainnhe/edge", lazy = true },
    { "sainnhe/sonokai", lazy = true },
    { "sainnhe/gruvbox-material", lazy = true },
    { "sainnhe/everforest", lazy = true },
    { "EdenEast/nightfox.nvim", lazy = true },
    { "olimorris/onedarkpro.nvim", lazy = true },
    { "marko-cerovac/material.nvim", lazy = true },
})
