vim.g.mapleader = " "

-- Quit
--vim.keymap.set('n', '<C-q>', '<cmd>:q<CR>')

-- Copy all text
--vim.keymap.set('n', '<C-a>', '<cmd>%y+<CR>')

-- Saving a file via Ctrl+S
--vim.keymap.set('i', '<C-s>', '<cmd>:w<CR>')
--vim.keymap.set('n', '<C-s>', '<cmd>:w<CR>')

-- NvimTree
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>')

-- BufferLine
vim.keymap.set('n','<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n','<S-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<C-l>', ':BufferLineCloseOthers<CR>')

-- ToggleTerm
vim.keymap.set('n', '<leader>cf', ':ToggleTerm direction=float<CR>')

-- Gitsigns
vim.keymap.set('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {})
vim.keymap.set('n', '<leader>gt', ':Gitsigns toggle_current_line_blame<CR>', {})

-- vim.keymap.set('n', '<leader>ff',  Snacks.picker.smart(), {})


-- C++
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'cpp',
    callback = function()
        vim.opt.colorcolumn = '120' -- Устанавливает ограничение в 120 символов для C++
        vim.keymap.set('n', '<C-h>', ':w<CR>:!g++ % -o %:r && ./%:r<CR>', { buffer = true, silent = true })
        vim.keymap.set('i', '<C-h>', '<Esc>:w<CR>:!g++ % -o %:r && ./%:r<CR>', { buffer = true, silent = true })
        -- vim.keymap.set('n', '<C-h>', ':w<CR>:!x86_64-w64-mingw32-g++ % -o %:r.exe && echo "Compiled to Windows executable: %:r.exe"<CR>', { buffer = true, silent = false })
    end
})
