---@type LazySpec
local M = { "dracula/vim" }

M.name = "dracula"
M.lazy = false
M.priority = 1000

--- Configures text styling options for Dracula theme
--- @return nil
local function configure_text_styling()
  vim.g.dracula_bold = 1
  vim.g.dracula_italic = 1
  vim.g.dracula_strikethrough = 1
  vim.g.dracula_underline = 1
  vim.g.dracula_undercurl = 1
  vim.g.dracula_inverse = 1
  vim.g.dracula_colorterm = 1
  vim.g.dracula_high_contrast_diff = 0
end

--- Customizes the Dracula color palette with darker background tones
--- @return nil
local function configure_color_palette()
  ---@alias DraculaColorPair { hex: string, cterm: number }
  ---@type table<string, DraculaColorPair>
  local palette = vim.g["dracula#palette"] or {}

  palette.bglighter = { "#35363F", 238 }
  palette.bglight   = { "#272833", 237 }
  palette.bg        = { "#1B1C25", 236 }
  palette.bgdark    = { "#14151C", 235 }
  palette.bgdarker  = { "#0D0E13", 234 }

  vim.g["dracula#palette"] = palette
end

--- Customizes the Dracula highlight groups
--- @return nil
local function configure_highlights()
  local hl = vim.api.nvim_set_hl
end

--- Main configuration function for Dracula theme
--- @return nil
M.config = function()
  configure_text_styling()
  configure_color_palette()
  vim.cmd.colorscheme(M.name)
  configure_highlights()
end

return M
