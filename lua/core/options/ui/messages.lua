---- messages and info ----

-- disable nvim intro
vim.opt.shortmess:append("csI")

-- don't show the command in the last line
vim.opt.showcmd = false

-- disable showing current mode on command line since statusline plugins can show it
vim.opt.showmode = false

-- don't show the ruler
vim.opt.ruler = false

-- pause listings when the screen is full
vim.opt.more = false

-- confirm to save changes before exiting modified buffer
vim.opt.confirm = true

-- ring the bell for error messages
vim.opt.errorbells = false

-- use a visual bell instead of beeping
vim.opt.visualbell = false

-- do not ring the bell for these reasons
vim.opt.belloff = "all"
