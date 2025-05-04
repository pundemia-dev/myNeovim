-- Подключаем модуль lspconfig
local lspconfig = require('lspconfig')


-- 1. Конфигурация Pyright
--    Отключаем у Pyright организацию импортов и весь анализ (линтинг),
--    т.к. за это отвечает Ruff:contentReference[oaicite:2]{index=2}.
lspconfig.pyright.setup{
  --before_init = function(_, config)
    -- Устанавливаем путь к интерпретатору Python
    --config.settings.python.pythonPath = get_python_path()
  --end,
  --pythonPath = vim.fn.expand("${workspaceFolder}/.venv/bin/python"), 
  settings = {
    pyright = {
      disableOrganizeImports = true,  -- Отключаем организацию импортов в Pyright
    },
    python = {
      analysis = {
        ignore = {"*"},  -- Игнорируем все файлы, отключая линтинг/диагностику в Pyright
      },
    },
  },
}

-- 2. Конфигурация Ruff
--    Ruff будет отвечать за линтинг, автоформатирование и организацию импортов.
lspconfig.ruff.setup{}

-- 3. Отключаем hover для Ruff, чтобы подсказки показывал Pyright.
--    Создаём автокоманду при подключении LSP (LspAttach): если клиент – Ruff,
--    то убираем у него server_capabilities.hoverProvider:contentReference[oaicite:3]{index=3}.
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
    end
  end,
  desc = "Отключить hover у Ruff, использовать Pyright для hover",
})

