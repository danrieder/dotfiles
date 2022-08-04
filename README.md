# Dotfile & Config Rpository #

This is a "bare" repository for storing all dotfiles and config files.  A "bare" repo allows you to keep
all of your dotfiles in their normal location, and uses a separate repo directory to track all the changes.  
For me, repo directory is called simply "dotfiles", and the working tree is my home directory as well as all 
other directories within it.

My environment currently consists of:
- [alacritty](https://alacritty.org) terminal emulator
- [zsh](https://www.zsh.org) without oh-my-zsh - just a small function to load a couple of plugins
- [lunarvim](https://github.com/LunarVim/LunarVim) complete neovim ide
- [neovim](https://github.com/neovim/neovim) my own config files included here (a poor imitation of LunarVim)
- [tmux](https://github.com/tmux/tmux/wiki) because all the cool kids said I should use this instead of screen

## Note to myself: How to clone this bare repo to a new install ##

- Clone the repo, make sure to use the --bare flag  

`git clone --bare https://github.com/danrieder/dotfiles.git $HOME/dotfiles`  

- **Set the alias for config prior to cheking out the repo**  

`alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`  

- mv or rm any config files that git will complain about
- Checkout the files:  

`config checkout`



