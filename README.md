# Welcome to my macOS rice!
## Screenshots
![image](https://github.com/user-attachments/assets/e733f9b3-644c-454d-9dc2-9b85a4da307f)

## Prerequisites
1.) macOS Ventura or later (except Yabai, which would be ≤ macOS Sonoma)\
2.) Have [Homebrew Package Manager](https://brew.sh/) installed
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

## Other apps
[Raycast](https://www.raycast.com/) (free) for a more powerful Spotlight search\
[Mac Mouse Fix](https://macmousefix.com/en/) ($2.99) to fix default choppy scroll behavior & invert scroll direction for mouse only (and leave trackpad as is)\
[MediaMate](https://wouter01.github.io/MediaMate/) ($6.99) to change default volume HUD to notch-based volume & brightness HUD\
[AltTab](https://alt-tab-macos.netlify.app/) (free) for Windows alt-tab (or cmd-tab) behavior for macOS\
[Bartender 5](https://www.torrentmac.net/bartender-5-3-6/) ($20, ***but there's a workaround by trying out the link***) to hide menu bar items to reduce clutter\
[Cmd+X](https://sindresorhus.com/command-x) ($4 or you can take the idea in the link and write your own script) to enable the feature that allows one to cut files\
[Soduto](https://soduto.com/) (free) for Android-Mac ecosystem integration\
[LocalSend](https://localsend.org/) (free) for Android-Mac "AirDrop"\
[Velja](https://sindresorhus.com/velja) ($8) for adding an option to choose between multiple browsers or to copy the link upon clicking any external link\
[Shottr](https://shottr.cc/) ($12) for enhanced screenshot experience\
[MonitorControl](https://github.com/MonitorControl/MonitorControl) (free) to control external monitor brightness with keyboard shortcuts (prerequistes: a USB-C adapter or Thunderbolt dock supporting DDC/CI feature and enabling the DDC/CI feature on your external monitor)\
[Dynamic Wallpaper](https://apps.apple.com/us/app/dynamic-wallpaper-engine/id1453504509?mt=12) ($4.99) for video wallpapers (similar to Wallpaper Engine on Windows)\
[AlDente](https://apphousekitchen.com/aldente-overview/) (free, $24.99 to unlock all features) to manually set a charge limit (Free alternative: just leave the macOS built-in "Optimized Battery Charging" setting on and let your Mac take care of things. Honestly, you don't really need to manually a charge limit because Apple handles it really, really well and it intelligently learns from your charging habits & knows when to bypass charging your battery and directly run off your power adapter when you have your MacBook docked to an external display, keyboard, and mouse assuming if the feature "Optimized Battery Charging" is left to "on".)\
[Parallels Desktop](https://www.torrentmac.net/parallels-desktop-business-edition-19-0-0-54570-2/) ($149.99/year, ***but there's a workaround by trying out the link***) to run Windows 11 on the MacBook. I use it to run Windows-on-ARM apps and Windows-specific features that don't work on macOS (ex. Microsoft Paint, reading & writing to Microsoft NTFS file system storage devices (external hard drives), reading & writing to Android phones via USB, etc.)
[Transmission](https://transmissionbt.com/) for torrenting

### Steps for the "but there's a workaround by trying out the link"
Install a browser-based adblock (ex. uBlock Origin web browser extension) and the app [Transmission](https://transmissionbt.com/), a torrenting client.\
Then, follow and do the steps in [this tutorial](https://www.reddit.com/r/MacOSBeta/comments/1e2xlcg/comment/ld6bwow/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1).\ 
Lastly, "try out the link" and read the included downloaded "readme.txt" (if applicable), then install it according to the readme or use common sense if a readme doesn't exist.

## Notes
Make sure to run the terminal command ```sudo yabai --load-sa``` after every reboot to ensure that the window-moving feature between workspaces functions correctly for the Yabai Tiling Window Manager.
