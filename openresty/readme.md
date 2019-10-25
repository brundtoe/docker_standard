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
Tjek via dcker hub og github repository tags for at finde den rigtige version

```
docker pull openresty/openresty:1.15.8.2-4-stretch
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














