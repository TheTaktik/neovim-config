local hydra = require('hydra')

hydra {
  name = "Window operations",
  mode = "n",
  body = "<C-w>",
  heads = {
    { "h", "<C-w>h"},
    { "j", "<C-w>j"},
    { "k", "<C-w>k"},
    { "l", "<C-w>l"},
    { ">", "<C-w>>"},
    { "<", "<C-w><"},
    { "+", "<C-w>+"},
    { "-", "<C-w>-"},
    { "w", "<C-w>w"},
  }
}
