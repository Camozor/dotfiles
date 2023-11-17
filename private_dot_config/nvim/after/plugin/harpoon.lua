require("harpoon").setup()

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>h&', function () require("harpoon.ui").nav_file(1) end, { desc = '[H]arpoon go to file 1' })
vim.keymap.set('n', '<leader>hé', function () require("harpoon.ui").nav_file(2) end, { desc = '[H]arpoon go to file 2' })
vim.keymap.set('n', '<leader>h"', function () require("harpoon.ui").nav_file(3) end, { desc = '[H]arpoon go to file 3' })
vim.keymap.set('n', "<leader>h'", function () require("harpoon.ui").nav_file(4) end, { desc = '[H]arpoon go to file 4' })
vim.keymap.set('n', '<leader>h(', function () require("harpoon.ui").nav_file(5) end, { desc = '[H]arpoon go to file 5' })
vim.keymap.set('n', '<leader>h-', function () require("harpoon.ui").nav_file(6) end, { desc = '[H]arpoon go to file 6' })
vim.keymap.set('n', '<leader>hè', function () require("harpoon.ui").nav_file(7) end, { desc = '[H]arpoon go to file 7' })
vim.keymap.set('n', '<leader>h_', function () require("harpoon.ui").nav_file(8) end, { desc = '[H]arpoon go to file 8' })
vim.keymap.set('n', '<leader>hç', function () require("harpoon.ui").nav_file(9) end, { desc = '[H]arpoon go to file 9' })

