local go = vim.go
go.expandtab = true
go.shiftwidth = 4
go.softtabstop = 4

require("indent_blankline").setup {
    show_current_context = true,
}
