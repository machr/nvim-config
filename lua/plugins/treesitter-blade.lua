return {
{
    'EmranMR/tree-sitter-blade',
    dependencies = {'nvim-treesitter/nvim-treesitter'},
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = { "blade" },
        highlight = {
          enable = true,
        },
      }
    end
  },
}
