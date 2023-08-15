local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = '[S]earch [F]iles (also not in git)' })
vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = '[F]ind [F]iles in git index' })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })

