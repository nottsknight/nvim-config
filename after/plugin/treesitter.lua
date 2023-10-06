require("nvim-treesitter.configs").setup {
    ensure_installed = {
        'bash',
        'bibtex',
        'c',
        'cmake',
        'cpp',
        'haskell',
        'html',
        'htmldjango',
        'java',
        'javascript',
        'json',
        'lalrpop',
        'latex',
        'lua',
        'markdown',
        'python',
        'rust',
        'typescript',
        'yaml'
    },
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
