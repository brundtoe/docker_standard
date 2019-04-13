# anvendte images

Images er bygget på debian:stretch, hvilket betyder at de alle har samme grundlæggende struktur og Linux core

Alle images installerer nano og opretter brugeren dev

## images fra docker standard

apache:bbr
- php:7.2-apache
- debian:stretch
  - https://hub.docker.com/_/debian
- docroot 
  - /var/www/html
- configuration 
  - /etc/apache2/sites-enabled/000-default.conf

httpd:bbr
- httpd:2.4
  - https://hub.docker.com/_/httpd
- debian:stretch
- docroot
  - /var/www/html/
- confguration
  - /usr/local/apache2/conf/extra/httpd-vhosts.conf
  - /usr/local/etc/php-fpm.d/zz-docker.conf

nginx:bbr
- nginx:1.15
  - https://hub.docker.com/_/nginx
- debian:stretch
- docroot
  - /var/www/html
- configuration
  - /etc/nginx/conf.d/default.conf

php_fpm:bbr
- php:7.2-fpm
  - https://hub.docker.com/_/php
- debian:stretch
- docroot:
  - /var/www/html/
- configuration
  - /usr/local/etc/php-fpm.d/zz-docker.conf

node:bbr
- node:10
  - https://hub.docker.com/_/node
-debian:stretch
- mount point for spourcecode
  - /usr/src/app
- docker-compose.yml
  - command: ["npm","start"]

mongo:3.6-stretch
- debian.stretch
- config i .env file

## JavaScript projekter
- mongodemo
- nodedemo
- imgploadr
- anvender node:bbr og mongo:36-stretch


## testarea

- einsteinish
  - reverseproxy
    - nginx:bbr
  - nodevue:bbr
    - node:bbr
      - debian:stretch
  - apache:bbr
  - development mode http:8000
  - production mode http://localhost:8080


- shekhargulati
  - nodevue:bbr (Her findes dockerfile - kan den gøres generisk til vue frontend?)
    - node:bbr
  - apache:bbr
  - shekargulati:prod (Her findes Dockerfile)
    - node:bbr
      - debian:stretch
    - nginx:bbr 
      - debian:stretch
  - development mode http://localhost:8080
    - docker build -t nodevue:bbr .
  - production mode http://localhost
    - docker -f Dockerfile-prod -t shekhargulati:prod
    
- francoisromain
  - nodevue:bbr
  - apache:bbr
  - nginx:bbr
  - development mode http://localhost:8000





