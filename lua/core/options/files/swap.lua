---- the swap file ----

-- directory for swap files
vim.opt.directory = vim.fs.joinpath(vim.fn.stdpath("data"), "swap")

-- use a swap file for this buffer
vim.opt.swapfile = false

-- number of characters typed to cause a swap file update
vim.opt.updatecount = 200

-- interval for writing swap file to disk, also used by gitsigns
vim.opt.updatetime = 250
