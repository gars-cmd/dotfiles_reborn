-- Provide special highlight for markdown file 
return {
    'MeanderingProgrammer/markdown.nvim',
    main = "render-markdown",
    opts = {},
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim', 'nvim-tree/nvim-web-devicons' }
}
