export PATH="/opt/local/bin:$PATH"
export PATH="/opt/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.fig/bin:$PATH"
export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/pnpm:$PATH"
export PATH="$HOME/.jabba/bin:$PATH"
export PATH="$HOME/google-cloud-sdk:$PATH"
export SHELL='/bin/zsh'
export GCLOUD_CONFIG_HOME="$HOME/.config/gcloud"
export PROJECT_ID=panda-development
export DEV_STORAGE_SERVICE="$HOME/.config/auth/panda-development-1af3ae8f0648.json"
export EDITOR=nvim
export TERMINAL=alacritty
export FIREBASE_PROJECT=panda-dev-cal-local
export FIREBASE_AUTH_CREDENTIALS="$HOME/.config/auth/panda-dev-cal-local-c0d2a21988b5.json"
export PNPM_HOME="$HOME/library/pnpm"
export SSL_LOCAL_PREFIX="$HOME/.ssl/ssl/"
export STARSHIP_CONFIG="$HOME/dotfiles/starship/.config/starship/starship.toml"
export VSCODE=code
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE=$HOME/.config/zsh/.zsh_history setopt appendhistory # some useful options (man zshoptions) setopt autocd extendedglob nomatch menucomplete setopt interactive_comments
export BUILD_VERSION=0
export MOZ_ENABLE_WAYLAND=1 thunderbird
export MOZ_ENABLE_WAYLAND=1 firefox
# export WAYLAND_DISPLAY=wayland-1
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway

if [[ "$OSTYPE" == "darwin"* ]]; then
  export JAVA_HOME=$HOME/.jabba/jdk/zulu@1.8.282/Contents/Home
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export JAVA_HOME=$HOME/.jabba/jdk/zulu@1.8.282/
fi

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"
eval "$(atuin init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Bun
export BUN_INSTALL="/Users/caligula/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[ -s "/Users/caligula/.jabba/jabba.sh" ] && source "/Users/caligula/.jabba/jabba.sh"

