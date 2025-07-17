# Installation

To install this Neovim configuration, first remove your previous config and data (recommended for Linux/MacOS):

```bash
# Linux / MacOS (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

git clone https://github.com/Maurux01/NvChadmine ~/.config/nvim && nvim
```

---

**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
