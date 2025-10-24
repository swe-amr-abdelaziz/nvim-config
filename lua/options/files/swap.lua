---- the swap file ----

-- use a swap file for this buffer
vim.opt.swapfile = false

-- interval for writing swap file to disk, also used by gitsigns
vim.opt.updatetime = 250

-- directory for swap files
vim.opt.directory = vim.fn.stdpath("data") .. "/swap"
