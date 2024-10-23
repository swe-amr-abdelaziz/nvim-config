---- command line editing ----

-- list of patterns to ignore files for file name completion
vim.opt.wildignore:append {
  "*/.git/*",
  "*/.svn*",
  "*/__pycache__/*",
  "*/build/*",
  "*/dist/*",
  "*/node_modules/*"
}

-- ignore case when using file names
vim.opt.fileignorecase = true

-- ignore case when completing file names
vim.opt.wildignorecase = true
