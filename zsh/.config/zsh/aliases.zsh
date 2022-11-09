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

## scripts
alias bsc="springcleaning.sh"
alias dfp='dotfilespush.sh'
alias appclean='app-cleaner.sh'
alias ip='curl ifconfig.io'
alias localip="ipconfig getifaddr en0"
alias yb='launchctl kickstart -k "gui/${UID}/org.macports.yabai"'
alias ybcfg='vim ~/dotfiles/yabai/.config/yabai/yabairc'

## pde
alias t="tmux"
alias tks="tmux kill-server"
alias i='npm i'
alias v='nvim'
alias vim='nvim'
alias vi='nvim'

## smrtzr 
alias gccal='gcloud config configurations activate cal'
alias gcsmrt='gcloud config configurations activate smrtzr'
alias sms='tmuxinator start smrtzr'
alias smp='tmuxinator start players'
alias mono='tmuxinator start mono'
alias smrt='cd ~/smrtzr_old/'
alias analup="cd ~/smrtzr_old/analytics/local; docker-compose up;"
alias desup="cd ~/smrtzr_old/design; npm run dev" 
alias efe="cd ~/smrtzr_old/editor-frontend/"
alias efeup="cd ~/smrtzr_old/editor-frontend/local; docker-compose up;"
alias emup="cd ~/smrtzr_old/emulators/docker; docker-compose up -d;"
alias eup="cd ~/smrtzr_old/editor/local; docker-compose up;"
alias pfe="cd ~/smrtzr_old/player-frontend/"
alias pfeup="cd ~/smrtzr_old/player-frontend/local; docker-compose up;"
alias pfes="cd ~/smrtzr_old/player-frontend/server; npm run start;"
alias pjs='cd ~/smrtzr_old/packages-js/'
alias players="cd ~/smrtzr_old/players/"
alias playw="cd ~/smrtzr_old/players/; npm run watch"
alias plays="cd ~/smrtzr_old/players/; npm run serve"
alias plugins="cd ~/smrtzr_old/plugins/; fnm use 13"
alias plugs="cd ~/smrtzr_old/plugins/; fnm use 13; npm run start"
alias plugw="cd ~/smrtzr_old/plugins/; fnm use 13; npm run watch"
alias pup="cd ~/smrtzr_old/player/local; docker-compose up;"
alias uiup="cd ~/smrtzr_old/ui-components; npm run watch;"
alias shell='echo $SHELL'

## misc
alias python=python3
alias pip=pip3
alias jeeves="ssh root@ssh.jeeves.pw"
alias fast="fast -u"
alias sipfix='sudo nvram boot-args=-arm64e_preview_abi'
alias prime="stream theprimeagen"
alias tj="stream teej_dv"
alias mc='mullvad connect'
alias md='mullvad disconnect'
