#!/bin/bash

# To run this script, execute the following in Terminal:
# 	chmod +x setup.sh
# 	./setup.sh

echo "It is recommended to run each command manually and observe the output to ensure successful installation and troubleshoot any issues."
echo "Do you still want to proceed with the automated installation? (y/N)"

read -r -p "Your choice: " choice
choice=${choice:-N}

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    brew install --cask alt-tab android-platform-tools brave-browser discord karabiner-elements kitty localsend mac-mouse-fix mediamate microsoft-edge middleclick multipass notion orion raycast slack spotify visual-studio-code wezterm zen-browser zoom && \
    brew install neofetch htop eza bat fzf jupyterlab node openjdk sqlite speedtest-cli tree zsh-autosuggestions zsh-syntax-highlighting && \
    git clone https://github.com/EricQXu/macOS-dotfiles.git && cd macOS-dotfiles && mv .vimrc ~ && mv .zshrc ~ && mv wezterm.lua ~/.config/wezterm && cd .. && rm -rf macOS-dotfiles && \
	rm ~/Library/LaunchAgents/homebrew.mxcl.jupyterlab.plist && \
    defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock
else
	echo "* Run the following one-by-one and observe the output. Execute any commands mentioned in the resulting output if necessary. *"
	echo ""
	echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
	echo ""
	echo "brew install --cask alt-tab android-platform-tools brave-browser discord karabiner-elements kitty localsend mac-mouse-fix mediamate microsoft-edge middleclick multipass notion orion raycast slack spotify visual-studio-code wezterm zen-browser zoom"
	echo ""
	echo "brew install neofetch htop eza bat fzf jupyterlab node openjdk sqlite speedtest-cli tree zsh-autosuggestions zsh-syntax-highlighting"
	echo ""
	echo """("Mandatory", this command stops the behavior of auto-running JupyterLab Notebook server upon login that cannot be stopped) rm ~/Library/LaunchAgents/homebrew.mxcl.jupyterlab.plist"""
	echo ""
	echo "(Optional, this command removes the delay for auto-hide dock) defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0; killall Dock"
	echo ""
	echo "git clone https://github.com/EricQXu/macOS-dotfiles.git"
	echo "cd macOS-dotfiles"
	echo "mv .vimrc ~"
	echo "mv .zshrc ~"
	echo "mv wezterm.lua ~/.config/wezterm"
	echo "cd .."
	echo "rm -rf macOS-dotfiles"
fi
