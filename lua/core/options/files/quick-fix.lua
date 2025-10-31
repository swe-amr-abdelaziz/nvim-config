---- running make and jumping to errors (quickfix) ----

-- program to use for the ":make" command
vim.opt.makeprg = "make"

-- description of the lines in the error file
vim.opt.errorformat = "%f:%l:%c:%m"
