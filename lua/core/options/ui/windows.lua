---- multiple windows ----

-- always display a global status line
vim.opt.laststatus = 3

-- make all windows the same size when adding/removing windows
vim.opt.equalalways = false

-- minimal number of lines used for the current window
vim.opt.winheight = 1

-- minimal number of lines used for any window
vim.opt.winminheight = 1

-- keep the height of the window
vim.opt.winfixheight = true

-- keep the width of the window
vim.opt.winfixwidth = true

-- minimal number of columns used for the current window
vim.opt.winwidth = 20

-- minimal number of columns used for any window
vim.opt.winminwidth = 5

-- initial height of the help window
vim.opt.helpheight = 0

-- don't unload a buffer when no longer shown in a window
vim.opt.hidden = true

-- which window to use when jumping to a buffer
vim.opt.switchbuf = { "useopen", "usetab", "uselast" }

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
