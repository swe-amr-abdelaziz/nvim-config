---- command line editing ----

-- number of command-lines that are remembered
vim.opt.history = 10000

-- specifies how command line completion works
vim.opt.wildmode = { "longest:full", "full" }

-- list of patterns to ignore files for file name completion
vim.opt.wildignore:append({
  "*/.git/*",
  "*/.svn*",
  "*/__pycache__/*",
  "*/build/*",
  "*/dist/*",
  "*/node_modules/*"
})

-- ignore case when using file names
vim.opt.fileignorecase = true

-- ignore case when completing file names
vim.opt.wildignorecase = true

-- command-line completion shows a list of matches
vim.opt.wildmenu = true
