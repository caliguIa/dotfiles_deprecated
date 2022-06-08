function jeeves --wraps='ssh root@ssh.jeeves.pw' --description 'alias jeeves=ssh root@ssh.jeeves.pw'
  ssh root@ssh.jeeves.pw $argv; 
end
