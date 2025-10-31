---- folding ----

-- unset to display all folds open
vim.opt.foldenable = true

-- folds with a level higher than this number will be closed
vim.opt.foldlevel = 99

-- keep folds open when switching between buffers
vim.opt.foldlevelstart = 99

-- width of the column used to indicate folds
vim.opt.foldcolumn = "1"

-- folding type: "manual", "indent", "expr", "marker",
vim.opt.foldmethod = "expr"

-- expression used when 'foldmethod' is "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
