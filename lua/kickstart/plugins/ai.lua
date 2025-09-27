return {
  -- AI coding
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    lazy = true,
    event = 'InsertEnter',
    opts = {
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = '<C-l>', -- Ctrl+l で全体受け入れ
          accept_word = '<C-Right>', -- 単語単位
          next = '<M-]>',
          prev = '<M-[>',
          dismiss = '<C-]>',
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
      },
    },
    config = function(_, opts)
      require('copilot').setup(opts)
      -- 補完テキストの色を見やすく調整
      vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
        fg = '#808080', -- より明るいグレー
        italic = true,
      })
    end,
  },
  {
    'yetone/avante.nvim',
    lazy = false,
    event = 'VeryLazy',
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      provider = 'copilot',
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = 'make',
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
      'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
      'zbirenbaum/copilot.lua', -- for providers='copilot'
      {
        -- support for image pasting
        'HakonHarnes/img-clip.nvim',
        event = 'VeryLazy',
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      -- {
      -- 	-- Make sure to set this up properly if you have lazy=true
      -- 	"MeanderingProgrammer/render-markdown.nvim",
      -- 	opts = {
      -- 		file_types = { "markdown", "Avante" },
      -- 	},
      -- 	ft = { "markdown", "Avante" },
      -- },
    },
  },
}
