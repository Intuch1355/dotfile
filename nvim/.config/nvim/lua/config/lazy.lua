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

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {

    -- 🎨 Catppuccin
    {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      config = function()
        require("catppuccin").setup({
          flavour = "mocha",
          transparent_background = true,
          integrations = {
            lualine = false,
          },
        })

        vim.cmd.colorscheme("catppuccin") -- ✅ FIXED
      end,
    },

    -- 📊 Lualine
    {
      "nvim-lualine/lualine.nvim",
      dependencies = { "catppuccin/nvim" },
      config = function()
        local C = require("catppuccin.palettes").get_palette()
        local transparent_bg = "NONE"

        local custom_theme = {
          normal = {
            a = { bg = C.blue, fg = C.mantle, gui = "bold" },
            b = { bg = C.surface0, fg = C.blue },
            c = { bg = transparent_bg, fg = C.text },
          },
          insert = {
            a = { bg = C.green, fg = C.base, gui = "bold" },
            b = { bg = C.surface0, fg = C.green },
          },
          terminal = {
            a = { bg = C.green, fg = C.base, gui = "bold" },
            b = { bg = C.surface0, fg = C.green },
          },
          command = {
            a = { bg = C.peach, fg = C.base, gui = "bold" },
            b = { bg = C.surface0, fg = C.peach },
          },
          visual = {
            a = { bg = C.mauve, fg = C.base, gui = "bold" },
            b = { bg = C.surface0, fg = C.mauve },
          },
          replace = {
            a = { bg = C.red, fg = C.base, gui = "bold" },
            b = { bg = C.surface0, fg = C.red },
          },
          inactive = {
            a = { bg = transparent_bg, fg = C.blue },
            b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
            c = { bg = transparent_bg, fg = C.overlay0 },
          },
        }

        require("lualine").setup({
          options = {
            theme = custom_theme,
            section_separators = "",
            component_separators = "",
          },
        })
      end,
    },

  }, -- ✅ correctly closes spec

  install = { colorscheme = { "catppuccin" } }, -- also fixed name
  checker = { enabled = true },
})
