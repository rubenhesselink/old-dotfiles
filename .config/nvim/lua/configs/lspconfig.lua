local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local servers = {
  html = {},
  cssls = {},
  bashls = {},
  pyright = {
    settings = {
      python = {
        analysis = {
          typeCheckingMode = "off",
        },
      },
    },
  },
}

for name, opts in pairs(servers) do
  opts.on_init = on_init
  opts.on_attach = on_attach
  opts.capabilities = capabilities

  require("lspconfig")[name].setup(opts)
end

-- djlsp
require("lspconfig").djlsp.setup {
  cmd = {
    "/Users/rubenhesselink/Code/Projects/django-template-lsp/env/bin/djlsp",
    -- "--enable-log",
  },
}
