return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- auto completion
  use({
      "hrsh7th/nvim-cmp",
      config = function()
          require("init-cmp")
      end,
      requires = {
          { "hrsh7th/cmp-path" },
          { "hrsh7th/cmp-buffer" },
          { "hrsh7th/cmp-nvim-lsp" },
          -- snippet support
          { "L3MON4D3/LuaSnip" },
          { "saadparwaiz1/cmp_luasnip" }
      },
  })
  -- lsp support
  use({
      "neovim/nvim-lspconfig",
      config = function()
          require("init-lspconf")
      end,
  })

  -- color scheme
  use({
      "olimorris/onedarkpro.nvim",
      event = "BufEnter",
      config = function()
          require("init-theme")
      end,
  })

  -- status line
  use({
      "windwp/windline.nvim",
      config = function()
          require("init-windline")
      end,
  })
  -- icons for other plugins
  use({
      "kyazdani42/nvim-web-devicons",
      config = function()
          require("nvim-web-devicons").setup({ default = true })
      end,
  })

  -- treesitter config
  use({
      "nvim-treesitter/nvim-treesitter",
      config = function()
          require("init-treesitter")
      end,
  })

  -- auto pairs
  use("windwp/nvim-autopairs")
  -- auto tags
  use("windwp/nvim-ts-autotag")

  -- indent config
  use({
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("init-indent")
        end,
    })

  end)
