require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        follow_current_file = { enabled = true },
    },
    window = {
        position = "left",
        width = 30,
    }
})

vim.keymap.set("n", "<C-h>", ":Neotree<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })

vim.cmd("Neotree")
