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

local parser_cfg = require("nvim-treesitter.parsers").get_parser_configs()
parser_cfg.jack = {
    install_info = {
        url = "~/.local/opt/tree-sitter-jack/",
        files = { "src/parser.c" }
    },
    maintainer = "jreyes33",
    filetype = "hdl",
}

parser_cfg.typst = {
    install_info = {
        url = "~/.local/opt/tree-sitter-typst/",
        files = { "src/parser.c", "src/scanner.c" }
    },
    filetype = "typ",
}

parser_cfg.asm = {
    install_info = {
        url = 'https://github.com/rush-rs/tree-sitter-asm.git',
        files = { 'src/parser.c' },
        branch = 'main',
    },
}
