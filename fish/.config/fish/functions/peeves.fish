function peeves --wraps='ssh peeves@192.168.0.17' --description 'alias peeves=ssh peeves@192.168.0.17'
  ssh peeves@192.168.0.17 $argv; 
end
