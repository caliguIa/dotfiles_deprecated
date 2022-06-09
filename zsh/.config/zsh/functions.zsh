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
function devlink() {
  INPUT_URL="$1"
  SPLIT_URL="${INPUT_URL:56}"
  echo "https://assets-staging.smartzer.com/$SPLIT_URL" | pbcopy
}

# create cdn url from panda-live assets url
function pl() {
  INPUT_URL="$1"
  SPLIT_URL="${INPUT_URL:49}"
  echo "https://assets.smartzer.com/$SPLIT_URL" | pbcopy
}

# Iterates over the repos, doing a fetch, checkout of BRANCH (or default) and
# does a pull/merge. Use like: BRANCH=michael/PR_feature_name refreshsmt
# It assumes that the branch name is consistent across repos.
# You should also have a clean working state i.e. commit or stash any changes
# before calling this function, or no effect will occur on such a repo.
refreshsmt() {
    ORIG_PWD=${PWD}
    cd ~/smartzer/
    printf "UI\n"
    cd ui-components
    git fetch --all --prune
    git checkout ${BRANCH:-master} || git checkout master
    git pull
    printf "\nPLAYER\n"
    cd ../player
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nPLAYER-FRONTEND\n"
    cd ../player-frontend
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nEDITOR\n"
    cd ../editor
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nEDITOR-FRONTEND\n"
    cd ../editor-frontend
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nPLUGINS\n"
    cd ../plugins
    git fetch --all --prune
    git checkout ${BRANCH:-build/dev} || git checkout build/dev
    git pull
    printf "\nPACKAGES-JS\n"
    cd ../packages-js
    git fetch --all --prune
    git checkout ${BRANCH:-dev} || git checkout dev
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

# vscode code terminal command
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/cal/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/cal/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/cal/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/cal/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

timeshell() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

bi() {
  brew install $1
  brew list > $HOME/dotfiles/packages/brewpkg
}

bu() {
  brew uninstall $1
  brew list > $HOME/dotfiles/packages/brewpkg
}

dka() {
  docker kill $(docker container ls -q)
}

take() {
 mkdir -p $1
 cd $1
}

