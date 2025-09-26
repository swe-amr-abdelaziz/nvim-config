---- editing text ----

-- persistent undo even after you close a file and re-open it
vim.opt.undofile = true

-- specifies what <BS>, CTRL-W, etc. can do in Insert mode
vim.opt.backspace = { "start", "eol", "indent" }

-- correctly break multi-byte characters such as CJK
vim.opt.formatoptions:append("mM")

-- better completion experience
vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect", "preview" }

-- maximum height of the popup menu
vim.opt.pumheight = 10

-- list of pairs that match for the "%" command
vim.opt.matchpairs:append([[<:>,「:」,『:』,【:】,“:”,‘:’,《:》]])

-- recognized for CTRL-A and CTRL-X commands
vim.opt.nrformats = { "alpha", "octal", "hex", "bin" }
