local keymap = vim.keymap
keymap.set("n", "<space>s", require("nvim-tree.api").tree.toggle, {
    silent = true,
    desc = "toggle nvim-tree",
})

local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<C-x>", "<cmd>bprevious <bar> bdelete #<cr>", {
    silent = true,
    desc = "delete buffer",
})

keymap.set("n", "<leader>t", "<Cmd>FloatermToggle<CR>")

keymap.set("n", "gd", "<Plug>(coc-definition)")
keymap.set("n", "gy", "<Plug>(coc-type-=definition)")
keymap.set("n", "gi", "<Plug>(coc-implementation)")
keymap.set("n", "gr", "<Plug>(coc-references)")
keymap.set("n", "<C-n>", "CocNext<CR>")
keymap.set("n", "<C-p>", "CocPrev<CR>")
