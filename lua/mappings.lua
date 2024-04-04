require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>w", "<cmd>set wrap!<cr>", { desc="toggle wrap" })
map("n", "<leader>W", "<cmd>set nowrap<cr>", { desc="nowrap" })

map("n", "<Leader>w", "<cmd>set wrap!<cr>")
map("n", "<Leader>W", "<cmd>set nowrap<cr>")

map("n", "gW", "<cmd>only<cr>", { desc="close all other windows (in the current tab)" })

-- shortcuts for frequenly used files
map("n", "gs", "<cmd>e db/schema.rb<cr>")
map("n", "gr", "<cmd>e config/routes.rb<cr>")
map("n", "gm", "<cmd>e Gemfile<cr>")

-- -- nerdcommenter
-- map("n", "gcc", ':call NERDComment(0,"toggle")<cr>')
-- map("v", "gc", ':call NERDComment(0,"toggle")<cr>')

-- insert blank lines without going into insert mode
map("n", "go", "o<esc>")
map("n", "gO", "O<esc>")

-- mapping the jumping between splits. Hold control while using vim nav.
map("n", "<C-J>", "<C-W>j")
map("n", "<C-K>", "<C-W>k")
map("n", "<C-H>", "<C-W>h")
map("n", "<C-L>", "<C-W>l")

map("n", "Y", "y$", { noremap=true, desc="Yank from the cursor to the end of the line, to be consistent with C and D." })

map("n", "vv", "`[V`]", { noremap=true, desc="select the lines which were just pasted" })

map({"n", "v", "o"}, "<Leader>c", "<cmd>StripTrailingWhitespaces<cr>", { desc="clean up trailing whitespace" })

map({"n", "v", "o"}, "<Leader>e", '<cmd>s/\\v(\\S+)\\s+/\1 /<cr>:nohl<cr>', { desc="compress excess whitespace on current line" })

map({"n", "v", "o"}, "<Leader>d", "<cmd>bufdo bd<cr>", { desc="delete all buffers" })

map("n", "<Leader><space>", "<cmd>noh<cr>", { noremap=true, desc="map spacebar to clear search highlight" })

-- buffer resizing mappings (shift + arrow key)
map("n", "<S-Up>", "<c-w>+", { noremap=true })
map("n", "<S-Down>", "<c-w>-", { noremap=true })
map("n", "<S-Left>", "<c-w><<c-w><<c-w><", { noremap=true })
map("n", "<S-Right>", "<c-w>><c-w>><c-w>>", { noremap=true })

map({"n", "v", "o"}, "<Leader>I", "gg=G``<cr>", { desc="reindent the entire file" })

map("c", "<C-S-P>", '<C-R>=expand("%:p:h") . "/" <cr>', { desc="insert the path of currently edited file into a command"})



-- Tricks
map({"n", "v", "o"}, "n", "nzz")
map({"n", "v", "o"}, "N", "Nzz")
map({"n", "v", "o"}, "<C-o>", "<C-o>zz")
map({"n", "v", "o"}, "<C-i>", "<C-i>zz")

-- PHP
map("i", "<C-l>", "->")
map("i", "<C-k>", "=>")

-- CTRL-X and SHIFT-Del are Cut
map("v", "<C-X>", '"+x', { noremap=true })
map("v", "<S-Del>", '"+x', { noremap=true })

-- CTRL-C and CTRL-Insert are Copy
map("v", "<C-C>", '"+y', { noremap=true })
map("v", "<C-Insert>", '"+y', { noremap=true })

-- CTRL-V and SHIFT-Insert are Paste
map({"n", "v", "o"}, "<S-Insert>", '"+gP')
map("c", "<S-Insert>", "<C-R>+")


-- Navigation for tab
map({"n", "v", "o"}, "<Leader>1", "1gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>2", "2gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>3", "3gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>4", "4gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>5", "5gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>6", "6gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>7", "7gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>8", "8gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>9", "9gt", { noremap=true })
map({"n", "v", "o"}, "<Leader>0", "<cmd>tablast<cr>", { noremap=true })
