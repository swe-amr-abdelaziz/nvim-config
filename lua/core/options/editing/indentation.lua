---- tabs and indenting ----

-- number of visual spaces per <Tab>
vim.opt.tabstop = 2

-- number of spaces to use for autoindent
vim.opt.shiftwidth = 2

-- <Tab> infront of a line inserts blanks based on shiftwidth
vim.opt.smarttab = true

-- number of spaces in <Tab> when editing
vim.opt.softtabstop = 2

-- round to 'shiftwidth' for "<<" and ">>"
vim.opt.shiftround = true

-- convert <Tab> to spaces
vim.opt.expandtab = true

-- copy the indentation from the previous line
vim.opt.autoindent = true

-- do clever autoindenting
vim.opt.smartindent = true

-- enable specific indenting for C code
vim.opt.cindent = true
