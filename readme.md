# Standard Docker images

Dete projekt indeholder definitionen af en række Docker images, der anvendes som standard i mine php applikationer, samt docker-compose og Apache og php-fpm konfigurationsfiler

## apache-php
Imaget, *apache:bbr* er baseret på *php:7.2-apache*.

```
docker build -t apache:bbr .
```
## httpd
Imaget, *httpd:bbr* er baseret på *httpd:2.4*

```
docker build -t httpd:bbr .
```
* docker-compose.yml anvender image *php_fpm:bbr*
* Der anvendes en unix socket */run/php/php7.2-fpm.sock*

## ningx
Imaget *nginx:bbr* er baseret på *ningx:1.5*

```
docker build -t ningx:bbr .
```
* docker-compose.yml anvender image *php_fpm:bbr*
* Der anvendes en unix socket */run/php/php7.2-fpm.sock* 

## php-fpm
Imaget *php_fpm:bbr* er baseret på php:7.2-fpm

```
docker build -t php_fpm:bbr .
```

Kan anvendes med unix socket eller tcp på port 9000

## php-httpd
* Anvender images *httpd:bbr* og *php_fpm:bbr*
* Der anvendes http tcp på port 9000

## web
Denne mappe indeholder en enkel php applikatipon, som anvendes til at afprøve ovenstående konfigurationer af Docker containere.

Applikationen initieres ved at starte apache-php med

```
docker-compose up -d
docker exec -it -u dev web bash
cd /var/www/html
composer install
```

Applikationen er tilgængelig i en browser http://localhost 