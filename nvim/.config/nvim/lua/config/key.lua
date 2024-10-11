vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Map <C-d> and <C-u> in normal mode to scroll by half a screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Map n and N in normal mode to jump to next/previous match and center screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Map J and K in visual mode to move lines up/down and reselect
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Map J in normal mode to join lines and keep cursor position
vim.keymap.set("n", "J", "mzJ`z")

-- Map <leader>p in visual mode to rep-lace selection with contents of unnamed register
vim.keymap.set("x", "<leader>p", [["-_dP]])

-- Map <leader>d in normal/visual modes to delete to black hole register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Map <C-f> in normal mode to open new tmux window with tmux-sessionizer script
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Map <leader>s in normal mode to search and replace current word case-insensitively in entire buffer
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Lsp
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Map <C-k> and <C-j> in normal mode to jump to next/previous quickfix entry and center screen
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Map <leader>k and <leader>j in normal mode to jump to next/previous location entry and center screen
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Map <leader>y and <leader>Y in normal/visual modes to yank to system clipboard
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Map <C-c> in insert mode to exit insert mode without adding character to buffer
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Map Q in normal mode to do nothing
-- vim.keymap.set("n", "Q", "<nop>")
--
--
