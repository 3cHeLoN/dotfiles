# Dotfiles
This repository contains my linux dotfiles.
To use any of these, go to the dotfiles folder and use gnu 'stow'.

For example, to use my neovim config files:

`$ stow --no-folding --dotfiles neovim`

This will create a symlink in your home directory to the deepest folder of neovim,
recreating the folder structure.
