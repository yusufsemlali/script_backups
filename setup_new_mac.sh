#!/bin/zsh

echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing 42 Wizard..."
curl -fsSL https://raw.githubusercontent.com/0xShady/42_wizzard/main/assistance/42-wizzard-installer.sh | zsh && source ~/.zshrc

echo "Installing 42 C Formatter..."
pip3 install --user c-formatter-42

echo "Installing Homebrew..."
42 -brew

echo "Setup completed Successfully!"