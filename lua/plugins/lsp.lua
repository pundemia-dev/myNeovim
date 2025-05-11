local lspconfig = require('lspconfig')

-- typescript lsp
-- lspconfig.ts_ls.setup({}) typescript 
-- TODO: replace ts_ls to tsserver

-- Rust lsp
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {},
  },
}

-- C++ lsp
-- lspconfig.clangd.setup({
    -- capabilities = capabilities, 
-- })

lspconfig.pyright.setup{
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

lspconfig.ruff.setup{}

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local bufnr = args.buf --km
    if client == nil then
      return
    end
    if client.name == 'ruff' then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end

    vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = bufnr }
    vim.keymap.set('n', 'lD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'ld', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'lk', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', 'i', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    -- vim.keymap.set('n', '<space>wl', function()
    --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, opts)
    
    -- TODO: Используется повторно, необходимо вырезать в след.версии
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>r', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
  desc = 'LSP: Disable hover capability from Ruff',
})
