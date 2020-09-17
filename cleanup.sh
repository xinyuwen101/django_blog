sudo docker rm -f $(docker ps -a -q)
sudo docker rmi -f $(docker images -q)