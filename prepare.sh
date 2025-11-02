#!/bin/bash

# Detects distro (Debian/Arch).
# Preparation:
#   - Install python3-venv
#   - Create venv
#   - Install python requirements
#   - Install ansible requirements

if [ -f /etc/debian_version ]; then
  echo "[+] Detected Debian-based system"
  sudo apt update
  sudo apt install -y git python3-venv
elif [ -f /etc/arch-release ]; then
  echo "[+] Detected Arch-based system"
  sudo pacman -Sy --noconfirm git python
elif [ "$(uname -s)" == "Darwin" ]; then
  echo "[+] Detected MacOS"
# TODO: Preparing script for MacOS
else
  echo "[-] Unsupported distribution"
  exit 1
fi

python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements/python.txt
ansible-galaxy install -r requirements/ansible.yaml
