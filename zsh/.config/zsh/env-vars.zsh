export PATH="/opt/local/bin:$PATH"
export PATH="/opt/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.fig/bin:$PATH"
export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Library/pnpm:$PATH"
export PATH="$HOME/.jabba/bin:$PATH"
export SHELL='/bin/zsh'
export GCLOUD_CONFIG_HOME="$HOME/.config/gcloud"
export PROJECT_ID=panda-development
export DEV_STORAGE_SERVICE="$HOME/.config/auth/panda-development-1af3ae8f0648.json"
export EDITOR=nvim
export TERMINAL=kitty
export FIREBASE_PROJECT=panda-dev-cal-local
export PNPM_HOME="$HOME/library/pnpm"
export SSL_LOCAL_PREFIX="$HOME/.ssl/ssl/"
export STARSHIP_CONFIG="$HOME/dotfiles/starship/.config/starship/starship.toml"
export VSCODE=code
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE=$HOME/.zsh_history setopt appendhistory # some useful options (man zshoptions) setopt autocd extendedglob nomatch menucomplete setopt interactive_comments
export JAVA_HOME=$HOME/.jabba/jdk/zulu@1.8.282/Contents/Home

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Bun
export BUN_INSTALL="/Users/caligula/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[ -s "/Users/caligula/.jabba/jabba.sh" ] && source "/Users/caligula/.jabba/jabba.sh"

