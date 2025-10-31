---- reading and writing files ----

-- allow setting options from modelines
vim.opt.modeline = true

-- number of lines to check for modelines
vim.opt.modelines = 5

-- end-of-line format: "dos", "unix" or "mac"
vim.opt.fileformat = "unix"

-- list of file formats to look for when editing a file
vim.opt.fileformats = { "unix", "dos" }

-- write a backup file before overwriting a file
vim.opt.writebackup = false

-- keep a backup after overwriting a file
vim.opt.backup = false

-- directory for backup files
vim.opt.backupdir = vim.fs.joinpath(vim.fn.stdpath("data"), "backup")

-- automatically write the file when leaving a modified buffer
vim.opt.autowrite = true

-- automatically read a file when it was modified outside of Vim
vim.opt.autoread = true
