
vim.api.nvim_buf_set_option(0, 'modifiable', true) -- x

-- Basic Settings
vim.g.did_load_filetypes = 1           -- x
vim.g.formatoptions = "qrn1"           -- x
vim.opt.showmode = false               -- x
vim.opt.updatetime = 100               -- x
vim.wo.signcolumn = "yes"              -- x
vim.opt.wrap = false                   -- x
vim.wo.linebreak = true                -- x
vim.opt.virtualedit = "block"          -- x
vim.opt.undofile = true                -- x
vim.opt.shell = "/bin/fish"            --  Shell по умолчанию
vim.opt.swapfile = false               --  Отключить swap файлы nvim
vim.opt.encoding = "utf-8"             --  Кодировка utf-8
vim.opt.fileencoding = "utf-8"         -- 
vim.opt.cursorline = true              --  Выделять активную строку где находится курсор
vim.opt.fileformat = "unix"            -- 

-- Nvim-Tree
vim.g.loaded_netrw = 1                 -- x
vim.g.loaded_netrwPlugin = 1           -- x
vim.opt.termguicolors = true           -- x

-- Scroll
--vim.opt.so = 30                      -- При скролле курсор всегда по центру
vim.opt.scrolloff = 7                  --  Количество строк остающиеся видимыми снизу/сверху при прокрутке

-- Search
vim.opt.ignorecase = true              -- x Игнорировать регистр при поиске
vim.opt.smartcase = true               -- x Не игнорирует регистр если в паттерне есть большие буквы
vim.opt.hlsearch = true                -- x Подсвечивает найденный паттерн
vim.opt.incsearch = true               -- x Интерактивный поиск

-- Mouse
vim.opt.mouse = "a"                    --  Возможность использовать мышку
vim.opt.mousefocus = true              -- x

-- Line Numbers
vim.opt.number = true                  --  Показывает номера строк
vim.opt.relativenumber = true          --  Показывает расстояние к нужной строке относительно нашей позиции
vim.wo.number = true                   -- x Показывает номера строк
vim.wo.relativenumber = true           -- x Показывает расстояние к нужной строке относительно нашей позиции

-- Splits
vim.opt.splitbelow = true              -- 
vim.opt.splitright = true              -- 

-- Clipboard
vim.opt.clipboard = "unnamedplus"      --  Разрешить общий буфер обмена

-- Shorter messages
vim.opt.shortmess:append("c")          -- x

-- Indent Settings
vim.opt.expandtab = true               --  Превратить все tab в пробелы
vim.opt.shiftwidth = 4                 -- 
vim.opt.tabstop = 4                    -- 
vim.opt.softtabstop = 4                -- 
vim.opt.smartindent = true             --  Копировать отступ на новой строке
-- vim.opt.autoindent = true              -- 
vim.opt.cindent = true                 -- x Автоотступы
vim.opt.smarttab = true                -- x Tab перед строкой вставит shiftwidht количество табов

-- Fillchars
vim.opt.fillchars = {                  -- x
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

vim.cmd([[highlight clear LineNr]])     -- x
vim.cmd([[highlight clear SignColumn]]) -- x
