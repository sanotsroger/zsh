# =========================================================
# Reload Bash
# =========================================================

alias zreload="source $$ZDOTDIR/.zshrc"

# =========================================================
# Pacman for software managment
# =========================================================

alias rkeys='sudo pacman-key --refresh-keys'
alias upall='topgrade'
alias search='sudo pacman -Qs'
alias remove='sudo pacman -Rcns'
alias install='sudo pacman -S'
alias linstall='sudo pacman -U '
alias update='paru -Syyuu && flatpak update'
alias clrcache='sudo pacman -Scc'
alias orphans='sudo paru -Rns $(pacman -Qtdq)'
alias akring='sudo pacman -Sy archlinux-keyring --noconfirm'
alias unlock='sudo rm /var/lib/pacman/db.lck'
alias free='free -mt'
alias wget='wget -c'
alias info='sudo pacman -Si ' # Package Info
alias infox='sudo pacman -Sii ' # Package Info

# =========================================================
# Recent Installed Packages
# =========================================================

alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# =========================================================
# Paru
# =========================================================

alias pget='paru -S'
alias prem='paru -R'
alias psearch='paru -Ss'

# =========================================================
# Aliases Git
# =========================================================

alias gs='git status'
alias gp='git pull'
alias gph='git push'
alias ga='git add '
alias gaa='git add . '
alias gd='git diff | mate'
alias gau='git add --update'
alias gc='git commit -m'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gc1o='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias gfo='git fetch origin'

# =========================================================
# VS Code
# =========================================================

alias coe='$IDECODE . && exit'

# =========================================================
# Replace stuff with bat
# =========================================================

alias cat='bat '
alias rg='batgrep '

# =========================================================
# Replace ls with exa
# =========================================================

alias lz='exa -al --color=always --group-directories-first --icons'   # preferred listing
alias lza='exa -a --color=always --group-directories-first --icons'   # all files and dirs
alias lzl='exa -l --color=always --group-directories-first --icons'   # long format
alias lzt='exa -aT --color=always --group-directories-first --icons'  # tree listing
alias lzh='exa -lah --color=always --group-directories-first --icons' # tree listing

# =========================================================
# Tree view
# =========================================================

alias tree='exa --tree --icons'

# =========================================================
# Navigation
# =========================================================

alias home='cd ~'
alias etc='cd /etc/'
alias conf='cd ~/.config'
alias cpub='cd ~/Projects/public'
alias cpriv='cd ~/Projects/private'

# =========================================================
# shutdown / reboot
# =========================================================

alias sr='sudo reboot'
alias ssn='sudo shutdown now'

# =========================================================
# Clear cache home
# =========================================================

alias clrhome="rm -rf ~/.cache/*"

# =========================================================
# ex = EXtractor for all kinds of archives
# usage: ex <file>
# =========================================================

ex() {
  if [ -f $1 ]; then
    case $1 in
    *.tar.bz2) tar xjf $1 ;;
    *.tar.gz) tar xzf $1 ;;
    *.bz2) bunzip2 $1 ;;
    *.rar) unrar x $1 ;;
    *.gz) gunzip $1 ;;
    *.tar) tar xf $1 ;;
    *.tbz2) tar xjf $1 ;;
    *.tgz) tar xzf $1 ;;
    *.zip) unzip $1 ;;
    *.Z) uncompress $1 ;;
    *.7z) 7z x $1 ;;
    *.deb) ar x $1 ;;
    *.tar.xz) tar xf $1 ;;
    *.tar.zst) unzstd $1 ;;
    *) echo ''$1' cannot be extracted via ex()' ;;
    esac
  else
    echo ''$1' is not a valid file'
  fi
}

# =========================================================
# nano
# =========================================================

alias nzenv='$EDITOR $ZDOTDIR/.zshenv'
alias nz='$EDITOR $ZDOTDIR/.zshrc'
alias naliases='$EDITOR $ZDOTDIR/aliases.zsh'
alias nbindings='$EDITOR $ZDOTDIR/bindings.zsh'
alias nfzf='$EDITOR $ZDOTDIR/fzf.zsh'
alias nplugins='$EDITOR $ZDOTDIR/plugins.zsh'
alias nprompt='$EDITOR $ZDOTDIR/prompt.zsh'
alias nenvs='$EDITOR $ZDOTDIR/envs.zsh'
alias nsecrets='$EDITOR $ZDOTDIR/secrets.zsh'

# =========================================================
# Copy/Remove files/dirs
# =========================================================

alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scpd='sudo cp -R'

# =========================================================
# Exit terminal
# =========================================================

alias :qa='exit'

# =========================================================
# LazyDocker
# =========================================================

alias lzd='lazydocker'

# =========================================================
# Extra Aliases
# =========================================================

alias cls='clear'

# =========================================================
# Dockur
# =========================================================

alias dswin='docker start windows'
alias drwin='docker stop windows'
