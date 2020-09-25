#!/usr/bin/env bash
#
# Dette script udføres kun een gang i hver installation
#
# Det vil fejle anden gang det forsøges udført

set -e

docker network create humle_net

docker volume create mysqldata
docker volume create sqlitedata
docker volume create mongodata
docker volume create phpsocket

cd /var/lib/docker/volumes/sqlitedata/_data
cp -r /home/jackie/dumps/sqlite/doctrine26/bookstore-data/* .
cd ..
chgrp -R www-data _data
find _data -type d -exec chmod 775 {} +
find _data -type f -exec chmod 664 {} +
