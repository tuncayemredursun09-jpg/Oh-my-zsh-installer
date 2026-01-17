#!/data/data/com.termux/files/usr/bin/bash

# 1. Update system and install core tools
echo "Updating packages..."
pkg update && pkg upgrade -y
pkg install zsh git curl nano -y

# 2. Install Oh My Zsh (Automated)
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# 3. Configure .zshrc for Performance and Nano
echo "Configuring shell environment..."

# Set Nano as the default editor
echo "export EDITOR='nano'" >> ~/.zshrc
echo "export VISUAL='nano'" >> ~/.zshrc

# Mali/WebGL/Canvas Lag Fixes
echo "# Performance Optimizations" >> ~/.zshrc
echo "export GALLIUM_DRIVER=llvmpipe" >> ~/.zshrc
echo "export WEBKIT_FORCE_WPE_RENDERER=1" >> ~/.zshrc

# 4. Set Zsh as default shell
chsh -s zsh

echo "Done! Please restart Termux or type 'zsh' to start."
