alias ~='cd ~'
alias cd='z'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias dv='cd ~/dev'
alias df='cd ~/dotfiles'
alias smrt='cd ~/smrtzr/'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ip='curl ifconfig.io'
alias localip="ipconfig getifaddr en0"
alias empty="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias undocommit="git reset --soft HEAD^"
alias python=python3
alias pip=pip3
alias ls='exa'
alias ll="exa -l"
alias la="exa -la"
alias c="code ."
alias bsc="springcleaning.sh"
alias dfp='dotfilespush.sh'
alias appclean='app-cleaner.sh'
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gst='git status'
alias gac='git add .; git commit'
alias jeeves="ssh root@ssh.jeeves.pw"
alias analup="cd ~/smrtzr/analytics/local; op run -- docker-compose up;"
alias cat="bat"
alias dc="docker-compose"
alias dcu="op run -- docker-compose up"
alias dcb="op run -- docker-compose build"
alias desup="cd ~/smrtzr/design/local; op run -- docker-compose up;"
alias dps="docker ps"
alias tks="tmux kill-server"
alias efe="cd ~/smrtzr/editor-frontend/"
alias efeup="cd ~/smrtzr/editor-frontend/local; op run -- docker-compose up;"
alias emup="cd ~/smrtzr/emulators/docker; op run -- docker-compose up -d;"
alias eup="cd ~/smrtzr/editor/local; op run -- docker-compose up;"
alias fast="fast -u"
alias gccal='gcloud config configurations activate cal'
alias gco='git checkout'
alias gcsmrt='gcloud config configurations activate smrtzr'
alias gfp='git fetch && git pull'
alias i='npm i'
alias lg='lazygit'
alias pfe="cd ~/smrtzr/player-frontend/"
alias pfeup="cd ~/smrtzr/player-frontend/local; op run -- docker-compose up;"
alias pfes="cd ~/smrtzr/player-frontend/server; op run -- npm run start;"
alias pjs='cd ~/smrtzr/packages-js/'
alias players="cd ~/smrtzr/players/"
alias playw="cd ~/smrtzr/players/; npm run watch"
alias plays="cd ~/smrtzr/players/; npm run serve"
alias plugins="cd ~/smrtzr/plugins/; fnm use 13"
alias plugs="cd ~/smrtzr/plugins/; fnm use 13; op run -- npm run start"
alias plugw="cd ~/smrtzr/plugins/; fnm use 13; op run -- npm run watch"
alias pup="cd ~/smrtzr/player/local; op run -- docker-compose up;"
alias uiup="cd ~/smrtzr/ui-components; op run -- npm run watch;"
alias shell='echo $SHELL'
alias v='nvim'
alias vim='nvim'
alias vi='nvim'
alias zz='cd -'
alias cp="cp -i"
alias mv='mv -i'
alias sipfix='sudo nvram boot-args=-arm64e_preview_abi'
alias dev="cd ~/dev"
alias prime="stream theprimeagen"
alias tj="stream teej_dv"
alias t="tmux"
alias mc='mullvad connect'
alias md='mullvad disconnect'
alias nixc='nix-collect-garbage -d'
