function refreshsmt
  set ORIG_PWD $PWD
  cd ~/smartzer/
  printf "UI\n"
  cd ui-components
  git fetch --all --prune
  git checkout master
  git pull
  printf "\nPLAYER\n"
  cd ../player
  git fetch --all --prune
  git checkout build/dev
  git pull
  printf "\nPLAYER-FRONTEND\n"
  cd ../player-frontend
  git fetch --all --prune
  git checkout build/dev
  git pull
  printf "\nEDITOR\n"
  cd ../editor
  git fetch --all --prune
  git checkout build/dev
  git pull
  printf "\nEDITOR-FRONTEND\n"
  cd ../editor-frontend
  git fetch --all --prune
  git checkout build/dev
  git pull
  printf "\nPLUGINS\n"
  cd ../plugins
  git fetch --all --prune
  git checkout build/dev
  git pull
  printf "\nPACKAGES-JS\n"
  cd ../packages-js
  git fetch --all --prune
  git checkout dev
  git pull
  printf "\nPACKAGES-JAVA\n"
  cd ../packages-java
  git fetch --all --prune
  git checkout build/dev
  git pull
  printf "\nPLAYERS\n"
  cd ../players
  git fetch --all --prune
  git checkout master
  git pull
  cd $ORIG_PWD
end
