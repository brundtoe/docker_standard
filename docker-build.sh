#!/usr/bin/env bash

set -e

docker pull httpd:2.4
docker pull mongo:4.4-bionic
docker pull mongo-express:0.54
docker pull mysql:8
docker pull nginx:1.19
docker pull node:14-buster
docker pull openresty/openresty:1.17.8.2-focal
docker pull php:7.4-fpm-buster
docker pull php:7.4-apache-buster
docker pull phpmyadmin/phpmyadmin:5.0

cd /home/projects/sourcecode/docker/docker_standard

docker build -f apache/Dockerfile -t apache:bbr apache
docker build -f httpd/Dockerfile -t httpd:bbr httpd
docker build -f mongo-express/Dockerfile -t mongo-express:bbr mongo-express
docker build -f mongo/Dockerfile -t mongo:bbr mongo 
docker build -f mysql/Dockerfile -t mysql:bbr mysql
docker build -f nginx/Dockerfile -t nginx:bbr nginx
docker build -f node/Dockerfile -t node:bbr node
docker build -f nodevue/Dockerfile -t nodevue:bbr nodevue 
docker build -f openresty/Dockerfile -t openresty:bbr openresty
docker build -f php_fpm/Dockerfile -t php_fpm:bbr php_fpm
docker build -f phpmyadmin/Dockerfile -t phpmyadmin:bbr phpmyadmin
