require('fzf-lua').setup(
  {
    'telescope',
    winopts = {
      height = 0.55, width = 0.33
    },
    files = {
      previewer = false
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
