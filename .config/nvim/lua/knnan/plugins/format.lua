local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
formatting.prettier,
--formatting.eslint,
formatting.gofmt,
formatting.clang_format,
formatting.black,
}
null_ls.setup({
    sources = sources
})

