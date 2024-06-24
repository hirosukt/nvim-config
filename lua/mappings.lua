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
