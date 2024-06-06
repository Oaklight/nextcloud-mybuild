docker builder prune -f

docker build -t oaklight/nextcloud:stable .

docker rmi $(docker images -f "dangling=true" -q)
