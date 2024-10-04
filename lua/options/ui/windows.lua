---- multiple windows ----

-- always display a global status line
vim.opt.laststatus = 3

-- get help height from the equalalways option
vim.opt.helpheight = 0

-- don't unload a buffer when no longer shown in a window
vim.opt.hidden = true

-- a new window is put below the current one
vim.opt.splitbelow = true

-- avoid the flickering when splitting window horizontal
vim.opt.splitkeep = "screen"

-- a new window is put right of the current one
vim.opt.splitright = true

-- this window scrolls together with other bound windows
vim.opt.scrollbind = false

-- list of options for 'scrollbind'
vim.opt.scrollopt = { "ver", "hor", "jump" }
