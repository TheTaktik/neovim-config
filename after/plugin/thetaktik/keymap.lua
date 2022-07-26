function nnoremap(lhs, rhs)
  local opts = {noremap=true, silent=false}
  vim.api.nvim_set_keymap('n', lhs, rhs, opts)
end

vim.g.mapleader = " "

-- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fd", "<cmd>lua require('telescope.builtin').diagnostics{}<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers{}<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags{}<cr>")

-- vimspector
nnoremap("<leader>dd", "<cmd>call vimspector#Launch()<cr>")
nnoremap("<leader>dj", "<cmd>call vimspector#StepOver()<cr>")
nnoremap("<leader>dl", "<cmd>call vimspector#StepInto()<cr>")
nnoremap("<leader>dk", "<cmd>call vimspector#StepOut()<cr>")
nnoremap("<leader>dc", "<cmd>call vimspector#Continue()<cr>")
nnoremap("<leader>db", "<cmd>call vimspector#ToggleBreakpoint()<cr>")
nnoremap("<leader>dq", "<cmd>call vimspector#Reset()<cr>")
nnoremap("<leader>dr", "<cmd>call vimspector#Restart()<cr>")

-- Maximizer
nnoremap("<leader><leader>", "<cmd>MaximizerToggle<cr>")
