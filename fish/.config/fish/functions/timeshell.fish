function timeshell 
  set shell $SHELL
  for i in (seq 1 10); /usr/bin/time $shell -i -c exit; end
end