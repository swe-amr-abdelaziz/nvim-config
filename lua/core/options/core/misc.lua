---- various ----

-- virtual edit is useful for visual block edit
vim.opt.virtualedit = "block"

-- list of words that specifies what to put in a session file
vim.opt.sessionoptions = {
  "buffers",
  "curdir",
  "folds",
  "globals",
  "help",
  "skiprtp",
  "tabpages",
  "winsize",
}

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"
