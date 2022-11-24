vim.g.mapleader = ' '
vim.g.localmapleader = ' '

local map = vim.api.nvim_set_keymap
local opt = {
    noremap = true,
    silent = true
}

-- buffer页跳转
map("n", "gT", ":bp<CR>", opt)
map("n", "[", ":bp<CR>", opt)
map("n", "gt", ":bn<CR>", opt)
map("n", "]", ":bn<CR>", opt)

map("n", "<leader>nn", ":call NumberToggle()<CR>", opt)
map("n", "<leader>nh", ":nohlsearch<CR>", opt)

-- 窗口大小
map("n", "<Up>", ":resize -1<CR>", opt)
map("n", "<Down>", ":resize +1<CR>", opt)
map("n", "<Left>", ":vertical resize -1<CR>", opt)
map("n", "<Right>", ":vertical resize +1<CR>", opt)

-- <leader><leader>
map("n", "<leader><leader>c", ":call OpenFileWithVscode()<CR>", opt)


-- B buffer
map("n", "<leader>bw", ":w<CR>", opt)
map("n", "<leader>bd", ":Bdelete<CR>", opt)
map("n", "<leader>bq", ":Bdelete<CR>", opt)
map("n", "<leader>bn", ":bnext<CR>", opt)
map("n", "<leader>bp", ":bprevious<CR>", opt)
map("n", "<leader>bh", ":bfirst<CR>", opt)
map("n", "<leader>bl", ":blast<CR>", opt)

map("n", "<leader>es", ":CocCommand snippets.editSnippets<CR>", opt)
-- N nerdtree
map("n", "<leader>nt", ":NERDTreeToggle<CR>", opt)
map("n", "<leader>nf", ":NERDTreeFind<CR>", opt)
map("n", "<leader>nv", ":NERDTreeVCS<CR>", opt)
map("n", "<leader>nc", ":NERDTreeClose<CR>", opt)

-- P plug
map("n", "<leader>pi", ":PlugInstall<CR>", opt)
