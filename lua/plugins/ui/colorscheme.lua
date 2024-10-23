return {
  "dracula/vim",
  lazy = false,
  priority = 1000,
  name = "dracula",
  config = function ()
    local palette = vim.g["dracula#palette"]

    palette.bglighter = { "#2C2D35", 236 }
    palette.bglight   = { "#23252F", 235 }
    palette.bg        = { "#1A1B23", 234 }
    palette.bgdark    = { "#16171D", 233 }
    palette.bgdarker  = { "#121217", 232 }

    palette.selection = { "#2C2D35", 236 }
    palette.subtle    = { "#23252F", 235 }

    vim.g["dracula#palette"] = palette

    vim.cmd.colorscheme("dracula")
  end
}
