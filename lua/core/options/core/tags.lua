---- tags ----

-- use binary searching in tags files
vim.opt.tagbsearch = true

-- list of file names to search for tags
vim.opt.tags = "./tags;,tags"

-- how to handle case when searching in tags files (follow the 'smartcase' and 'ignorecase' options)
vim.opt.tagcase = "followscs"

-- file names in a tags file are relative to the tags file
vim.opt.tagrelative = true

-- a :tag command will use the tagstack
vim.opt.tagstack = true

-- when completing tags in Insert mode show more info
vim.opt.showfulltag = true
