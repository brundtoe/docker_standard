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
Det kan være nødvendigt at logge ind med **docker login**
```
docker pull openresty/openresty:1.13.6.2-stretch
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














