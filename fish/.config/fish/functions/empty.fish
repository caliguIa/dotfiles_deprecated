function empty --wraps=sudo\ rm\ -rfv\ /Volumes/\*/.Trashes\;\ sudo\ rm\ -rfv\ \~/.Trash\;\ sudo\ rm\ -rfv\ /private/var/log/asl/\*.asl\;\ sqlite3\ \~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV\*\ \'delete\ from\ LSQuarantineEvent\' --description alias\ empty=sudo\ rm\ -rfv\ /Volumes/\*/.Trashes\;\ sudo\ rm\ -rfv\ \~/.Trash\;\ sudo\ rm\ -rfv\ /private/var/log/asl/\*.asl\;\ sqlite3\ \~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV\*\ \'delete\ from\ LSQuarantineEvent\'
  sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent' $argv; 
end
