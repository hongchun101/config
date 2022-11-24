lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = false,
    disable = {}
  },
  ensure_installed = {
    "tsx",
    "json",
    "yaml",
    "html",
    "css",
    "scss",
    "java",
    "c",
    "cpp",
    "javascript",
    "typescript"
  },
}
local parser_cofig = require "nvim-treesitter.parsers".get_parser_configs()
parser_config_tsx_used_by = {"javascript", "typescript.tsx"}
EOF
