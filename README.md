# Welcome to my macOS rice!
## Screenshots
![image](https://github.com/user-attachments/assets/e733f9b3-644c-454d-9dc2-9b85a4da307f)

## Prerequisites
1.) macOS Ventura or later (except Yabai, which would be ≤ macOS Sonoma)\
2.) Have [Homebrew Package Manager](https://brew.sh/) installed\
## Setup
### Cloning the repo
```git clone https://github.com/EricQXu/macOS-dotfiles.git```
### Custom Status Bar (SketchyBar)
1.) ```brew tap FelixKratz/formulae```\
2.) ```brew update```\
3.) ``` brew install sketchybar```\
4.) 
```
mkdir -p ~/.config/sketchybar/plugins\
cp $(brew --prefix)/share/sketchybar/examples/sketchybarrc ~/.config/sketchybar/sketchybarrc\
cp -r $(brew --prefix)/share/sketchybar/examples/plugins/ ~/.config/sketchybar/plugins/\
```
5.) Copy all the contents in ```/.config/sketchybar``` folder in the cloned repo to your ```~/.config/sketchybar``` directory. \
6.) Download & install these fonts:\
https://github.com/kvndrsslr/sketchybar-app-font/releases/download/latest/sketchybar-app-font.ttf\
https://developer.apple.com/sf-symbols/\

7.) ```brew services start sketchybar```\
8.) Auto-hide the system menu bar (open System Settings -> Control Center -> set "Automatically hide and show the menu bar" to "Always")

### Tiling Window Manager (Yabai)
1.) ```brew tap koekeishiya/formulae```\
2.) ```brew update```\
3.) ```brew install koekeishiya/formulae/yabai```\
4.)  ```brew install koekeishiya/formulae/skhd```\
5.) Copy the ```.yabairc``` and ```.skhdrc``` config files in the cloned repo to your home (```~```) directory. \
6.) ```yabai --start-service```\
7.) ```skhd --start-service```\
8.) Auto-hide dock (open System Settings -> Desktop and Dock -> toggle on the option "Automatically show and hide the Dock")\
9.) Set the show/hide dock delay and animation to 0: ```defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock``` (FYI: This can be undone by executing: ```defaults delete com.apple.Dock autohide-delay; killall Dock```. There is also a GUI version of this: https://www.bresink.com/osx/0TinkerTool/download.php)

### Terminal Emulator (WezTerm)
1.) Download and install [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)\
2.) ```brew install wezterm``` (and follow any additional steps prompted after the installation (if any))\
3.) Copy all the contents in ```/.config/wezterm``` folder in the cloned repo to your ```~/.config/wezterm``` directory. \
4.) Restart WezTerm

### Shell modifications (.zshrc)
1.) Install ohmyzsh!: ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"``` (and follow additional instructions prompted after running this script (if any))\
2.) Install zsh-autosuggestions plugin: ```git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions```\
3.) Install zsh-syntax-highlighting plugin: ```git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting```\
4.) Install neofetch: ```brew install neofetch```\
5.) Install some useful command line utilities that this config depends on: ```brew install vim eza bat```\
6.) Copy the ```.zshrc``` config files in the cloned repo to your home (```~```) directory.

### Wallpaper
My wallpapers are sourced from [orangci's walls-catppuccin-mocha](https://github.com/orangci/walls-catppuccin-mocha/tree/master) GitHub repo. [Basic Apple Guy](https://basicappleguy.com) also has some spectacular wallpapers, but it doesn't match this catppuccin lavender theme.\
\
To complete the theme, you can also change the accent color to lavender to match the lavender catppuccin lavender theme: ```defaults write -g NSColorSimulateHardwareAccent -bool YES``` and then ```defaults write -g NSColorSimulatedHardwareEnclosureNumber -int 7``` (source: [George Garside Blog](https://georgegarside.com/blog/macos/imac-m1-accent-colours-any-mac/))
