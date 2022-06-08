function undocommit --wraps='git reset --soft HEAD^' --description 'alias undocommit=git reset --soft HEAD^'
  git reset --soft HEAD^ $argv; 
end
