local harpoon_ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", function() require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<leader>hh", function() harpoon_ui.toggle_quick_menu() end)

vim.keymap.set("n", "<leader>j", function() harpoon_ui.nav_file(1) end)
vim.keymap.set("n", "<leader>k", function() harpoon_ui.nav_file(2) end)
vim.keymap.set("n", "<leader>l", function() harpoon_ui.nav_file(3) end)
vim.keymap.set("n", "<leader>;", function() harpoon_ui.nav_file(4) end)
