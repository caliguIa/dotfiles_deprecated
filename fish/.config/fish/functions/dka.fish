function dka --wraps='docker kill $(docker container ls -q)' --description 'alias dka=docker kill $(docker container ls -q)'
  docker kill $(docker container ls -q) $argv; 
end
