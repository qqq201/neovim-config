require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    mappings = {
      list = {
        { key = 'u', action = 'dir_up' },
        { key = 's', action = 'vsplit' },
        { key = 'i', action = 'split' },
        { key = '<c-$>', action = 'system_open' },
        { key = 't', action = 'tabnew' }
      },
    },
  },

  open_on_setup = true,
  git = {
    enable = true,
    timeout = 400 -- (in ms)
  }
})
