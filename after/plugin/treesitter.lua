require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'python',
        'rust',
        'haskell',
        'latex',
        'bash',
        'c',
        'cpp',
        'javascript',
        'typescript',
        'json'
    },
    higlight = { enable = true }
}
