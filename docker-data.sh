#!/usr/bin/env bash
#

set -e

if ! [ "$(id -u)" = 0 ]; then
  echo "Script must be run as user: root"
  exit 1  
fi    

docker network inspect humle_net || docker network create humle_net

docker volume inspect mysqldata || docker volume create mysqldata

docker volume inspect sqlitedata || docker volume create sqlitedata

docker volume inspect mongodata || docker volume create mongodata

docker volume inspect phpsocket || docker volume create phpsocket

cd /var/lib/docker/volumes/sqlitedata/_data
cp -r /home/jackie/dumps/sqlite/doctrine26/bookstore-data/* .
cd ..
HTTPDUSER=`ps aux | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1`
chgrp -R $HTTPDUSER _data
find _data -type d -exec chmod 775 {} +
find _data -type f -exec chmod 664 {} +
