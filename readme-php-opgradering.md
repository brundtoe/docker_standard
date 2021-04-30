# Opdatering af php fra version 7.4 til 8.0
# Opdatering af php fra version 7.4 til 8.0

Opdateret 23. marts 2020


Nedenstående vejledning  i opdatering fra 7.4 til 8.0 kan genanvendes ved senere opdateringer

## Oprydning i images m.v.

Se PyCharm vejledning DockerOprydning

## opdater dockerfiles

find nyere images på httpsd://hub.docker.com

opdater docker-build.sh

alle dockerfiles opdateres med de nye versionsnumre

## opdatering af images

build images med **docker-build.sh**

### apache versionen
  - dockerfile 
    - base image 8.0-apache-buster
    - xdebug versionen som skal svare til php versionen for 8.0 er det xdebug-3.x.x
  - Der er ikke behov for ændringer i docker-compose og apache konfig filer

### php_fpm versionen
  - dockerfile
    - base image 8.0-fpm-buster
    - xdebug versionen som skal svare til php versionen for 7.4 er det xdebug-3.x.x
  - socket-default.conf til httpd:bbr opdater socket til 7.4
  

### opdatering af konfigurationsfiler

Konfigurationsfiler i projekter som anvender php_fpm skal opdateres

Filerne findes med::

   grep -R 'php8.0-fpm.sock'

Opdatering foretages med::

```
   cd /home/projects/sourcecode
   find . -type f -print0 | xargs -0 sed -i s/php7\.4-fpm\.sock/php8\.0-fpm.sock/
```

.. caution:: Prøv først på en enkelt mappe docker_standard og sf4standard

