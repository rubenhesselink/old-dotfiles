return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").djlsp.setup({
      cmd = { "/Users/rubenhesselink/Code/Projects/django-template-lsp/env/bin/djlsp" },
    })
  end,
}
