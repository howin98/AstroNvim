return function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
  require 'treesitter-context'.setup()
  require'nvim-treesitter.configs'.setup {
    textobjects = {
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]m"] = "@function.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
        },
      },
    },
  }
  vim.cmd([[hi TreesitterContextBottom gui=underline guisp=Grey]])
end
