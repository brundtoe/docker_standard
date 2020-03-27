# Opdatering af php fra version 7.3 til 7.4

Opdateret 23. marts 2020


Nedenstående vejledning  i opdatering fra 7.3 til 7.4 kan genanvendes ved senere opdateringer

php 7.4 overgår til security releases 28. november 2021

Tjek om der er en nyere lts version af debian

## opdatering af images


### apache versionen
  - dockerfile 
    - base image 7.4-apache-buster
    - xdebug versionen som skal svare til php versionen for 7.4 er det xdebug-2.9.3
  - Der er ikke behov for ændringer i docker-compose og apache konfig filer
  - php 7.4 overgår til security releases 1. december 2020

### php_fpm versionen
  - dockerfile
    - base image 7.4-fpm-buster
    - xdebug versionen som skal svare til php versionen for 7.4 er det xdebug-2.9.3
  - socket-default.conf til httpd:bbr opdater socket til 7.4


### opdatering af konfigurationsfiler

Konfigurationsfiler i projekter som anvender php_fpm skal opdateres

Filerne findes med::

   grep -R 'php7.3-fpm.sock'

Opdatering foretages med::

```
   find . -type f -print0 | xargs -0 sed -i s/php7\.3-fpm\.sock/php7.4-fpm.sock/
```

.. caution:: Prøv først på en enkelt mappe docker_standard og sf4standard

