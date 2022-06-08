# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"
# #    ___ _ ____   __________   ____ _ _ __ ___ 
# #   / _ \ '_ \ \ / /______\ \ / / _` | '__/ __|
# #  |  __/ | | \ V /        \ V / (_| | |  \__ \
# #   \___|_| |_|\_/          \_/ \__,_|_|  |___/

source $HOME/dotfiles/zsh/.config/zsh/env-vars.zsh
# source $HOME/dotfiles/dotfiles/env-vars.private.zsh

# #         _ _                     
# #        | (_)                    
# #    __ _| |_  __ _ ___  ___  ___ 
# #   / _` | | |/ _` / __|/ _ \/ __|
# #  | (_| | | | (_| \__ \  __/\__ \
# #   \__,_|_|_|\__,_|___/\___||___/

source $HOME/dotfiles/zsh/.config/zsh/aliases.zsh

# #    __                  _   _                 
# #   / _|                | | (_)                
# #  | |_ _   _ _ __   ___| |_ _  ___  _ __  ___ 
# #  |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
# #  | | | |_| | | | | (__| |_| | (_) | | | \__ \
# #  |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/                                      

source $HOME/dotfiles/zsh/.config/zsh/functions.zsh

# #         _             _           
# #        | |           (_)          
# #   _ __ | |_   _  __ _ _ _ __  ___ 
# #  | '_ \| | | | |/ _` | | '_ \/ __|
# #  | |_) | | |_| | (_| | | | | \__ \
# #  | .__/|_|\__,_|\__, |_|_| |_|___/
# #  | |             __/ |            
# #  |_|            |___/             

# source $HOME/dotfiles/zsh/.config/zsh/functions.zsh
source $HOME/dotfiles/zsh/.config/zsh/config.zsh
# #       _                 _     _       
# #      | |               | |   (_)      
# #   ___| |_ __ _ _ __ ___| |__  _ _ __  
# #  / __| __/ _` | '__/ __| '_ \| | '_ \ 
# #  \__ \ || (_| | |  \__ \ | | | | |_) |
# #  |___/\__\__,_|_|  |___/_| |_|_| .__/ 
# #                                | |    
# #                                |_|    

eval "$(starship init zsh)"
eval "$(fnm env --use-on-cd)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
