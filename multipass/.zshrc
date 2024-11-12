# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export TERM=xterm-256color

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    # zsh-multipass
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display neofetch
neofetch

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
# pokemon-colorscripts --no-title -s -r


### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh


# bun completions
[ -s "/home/ericxu/.bun/_bun" ] && source "/home/ericxu/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Created by `pipx` on 2024-05-28 19:30:02
export PATH="$PATH:/home/ericxu/.local/bin"

export PATH="$PATH:/var/lib/snapd/snap/bin"


# For fzf installation
# Add fzf to PATH if not already there
if [[ ! "$PATH" == */usr/bin/fzf* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/bin/fzf"
fi
# Auto-completion
[[ $- == *i* ]] && source "/usr/share/zsh/vendor-completions/_fzf" 2> /dev/null
# Key bindings
source "/usr/share/doc/fzf/examples/key-bindings.zsh"


# For snap packages
# systemctl start snapd.service
# systemctl enable --now snapd.apparmor

# Aliases
alias update='yay && spicetify update && flatpak update && sudo snap refresh'
alias snap\?="echo 'try executing the following commands: \nsystemctl start snapd.service\nsystemctl enable --now snapd.apparmor\nsnap start multipass && multipass start primary\nsnap start <pkg name>'"
alias macOS='cd ~/Documents/VMs && quickemu --vm macos-sonoma.conf --width 1920 --height 1200'
alias vim\?="echo 'qu=double quote\nSelect all=ggVG\nDelete All=ggdG\nCut=<qu>+x\nCopy=<qu>+y\nPaste=<qu>+gP\nUndo=u\nRedo=Ctrl+R'"
alias copy\?="echo 'try:\nmultipass transfer local_file.txt primary:.'"
alias ls="eza --icons=always --color=always"
alias cat="batcat --paging=never --style=plain,header,grid"
