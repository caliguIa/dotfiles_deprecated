# #    ___ _ ____   __________   ____ _ _ __ ___ 
# #   / _ \ '_ \ \ / /______\ \ / / _` | '__/ __|
# #  |  __/ | | \ V /        \ V / (_| | |  \__ \
# #   \___|_| |_|\_/          \_/ \__,_|_|  |___/

source $HOME/dotfiles/zsh/.config/zsh/env-vars.zsh
source $HOME/.config/zsh/env-vars.local.zsh

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

source $HOME/dotfiles/zsh/.config/zsh/plugins.zsh



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/caligula/build/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/caligula/build/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/caligula/build/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/caligula/build/google-cloud-sdk/completion.zsh.inc'; fi
