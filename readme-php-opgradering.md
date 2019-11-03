# Opdatering af php fra version 7.2 til 7.3

Opdateret 3. november 2019


Nedenstående vejledning  i opdatering fra 7.2 til 7.3 kan genanvendes ved senere opdateringer

php 7.3 overgår til security releases 1. december 2020

Tjek om der er en nyere lts version af debian

## opdatering af images


### apache versionen
  - dockerfile 
    - base image 7.3-apache-buster
    - xdebug versionen som skal svare til php versionen for 7.3 er det xdebug-2.7.2
  - Der er ikke behov for ændringer i docker-compose og apache konfig filer
  - php 7.3 overgår til security releases 1. december 2020

### php_fpm versionen
  - dockerfile
    - base image 7.3-fpm-buster
    - xdebug versionen som skal svare til php versionen for 7.3 er det xdebug-2.7.2
  - socket-default.conf til httpd:bbr opdater socket til 7.3


### opdatering af konfigurationsfiler

Konfigurationsfiler i projekter som anvender php_fpm skal opdateres

Find konfigurationsfiler de anvender php7.2-fpm.sock

```
  cd /home/projects/sourcecode
  grep -R php7.2-fpm.sock > ~/Downloads/php7.2-fpm.sock
```

opdater fra php7.2-fpm.sock til php7.3-fpm.sock
