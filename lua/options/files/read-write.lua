---- reading and writing files ----

-- write a backup file before overwriting a file
vim.opt.writebackup = false

-- keep a backup after overwriting a file
vim.opt.backup = false

-- directory for backup files
vim.opt.backupdir = vim.fn.stdpath("data") .. "/backup"

-- automatically write the file when leaving a modified buffer
vim.opt.autowrite = true
