# if [ "$TMUX" = "" ];
#   then tmux; 
# fi

bindkey -s ^f "tmux-sessionizer\n"

function gac () {
  git add .; git commit
}

# Kill apps that match string
function kill-apps() {
  IFS=$'\n'
  red=$(tput setaf 1)
  normal=$(tput sgr0)
  if [ -z "$1" ] || [ "$1" = "--help" ]; then
    printf "%s\n" "Usage: kill-apps string"
    return 0
  fi
  printf "%s\n" "Finding apps that match “$1”…"
  sleep 1
  processes=($(pgrep -afil "$1"))
  if [ ${#processes[@]} -eq 0 ]; then
    printf "%s\n" "No apps found"
    return 0
  else
    printf "%s\n" "${processes[@]}"
    printf "$red%s$normal" "Kill found apps (y or n)? "
    read -r answer
    if [ "$answer" = "y" ]; then
      printf "%s\n" "Killing found apps…"
      sleep 1
      for process in "${processes[@]}"; do
        echo $process | awk '{print $1}' | xargs sudo kill 2>&1 | grep -v "No such process"
      done
      printf "%s\n" "Done"
      return 0
    fi
  fi
}

# create cdn url from panda-staging assets url
function devl() {
  INPUT_URL="$1"
  SPLIT_URL="${INPUT_URL:56}"
  echo "https://assets-staging.smartzer.com/$SPLIT_URL" | pbcopy
}

# create cdn url from panda-live assets url
function pl() {
  INPUT_URL="$1"
  SPLIT_URL="${INPUT_URL:51}"
  echo "https://assets.smartzer.com/$SPLIT_URL" | pbcopy
}

# Iterates over the repos, doing a fetch, checkout of BRANCH (or default) and
# does a pull/merge. Use like: BRANCH=michael/PR_feature_name refreshsmt
# It assumes that the branch name is consistent across repos.
# You should also have a clean working state i.e. commit or stash any changes
# before calling this function, or no effect will occur on such a repo.
sdev() {
    ORIG_PWD=${PWD}
    cd ~/smrtzr/
    printf "\nMONO\n"
    cd ./smrtzr
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nEDITOR\n"
    cd ../editor
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nPACKAGES-JAVA\n"
    cd ../packages-java
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nPLAYERS\n"
    cd ../players
    git fetch --all --prune
    git checkout ${BRANCH:-master} || git checkout master
    git pull
    cd ${ORIG_PWD}
}

scur() {
    ORIG_PWD=${PWD}
    cd ~/smrtzr/
    printf "\nMONO\n"
    cd ./smrtzr
    git fetch --all --prune
    git pull
    printf "\nEDITOR\n"
    cd ../editor
    git fetch --all --prune
    git pull
    printf "\nPACKAGES-JAVA\n"
    cd ../packages-java
    git fetch --all --prune
    git pull
    cd ${ORIG_PWD}
}

# vscode code terminal command
if [[ "$OSTYPE" == "darwin"* ]]; then
  code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
fi

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/cal/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cal/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
#if [ -f '/Users/cal/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cal/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

timeshell() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

bi() {
  brew install $1
  brew bundle dump --file=~/dotfiles/macos/Brewfile --force
}

bu() {
  brew uninstall $1
  brew bundle dump --file=~/dotfiles/macos/Brewfile --force
}

dka() {
  docker kill $(docker container ls -q)
}

take() {
 mkdir -p $1
 cd $1
}

streamvid() {
  ffmpeg -re -stream_loop -1 -i ~/smrtzr/resources/videos/10min-count-up.mp4 -c:v libx264 -c:a aac -f flv rtmp://stream.smartzer.com:5222/app/$1
}

stream() {
  ffmpeg -re -stream_loop -1 \
    -r 30 \
    -f lavfi \
    -i testsrc \
    -vf scale=1920:1080 \
    -c:v libx264 \
    -c:a aac \
    -f flv rtmp://stream.smartzer.com:5222/app/$1
}

yi() {
  yarn install
  yarn pluginRebuild
  yarn core
}

kills() {
  echo "Stopping smrtzr shit"
  echo "Killing all node processes"
  pkill -f "node"
  echo "Killing all java processes"
  pkill -f "java"
  echo "Killing all webpack processes"
  pkill -f "webpack"
  echo "Killing ports"
  cd ~/smrtzr/smrtzr
  yarn kill
  cd ~
}

setopt rm_star_silent


# fnm
eval "`fnm env`"
eval "$(atuin init zsh)"
[ -s "/home/caligula/.jabba/jabba.sh" ] && source "/home/caligula/.jabba/jabba.sh"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/home/caligula/google-cloud-sdk/path.zsh.inc' ]; then . '/home/caligula/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/home/caligula/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/caligula/google-cloud-sdk/completion.zsh.inc'; fi
bindkey -e
