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


##                   _                         
##                  | |                        
##  _ __   __ _  ___| | ____ _  __ _  ___  ___ 
## | '_ \ / _` |/ __| |/ / _` |/ _` |/ _ \/ __|
## | |_) | (_| | (__|   < (_| | (_| |  __/\__ \
## | .__/ \__,_|\___|_|\_\__,_|\__, |\___||___/
## | |                          __/ |          
## |_|                         |___/
#

# fnm
export PATH="/home/caligula/.local/share/fnm:$PATH"
eval "`fnm env`"
