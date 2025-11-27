-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Basic settings
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.mouse = 'a'             -- Enable mouse
vim.opt.ignorecase = true       -- Ignore case in search
vim.opt.smartcase = true        -- Unless uppercase is used
vim.opt.hlsearch = false        -- Don't highlight search results
vim.opt.wrap = false            -- Don't wrap lines
vim.opt.breakindent = true      -- Preserve indentation in wrapped text
vim.opt.tabstop = 4             -- Tab width
vim.opt.shiftwidth = 4          -- Indent width
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.termguicolors = true    -- True color support
vim.opt.signcolumn = "yes"      -- Always show sign column
vim.opt.updatetime = 250        -- Faster completion
vim.opt.timeoutlen = 300        -- Faster key sequence completion
vim.opt.splitright = true       -- Vertical splits go right
vim.opt.splitbelow = true       -- Horizontal splits go below
vim.opt.undofile = true         -- Persistent undo
vim.opt.scrolloff = 8           -- Keep 8 lines above/below cursor
vim.opt.cursorline = true       -- Highlight current line

-- Plugin specifications
require("lazy").setup({
  -- VSCode color scheme
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      require('vscode').setup({
        transparent = false,
        italic_comments = true,
        disable_nvimtree_bg = true,
      })
      vim.cmd.colorscheme('vscode')
    end,
  },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = 35,
        },
        filters = {
          dotfiles = false,
        },
        git = {
          enable = true,
          ignore = false,
        },
      })
    end,
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ["<C-u>"] = false,
              ["<C-d>"] = false,
            },
          },
        },
      })
    end,
  },

  -- Treesitter for better syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "vimdoc", "python", "javascript", "typescript", "html", "css", "json", "yaml", "bash" },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'vscode',
          component_separators = '|',
          section_separators = '',
        },
      })
    end,
  },

  -- Buffer line (tab bar)
  {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          diagnostics = false,
          separator_style = "thin",
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
      })
    end,
  },

  -- Git signs
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup({
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '_' },
          topdelete = { text = '‾' },
          changedelete = { text = '~' },
        },
      })
    end,
  },

  -- Auto pairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  -- Comment toggling
  {
    "numToStr/Comment.nvim",
    config = function()
      require('Comment').setup()
    end,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = {
          char = "│",
        },
        scope = {
          enabled = false,
        },
      })
    end,
  },

  -- Treesitter for better syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "vimdoc", "python", "javascript", "typescript", "html", "css", "json", "yaml", "bash" },
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
      })
    end,
  },


    -- Jump anywhere on screen
{
  "ggandor/leap.nvim",
  config = function()
    require("leap").add_default_mappings()
  end,
},

-- Git commands
{
  "tpope/vim-fugitive",
  cmd = { "Git", "G" },
},

-- Better diff UI
{
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  config = function()
    require("diffview").setup()
  end,
},

-- Highlight and search TODOs
{
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("todo-comments").setup()
  end,
},

-- Quick buffer switching
{
  "leath-dub/snipe.nvim",
  keys = {
    { "gb", function() require("snipe").open_buffer_menu() end, desc = "Snipe buffer menu" },
  },
  config = function()
    require("snipe").setup()
  end,
},

-- Better quickfix/diagnostics UI
{
  "folke/trouble.nvim",
  cmd = { "Trouble", "TroubleToggle" },
  config = function()
    require("trouble").setup()
  end,
},


  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    config = function()
      local neoscroll = require("neoscroll")
      neoscroll.setup({
        mappings = {},
        hide_cursor = true,
        stop_eof = true,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        easing_function = "quadratic",
        pre_hook = nil,
        post_hook = nil,
        performance_mode = false,
      })

      local keymap = {
        ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250 }) end,
        ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250 }) end,
        ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450 }) end,
        ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450 }) end,
        ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 }) end,
        ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 100 }) end,
        ["zt"]    = function() neoscroll.zt({ half_win_duration = 250 }) end,
        ["zz"]    = function() neoscroll.zz({ half_win_duration = 250 }) end,
        ["zb"]    = function() neoscroll.zb({ half_win_duration = 250 }) end,
      }

      local modes = { "n", "v", "x" }
      for key, func in pairs(keymap) do
        vim.keymap.set(modes, key, func)
      end
    end,
  },
})

-- Key mappings
local keymap = vim.keymap.set

-- File tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })
keymap("n", "<leader>o", ":NvimTreeFocus<CR>", { desc = "Focus file tree" })

-- Telescope fuzzy finder
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Help tags" })

-- Buffer navigation
keymap("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Better indenting
keymap("v", "<", "<gv", { desc = "Indent left" })
keymap("v", ">", ">gv", { desc = "Indent right" })

-- Move lines up/down
keymap("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Clear search highlighting
keymap("n", "<Esc>", ":noh<CR>", { desc = "Clear search highlight" })

-- Save and quit shortcuts
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })
keymap("n", "<leader>q", ":q<CR>", { desc = "Quit" })

 
vim.keymap.set("n", "<leader>gg", ":Git<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Diff view" })
vim.keymap.set("n", "<leader>gh", ":DiffviewFileHistory %<CR>", { desc = "File history" })
vim.keymap.set("n", "<leader>gq", ":DiffviewClose<CR>", { desc = "Close diff" })
vim.keymap.set("n", "<leader>tt", ":TodoTelescope<CR>", { desc = "Search TODOs" })
vim.keymap.set("n", "<leader>tr", ":Trouble<CR>", { desc = "Toggle Trouble" })

