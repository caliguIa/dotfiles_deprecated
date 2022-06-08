function ip --wraps='curl ifconfig.io' --description 'alias ip=curl ifconfig.io'
  curl ifconfig.io $argv; 
end
