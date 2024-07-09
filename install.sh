#!/bin/bash

# Download the latest Neovim binary
#curl -kLO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

# Remove the existing Neovim installation in /opt/nvim (if any)
#sudo rm -rf /opt/nvim

# Extract the downloaded archive to /opt
#sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Add Neovim binary directory to PATH in ~/.bashrc
#echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc

# Source ~/.bashrc to apply the changes
#source ~/.bashrc

# Clean up the downloaded archive
#rm nvim-linux64.tar.gz

#echo "Neovim has been installed."

rm -rf ~/.local/share/nvim

# Install NvChad
echo -e "${GREEN}-==Installing NvChad ...==-${NC}"
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim --headless +PackerSync +qall

echo "NvChad has been installed"

# Replace the configs and plugins directory in ~/config/nvim/lua with the ones in the current directory
echo -e "${GREEN}-==Copying Files==-${NC}"
rsync -av --exclude='README.md' --exclude='.git/' --exclude='install.sh' ./ ~/.config/nvim/lua/

# Open Neovim
nvim --headless +MasonInstallAll +qa




