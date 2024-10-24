require 'core.options'
require 'core.keymaps'



-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
local plugins = {
  require 'plugins.catppuccin',
  require 'plugins.blankindent',
  require 'plugins.closer',
  require 'plugins.neotab',
  require 'plugins.neotree',
  require 'plugins.telescope',
  require 'plugins.treesitter',
  require 'plugins.lsp',
  require 'plugins.lspconfig',
  require 'plugins.richpresence',
  require 'plugins.autocomplete',
  require 'plugins.coderunner',
  require 'plugins.vimbegood',
  require 'plugins.cphelper',
  require 'plugins.vimtex',
  require 'plugins.startup',
  require 'plugins.menu',
  require 'plugins.snippets'
  --require 'plugins.snip'
}

local opts = {}

require("lazy").setup(plugins, opts)
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin-macchiato"

local builtin = require('telescope.builtin')

-- lets telescope view hidden files
local telescope = require('telescope')
telescope.setup{
  pickers = {
    find_files = {
      hidden = true
    }
  }
}

local parser_install_dir = vim.fn.stdpath("cache") .. "/treesitters"
vim.fn.mkdir(parser_install_dir, "p")
vim.opt.runtimepath:append(parser_install_dir) -- fixes an annoying error

require("nvim-treesitter.install")prefer_git = true
local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = {"cpp", "python", "lua", "css"},
  highlight = {
    enable = true,
    disable = {"latex"},
    additional_vim_regex_highlighting = { "latex", "markdown" },
  },
  indent = {enable = true},
  parser_install_dir = parser_install_dir
})



local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

---
--- KEYBINDS 
---
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
