require("nvchad.configs.lspconfig").defaults()

local servers = { "gopls", "rust_analyzer", "clangd" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
--

vim.lsp.config("gopls", {
  settings = {
    gopls = {
      staticcheck = true,
      gofumpt = false,
    },
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    local root = require("lspconfig.util").root_pattern("go.work", "go.mod", ".git")(vim.fn.expand "%:p")
    if root then
      vim.cmd("cd " .. root)
    end
  end,
})

-- Clangd config: disable LSP formatting (handled by clang-format via conform)
vim.lsp.config("clangd", {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  cmd = { "clangd", "--background-index", "--clang-tidy", "--header-insertion=iwyu" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
})
