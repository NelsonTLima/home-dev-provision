# How to execute

1. Create a python virtual environment, activate it and install requirements.

```bash
python3 -m venv .venv
source ./venv/bin/activate
pip install -r python.requirements.txt
ansible-galaxy install -r ansible.requirements.yml
```

2. Use example.inventory.yaml to config your hosts

3. Execute

```bash
ansible-playbook playbook.yaml -i inventory.yaml
```

# MY DEV CONFIGURATIONS


These are some ansible playbooks to provide my custom dev environment. It will
garantee fast configurations to the machines I will work with in the future,
specially the ones I own, meaning I wont waste time whenever I need to format
them. The roles functions as follows.

___
## SYSTEM-SETUP

This role provides all the basic features to those machines, such as:

### Linux Only Tasks

- [x] Packet Manager Setup
    - [x] Update apt
    - [x] Install Snap

- [x] Fix Linux Bluetooth problems
    - [x] Install blueman
    - [x] Install bluez
    - [x] Restart Bluetooth Service

### MacOs Only Tasks

- [ ] Installs homebrew

### All Hosts Tasks

- [x] Remote Access
    - [x] Ensure openssh-client is installed
    - [x] Ensure openssh-server is installed

- [x] And Other Installings
    - [x] net-tools
    - [x] curl
    - [x] wget
    - [x] git
    - [x] htop
    - [x] zip
    - [x] docker

- [ ] copy gitignore_global to ignore:
    - *.swp
    - *.ignore
    - .env
    - `__pycache__`
    - Cargo.lock

___
## TERMINAL-SETUP

Customizes terminal. In other words, changes tty font size, install a new
terminal emulator, sets zsh as the default shell and other tasks.

### Linux Only Tasks

- [x] TTY Settings
    - [x] Install console-setup
    - [x] Copy console-setup file
    - [x] Restart cnsole-setup

### All Hosts Tasks

- [x] Check Dependencies

- [x] Shell
    - [x] Install zsh
    - [x] Set zsh as default shell
   - [x] Download Oh My Zsh
    - [x] Copy .zshrc to user's home directory
    - [x] Download zsh-autosuggestions

- [x] Terminal Emulator
    - [x] Install Ghostty
    - [x] Ensure ghostty directory exists
    - [x] Copy ghostty configuration to directory
    
- [x] Fonts
    - [x] Make Hack Nerd Font Directory
    - [x] Download Hack Nerd Font
    - [x] Extract Hack Nerd Font into the directory

- [x] Install tmux

___
## VIM SETUP

Installs vim into the hosts, copies .vimrc and installs some vim plugins.

### Tasks

- [x] Copy .vimrc to the host
- [x] Install latest vim
- [x] Install vim pluggins


## NEOVIM SETUP

Installs neovim, copies its config directory to the hosts and add neovim alias.

### Tasks

- [x] Install neovim
- [x] Copy configuration dir to the hosts.
- [x] Add a neovim alias into de .zshrc

___
## NFS-SETUP

Sets a network file system to share files between the computers at home. The
tasks includes instaling nfs at the hosts and modify the configuration files.

### All Hosts Tasks

- [x] Install nfs-commons

### Server Only

- [x] Install nfs-kernel-server
- [x] Create the nfs directoty
- [x] Add the configuration line to the exports file
- [x] Export the filesystem

### Client only

- [x] Add the nfs server to fstab
- [x] Mount the file system

___ 
## HARDENING

Implement security policy.

### Tasks

- [ ] Copy SSH config files
    - PermitRootLogin No
    - PasswordAuthentication No
    - MaxAuthTries 3

- [ ] Creates and authorize ssh keys
- [ ] restart ssh service

- [ ] Set Firewall Rules
    - Permit SSH connections
    - Deny connections from outside

- [ ] Install and start intrusion detection system
- [ ] configure timeout for inative sessions
