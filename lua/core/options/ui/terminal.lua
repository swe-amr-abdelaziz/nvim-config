---- terminal ----

-- show info in the window title
vim.opt.title = true

-- string to be used for the window title
vim.opt.titlestring = "%t %m (%{fnamemodify(getcwd(), ':t')}) - NVIM"
