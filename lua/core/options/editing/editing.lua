---- editing text ----

-- maximum number of changes that can be undone
vim.opt.undolevels = 10000

-- persistent undo even after you close a file and re-open it
vim.opt.undofile = true

-- list of directories for undo files
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- maximum number lines to save for undo on a buffer reload
vim.opt.undoreload = 10000

-- line length above which to break a line
vim.opt.textwidth = 0

-- specifies what <BS>, CTRL-W, etc. can do in Insert mode
vim.opt.backspace = { "start", "eol", "indent" }

-- correctly break multi-byte characters such as CJK
vim.opt.formatoptions:append("jmMroqln")

-- better completion experience
vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect", "preview" }

-- maximum height of the popup menu
vim.opt.pumheight = 10

-- minimum width of the popup menu
vim.opt.pumwidth = 15

-- when inserting a bracket, briefly jump to its match
vim.opt.showmatch = false

-- tenth of a second to show a match for 'showmatch'
vim.opt.matchtime = 5

-- list of pairs that match for the "%" command
vim.opt.matchpairs:append([[<:>,「:」,『:』,【:】,“:”,‘:’,《:》]])

-- use two spaces after '.' when joining a line
vim.opt.joinspaces = false

-- recognized for CTRL-A and CTRL-X commands
vim.opt.nrformats = { "alpha", "octal", "hex", "bin" }
