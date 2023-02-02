## dirs
alias cd='z'
alias ~='cd ~'
alias zz='cd -'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias df='cd ~/dotfiles'
alias dev="cd ~/dev"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='exa -la'
alias empty="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias cat="bat"
alias cp="cp -i"
alias mv='mv -i'
alias c="code ."

## git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status'
alias gac='git add .; git commit'
alias gco='git checkout'
alias gfp='git fetch && git pull'
alias undocommit="git reset --soft HEAD^"
alias lg='lazygit'

## docker
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcb="docker-compose build"
alias dps="docker ps"

## dotfiles
alias ybcfg='vim ~/dotfiles/yabai/.config/yabai/yabairc'
alias yb='launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"'
alias nvimcfg='vim ~/dotfiles/nvim/.config/nvim/'
alias aliases='vim ~/dotfiles/zsh/.config/zsh/aliases.zsh'
alias envars='vim ~/dotfiles/zsh/.config/zsh/env-vars.zsh'

## scripts
alias bsc="springcleaning.sh"
alias dfp='dotfilespush.sh'
alias appclean='app-cleaner.sh'
alias ip='curl ifconfig.io'
alias localip="ipconfig getifaddr en0"
alias update='softwareupdate -ia'
alias updatel='softwareupdate -l'

## pde
alias t="tmux attach || tmux new"
alias tks="tmux kill-server"
alias i='npm i'
alias v='nvim'
alias vim='nvim'
alias vi='nvim'

## smrtzr 
alias gccal='gcloud config configurations activate cal'
alias gcsmrt='gcloud config configurations activate smrtzr'
alias smp='tmuxinator start players'
alias mono='tmuxinator start mono'
alias smrtzr='cd ~/smrtzr/smrtzr/'
alias players="cd ~/smrtzr/players/"

## misc
alias shell='echo $SHELL'
alias python=python3
alias pip=pip3
alias jeeves="ssh root@ssh.jeeves.pw"
alias fast="fast -u"
alias sipfix='sudo nvram boot-args=-arm64e_preview_abi'
alias prime="stream theprimeagen"
alias tj="stream teej_dv"
alias mc='mullvad connect'
alias md='mullvad disconnect'
