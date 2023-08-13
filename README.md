# Dotfile & Config Repository #

This is a "bare" repository for storing dotfiles and config files.  A "bare" repo allows you to keep
all of your dotfiles in their normal location, and uses a separate repo directory to track all the changes.  
My repo directory is called simply "dotfiles", and the working tree is my home directory.  

[Tutorial](https://www.atlassian.com/git/tutorials/dotfiles) on setting up your own bare repo for storing dotfiles. 

**My environment currently consists of:**
- [alacritty](https://alacritty.org) a fantastic GPU accelerated terminal emulator 
- [tmux](https://github.com/tmux/tmux/wiki) because all the cool kids said I should use this instead of screen
- [zsh](https://www.zsh.org) without oh-my-zsh - just a small function to load a couple of plugins
- [starship](https://starship.rs) a fast and customizable cross-shell prompt
- [lunarvim](https://github.com/LunarVim/LunarVim) a complete neovim ide
- [neovim](https://github.com/neovim/neovim) my own config files included here (a poor imitation of LunarVim)
- [awesomewm](https://awesomewm.org/) a very beautiful tiling window manager

**Color Schemes and Fonts** 
- [tokyonight](https://github.com/folke/tokyonight.nvim) a set of neovim color schemes by folke which I am also using in alacritty
- [mononoki nerd font](https://www.nerdfonts.com/font-downloads) I keep it checked into my ~/.local/share/fonts directory, so that my alacritty.yml has what it needs  


## Note to myself: How to clone this bare repo to a new install ##

- Clone the repo, make sure to use the --bare flag  

`git clone --bare https://github.com/danrieder/dotfiles.git $HOME/dotfiles`  

- **Set the alias for config prior to cheking out the repo**  

`alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`  

- mv or rm any config files that git will complain about
- Checkout the files:  

`config checkout`

- generate new ssh key, and upload to github

`ssh-keygen -t ed25519 -C "name@host"`

- fix checkout method on github: change checkout from https to ssh

`config remote set-url origin git@github.com:danrieder/dotfiles.git`

- set upstream to remote

`config push --set-upstream origin master`
`


