---- displaying text ----

-- number of lines to scroll for CTRL-U and CTRL-D (default half the window height, scroll = 0)
vim.opt.scroll = 0

-- minimum lines to keep above and below cursor when scrolling
vim.opt.scrolloff = 8

-- don't wrap long text into multiple lines
vim.opt.wrap = false

-- break line at predefined characters
vim.opt.linebreak = true

-- wrap lines with indent
vim.opt.breakindent = true

-- character to show before the lines that have been wrapped
vim.opt.showbreak="↳ "

-- minimal number of columns to scroll horizontally
vim.opt.sidescroll = 1

-- minimum lines to keep left and right of the cursor when scrolling (when wrap is off)
vim.opt.sidescrolloff = 16

-- characters to use for the status line, folds and filler lines
vim.opt.fillchars = { diff = "╱", eob = " ", fold = " ", foldclose = "", foldopen = "", foldsep = " ", msgsep = "‾", vert = "│" }

-- number of lines used for the command-line
vim.opt.cmdheight = 1

-- useful when executing macros.
vim.opt.lazyredraw = true

-- show the line number for each line
vim.opt.number = true

-- show the relative line number for each line
vim.opt.relativenumber = true

-- number of columns to use for the line number
vim.opt.numberwidth = 4

-- concealable text is visible in markdown files
vim.opt.conceallevel = 0
