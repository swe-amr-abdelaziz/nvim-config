---- syntax, highlighting and spelling ----

-- the background color brightness
vim.opt.background = "dark"

-- create various file types for proper recognition by lsp and treesitter
vim.filetype.add({
  extension = {
    sh = "sh",
    zsh = "sh",
    env = "dotenv",
  },
  filename = {
    [".zshenv"] = "sh",
    [".zshrc"] = "sh",
    ["zshrc"] = "sh",
    [".env"] = "dotenv",
    ["env"] = "dotenv",
  },
  pattern = {
    ["[jt]sconfig.*.json"] = "jsonc",
    ["%.env%.[%w_.-]+"] = "dotenv",
  },
})

-- name of syntax highlighting used
vim.opt.syntax = "on"

-- highlight all matches for the last used search pattern
vim.opt.hlsearch = true

-- enable true color support
vim.opt.termguicolors = true

-- highlight the screen column of the cursor
vim.opt.cursorcolumn = false

-- highlight the screen line of the cursor
vim.opt.cursorline = true

-- specifies which area 'cursorline' highlights
vim.opt.cursorlineopt = "both"

-- columns to highlight
vim.opt.colorcolumn = ""

-- highlight spelling mistakes
vim.opt.spell = false

-- list of accepted languages
vim.opt.spelllang = { "en", "ar" }
