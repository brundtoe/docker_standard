OpenResty
=========

Kilder
------
- https://hub.docker.com/r/openresty/openresty
- http://openresty.org/en/
- https://github.com/openresty/echo-nginx-module
-
Hent docker image
-----------------
Tjek via docker hub fanebladet tags for at finde den rigtige version her søges eksempelvis efter **focal** og docker pul kommandoen kopieres og indsættes som vist nedenfor. 
Nu opdateres Dockerfile

juli 2020 skiftet fra buster til focal da buster fejlede

```
docker pull openresty/openresty:1.17.8.1-buster
```

Konfigurationsfiler
-------------------
* Nginx konfig: /usr/local/openresty/nginx/conf/nginx.conf
    * include /etc/nginx/conf.d/*.conf; 
* server block: /etc/nginx/conf.d/default.conf
* default root: /usr/local/openresty/nginx/html
* tilpasset root: /usr/local/openresty/nginx/html/public

Build dockerfile
----------------

```
docker build -t openresty:bbr .

```

Docker-compose
--------------
hvis do ker-compose.yml i denne mappen ikke virker så prøv i stedet testarea/openresty
















