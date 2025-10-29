## Roles

### 1 - system setup


- [x] Sets the timezone
- [x] Compiles ghostty terminfo
- [x] Installs all basic packages

### 2 - users-groups

- [x] Creates default users for nfs and ssh
- [x] Adds users defined at inventory.yaml file

### 3 - console-terminal

- [x] Configures pure console terminal
- [x] Installs tmux
- [x] Installs zsh
- [x] Copies zlogin to /etc/zsh

### 4 - terminal emulator

- [x] Installs ghostty
- [x] Installs Nerd Fonts

### 5 - vim-setup

- [x] Installs clipboard compatibile vim
- [x] Copies .vimrc file

### 6 - vim-plugins

- [x] Nerdtree
- [x] Vim-Devicons
- [x] Vim-Airline
- [x] Gitgutter

### 7 - neovim-setup

- [x] Installs dependencies
- [x] Installs neovim

### 8 - nfs-setup

- [x] Creates nfs directories
- [x] Defines the correct permissions to directory
- [x] Imports/exports the file system
- [x] Put the mounts in fstab

### 9 - ssh-authentication

- [x] Installs openssh
- [x] Creates .ssh directory for each user
- [x] Copies config files
- [x] Copies key pars
- [x] Authorize keys

### 10 - Hardening

- [x] Installs fail2ban
- [x] Installs ufw
- [x] Allows ssh
- [x] Allows nfs ports: 111 2049 5201
- [x] Denies all the rest
- [x] Removes users not listed in inventory

### 11 - Link dotfiles

- [x] dotfiles/ghostty -> ~/.config/ghostty
- [x] dotfiles/hypr -> ~/.config/hypr
- [x] dotfiles/nvim -> ~/.config/nvim
- [x] dotfiles/waybar -> ~/.config/waybar
- [x] dotfiles/wofi -> ~/.config/wofi
