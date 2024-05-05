require('fzf-lua').setup(
  {
    'telescope',
    winopts = {
      height = 0.55, width = 0.40
    },
    files = {
      previewer = false,
      file_icons = false,
    },
    buffers = {
      winopts = {
        height = 0.85,
        width = 0.85
      }
    },
    fzf_opts = {
      ["--layout"] = "reverse"
    }
  }




)
