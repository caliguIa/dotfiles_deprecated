tmux kill-server
docker kill $(docker container ls -q)
pkill -f node
pkill -f java
