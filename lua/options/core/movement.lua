---- moving around, searching and patterns ----

-- go to previous/next line with backspace/space, arrow keys
vim.opt.whichwrap = "bs<>[]"

-- commands like G, H, L will keep the cursor in the same column as before
vim.opt.startofline = false

-- don't automatically changes the working directory to the directory of the file in the buffer
vim.opt.autochdir = false

-- search commands wrap around the end of the buffer
vim.opt.wrapscan = true

-- make search act like search in modern browsers
vim.opt.incsearch = true

-- change the way backslashes are used in search patterns (making regex-style searches more flexible)
vim.opt.magic = true

-- ignore case when using a search pattern
vim.opt.ignorecase = true

-- override 'ignorecase' when pattern has upper case characters
vim.opt.smartcase = true

-- maximum amount of memory in Kbyte used for pattern matching
vim.opt.maxmempattern = 2000

-- show live feedback during a substitution in progress
vim.opt.inccommand = "split"
