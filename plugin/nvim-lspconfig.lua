vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/hrsh7th/cmp-nvim-lsp",
  "https://github.com/antosha417/nvim-lsp-file-operations",
})
--
-- Customize error signs
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "󰌵",
    },
  },
})
-- Python
vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        -- formatter options
        black = { enabled = false },
        autopep8 = { enabled = false },
        yapf = { enabled = true },
        -- linter options
        pyflakes = { enabled = false },
        pycodestyle = {
          enabled = true,
          ignore = { "E501" },
        },
        -- type checker
        pylsp_mypy = { enabled = true },
        -- auto-completion options
        jedi_completion = { fuzzy = true },
        -- import sorting
        pylsp_isort = { enabled = true },
        rope_completion = { enabled = true },
        rope_autoimport = {
          enabled = true,
        },
      },
    },
  },
})

vim.lsp.config("ruff", {
  settings = {
    init_options = {
      settings = {
        -- Arguments par défaut de la ligne de commande ruff
        -- (on ajoute les warnings pour le tri des imports)
        args = { "--extend-select", "I" },
      },
    },
  },
})

-- Rust
vim.lsp.config("rust_analyzer", {
  settings = {
    ["rust-analyzer"] = {
      check = {
        command = "clippy",
      },
      inlayHints = {
        renderColons = true,
        typeHints = {
          enable = true,
          hideClosureInitialization = false,
          hideNamedConstructor = false,
        },
      },
      diagnostics = {
        enable = true,
        styleLints = {
          enable = true,
        },
      },
    },
  },
})
