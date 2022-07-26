vim.opt.completeopt = {
  menuone,
  noinsert,
  noselect
}
vim.opt.shortmess:append("c")

local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local opts = { noremap=true, silent=false }
  local opts2 = {
    focusable=false,
    close_events={"BufLeave", "CursorMoved", "InsertEnter", "FocusLost"},
    source='always', -- show source in diagnostics popup
    prefix=' ',
  } 

  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>ciw', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>t', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

  -- Set some binds depending on server capabilities
  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end
  if client.resolved_capabilities.document_range_formatting then
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
  end
end

-- NOTE: Don't use more than 1 servers otherwise nvim is unstable
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.clangd.setup {
  on_attach=on_attach,
  capabilities=capabilities,
}
nvim_lsp.tsserver.setup {
  on_attach=on_attach,
  capabilities=capabilities,
}
nvim_lsp.rust_analyzer.setup {
  on_attach=on_attach,
  capabilities=capabilities,
}
nvim_lsp.pyright.setup {
  on_attach=on_attach,
  capabilities=capabilities,
}
nvim_lsp.csharp_ls.setup {
  on_attach=on_attach,
  capabilities=capabilities,
}

-- Change diagnostic signs.

vim.fn.sign_define("DiagnosticSignError", { text = "✗", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "!", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInformation", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

-- global config for diagnostic
vim.diagnostic.config({
  underline = false,
  virtual_text = true,
  signs = true,
  severity_sort = true,
})
