if status is-interactive
    # Commands to run in interactive sessions can go here
end
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/caligula/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/caligula/Downloads/google-cloud-sdk/path.fish.inc'; end
starship init fish | source
